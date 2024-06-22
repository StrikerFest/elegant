-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2023 lúc 10:36 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `guest_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `province` smallint(6) NOT NULL,
  `district` smallint(6) NOT NULL,
  `wards` smallint(6) NOT NULL,
  `detailed_address` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `customer_id`, `guest_id`, `active`, `province`, `district`, `wards`, `detailed_address`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, 2, 73, 'Ngõ 9a', '2023-07-26 06:51:03', '2023-07-26 06:51:03'),
(2, 1, NULL, 1, 1, 9, 355, 'a1', '2023-07-26 08:16:02', '2023-07-26 08:16:02'),
(3, NULL, 2, 1, 34, 338, 12514, 'Đối diện cửa hàng thuốc Long Châu', '2023-07-26 08:25:57', '2023-07-26 08:25:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_account`
--

CREATE TABLE `admin_account` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_account`
--

INSERT INTO `admin_account` (`id`, `name`, `image`, `email`, `phone`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'áo 3.3.png', 'admin@gmail.com', '00000', '$2y$10$ax5fn9Xgw.rP9C2KMP6XLuJhir11rl2rzbA/xWUfhC99OkpNOG/vO', NULL, NULL, '2023-07-26 08:27:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `content`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'shop/all', NULL, NULL),
(2, NULL, NULL, 'shop/all', NULL, NULL),
(3, NULL, NULL, 'shop/all', NULL, NULL),
(4, NULL, NULL, 'shop/all', NULL, NULL),
(5, NULL, NULL, 'shop/all', NULL, NULL),
(6, NULL, NULL, 'shop/all', NULL, NULL),
(7, NULL, NULL, 'shop/all', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_memory`
--

CREATE TABLE `cart_memory` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` smallint(6) NOT NULL,
  `check_buy` tinyint(4) NOT NULL COMMENT '0=not buy, 1=buy',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `block` smallint(6) NOT NULL DEFAULT 1 COMMENT '0 = ẩn, 1 = hiện',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_name`, `block`, `created_at`, `updated_at`) VALUES
(1, 'dress', 1, '2023-07-26 05:46:57', '2023-07-26 05:46:57'),
(2, 'shirt', 1, '2023-07-26 05:47:04', '2023-07-26 05:47:04'),
(3, 'skirt', 1, '2023-07-26 05:47:08', '2023-07-26 05:47:08'),
(4, 'jeans', 1, '2023-07-26 05:47:16', '2023-07-26 05:47:16'),
(5, 'trousers', 1, '2023-07-26 05:47:20', '2023-07-26 05:47:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 = ko hiển thị, 1 = hiển thị',
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Ngọc Nga', 'nguyenmerchi.study@gmail.com', '0984737283', '$2y$10$0ef6YkgD2eACjo8nmBgS3ueKudEnaTMYAvmkOO0vde0nDNeCJLgUa', '2023-07-26 08:16:02', '2023-07-26 08:16:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guest`
--

CREATE TABLE `guest` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `guest`
--

INSERT INTO `guest` (`id`, `session_id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'vnTrrZjHe9TyTBAxWfQIZU1zNP8zWCpdbI6ZvpuA', 'Thị Lan', 'thilan@gmail.com', '098984575', '2023-07-26 06:51:03', '2023-07-26 06:51:03'),
(2, 'rcdWp6uy0nMO94gmLDfSyRL5HLEorID3REueGEje', 'Hải', 'hai@gmail.com', '097584736', '2023-07-26 08:25:57', '2023-07-26 08:25:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `prd_id`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'jean1,1.jpg', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(2, 1, 'jean1.2.jpg', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(3, 1, 'jean1.3.jpg', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(4, 1, 'jean1.4.jpg', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(5, 1, 'jean1.5.jpg', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(6, 2, 'jean2.1.jpg', '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(7, 2, 'jean2.2.jpg', '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(8, 2, 'jean2.3.jpg', '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(9, 2, 'jean2.4.jpg', '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(10, 3, 'shirt1.1.jpg', '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(11, 3, 'shirt1.2.jpg', '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(12, 3, 'shirt1.3.jpg', '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(13, 3, 'shirt1.4.jpg', '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(14, 4, 'shirt8.1.jpg', '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(15, 4, 'shirt8.2.jpg', '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(16, 4, 'shirt8.3.jpg', '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(17, 4, 'shirt8.4.jpg', '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(18, 5, 'shirt7.1.jpg', '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(19, 5, 'shirt7.2.jpg', '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(20, 5, 'shirt7.3.jpg', '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(21, 6, 'skirt5.1.jpg', '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(22, 6, 'skirt5.2.jpg', '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(23, 6, 'skirt5.3.jpg', '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(24, 7, 'skirt2.1.jpg', '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(25, 7, 'skirt2.2.jpg', '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(26, 7, 'skirt2.3.jpg', '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(27, 7, 'skirt2.4.jpg', '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(28, 8, 'skirt3.1.jpg', '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(29, 8, 'skirt3.2.jpg', '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(30, 8, 'skirt3.3.jpg', '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(31, 8, 'skirt3.4.jpg', '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(32, 9, 'trousers2.1.jpg', '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(33, 9, 'trousers2.2.jpg', '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(34, 9, 'trousers2.3.jpg', '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(35, 9, 'trousers2.4.jpg', '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(36, 10, 'trousers1.1.jpg', '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(37, 10, 'trousers1.2.jpg', '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(38, 10, 'trousers1.3.jpg', '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(39, 10, 'trousers1.4.jpg', '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(40, 11, 'trousers3.1.jpg', '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(41, 11, 'trousers3.2.jpg', '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(42, 11, 'trousers3.3.jpg', '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(43, 11, 'trousers3.4.jpg', '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(44, 12, 'dress1.1.jpg', '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(45, 12, 'dress1.2.jpeg', '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(46, 12, 'dress1.3.jpg', '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(47, 13, 'skirt1.1.jpg', '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(48, 13, 'skirt1.2.jpg', '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(49, 13, 'skirt1.3.jpg', '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(50, 13, 'skirt1.4.jpg', '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(51, 14, 'dress2.1.jpg', '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(52, 14, 'dress2.2.jpg', '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(53, 14, 'dress2.3.jpg', '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(54, 15, 'skirt6.1.jpg', '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(55, 15, 'skirt6.2.jpg', '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(56, 15, 'skirt6.3.jpg', '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(57, 15, 'skirt6.4.jpg', '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(58, 16, 'skirt4.1.jpg', '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(59, 16, 'skirt4.2.jpg', '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(60, 16, 'skirt4.3.jpg', '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(61, 16, 'skirt4.4.jpg', '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(62, 17, 'shirt4.1.jpg', '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(63, 17, 'shirt4.2.jpg', '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(64, 17, 'shirt4.3.jpg', '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(65, 18, 'shirt5.1.jpg', '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(66, 18, 'shirt5.2.jpg', '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(67, 18, 'shirt5.3.jpg', '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(68, 18, 'shirt5.4.jpg', '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(69, 19, 'dress8.1.jpg', '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(70, 19, 'dress8.2.jpg', '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(71, 19, 'dress8.3.jpg', '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(72, 19, 'dress8.4.jpg', '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(73, 20, 'dress5.1.jpg', '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(74, 20, 'dress5.2.jpg', '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(75, 20, 'dress5.3.jpg', '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(76, 20, 'dress5.4.jpg', '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(77, 21, 'dress6.1.jpg', '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(78, 21, 'dress6.2.jpg', '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(79, 21, 'dress6.3.jpg', '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(80, 21, 'dress6.4.jpg', '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(81, 22, 'dress7.1.jpg', '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(82, 22, 'dress7.2.jpg', '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(83, 22, 'dress7.3.jpg', '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(84, 22, 'dress7.4.jpg', '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(85, 23, 'skirt7.1.jpg', '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(86, 24, 'trousers4.1.jpg', '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(87, 24, 'trousers4.2.jpg', '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(88, 24, 'trousers4.3.jpg', '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(89, 24, 'trousers4.4.jpg', '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(90, 25, 'trousers5.1.jpg', '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(91, 25, 'trousers5.2.jpg', '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(92, 25, 'trousers5.3.jpg', '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(93, 25, 'trousers5.4.jpg', '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(94, 26, 'shirt6,1.jpg', '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(95, 26, 'shirt6.2.jpg', '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(96, 26, 'shirt6.3.jpg', '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(97, 26, 'shirt6.4.jpg', '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(98, 27, 'shirt3.1.jpg', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(99, 27, 'shirt3.2.jpg', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(100, 27, 'shirt3.3.jpg', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(101, 27, 'shirt3.4.jpg', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(102, 27, 'shirt3.5.jpg', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(103, 28, 'shirt2.1.jpg', '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(104, 28, 'shirt2.2.jpg', '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(105, 28, 'shirt2.3.jpg', '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(106, 28, 'shirt2.4.jpg', '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(107, 29, 'dress3.2.jpg', '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(108, 29, 'dress3.3.jpg', '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(109, 29, 'dress3.4.jpg', '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(110, 30, 'dress4.1.jpg', '2023-07-26 06:48:58', '2023-07-26 06:48:58'),
(111, 30, 'dress4.2.jpg', '2023-07-26 06:48:58', '2023-07-26 06:48:58'),
(112, 30, 'dress4.3.jpg', '2023-07-26 06:48:58', '2023-07-26 06:48:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `guest_id` int(10) UNSIGNED DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_code` varchar(255) NOT NULL,
  `pay` double(8,2) NOT NULL COMMENT 'tiền khách phải trả',
  `true_pay` double(8,2) NOT NULL COMMENT 'giá trị thực của đơn hàng',
  `see` varchar(50) DEFAULT NULL COMMENT 'cột này chắc là đang xem',
  `payment` varchar(50) NOT NULL,
  `delivery` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`id`, `customer_id`, `guest_id`, `address_id`, `invoice_code`, `pay`, `true_pay`, `see`, `payment`, `delivery`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, '#ORDER1', 175.00, 160.00, '1', 'cash', 'Default delivery $5', '2023-07-26 06:51:04', '2023-07-26 08:08:52'),
(2, NULL, 1, 1, '#ORDER2', 154.00, 100.00, '0', 'cash', 'Default delivery $5', '2023-07-26 08:09:25', '2023-07-26 08:09:25'),
(3, NULL, 1, 1, '#ORDER3', 303.00, 200.00, '0', 'cash', 'Default delivery $5', '2023-07-26 08:13:43', '2023-07-26 08:13:43'),
(4, 1, NULL, 2, '#ORDER4', 434.00, 400.00, '1', 'cash', 'Default delivery $5', '2023-07-26 08:17:40', '2023-07-26 08:18:29'),
(5, 1, NULL, 2, '#ORDER5', 74.00, 55.00, '0', 'cash', 'Default delivery $5', '2023-07-26 08:22:52', '2023-07-26 08:22:52'),
(6, NULL, 2, 3, '#ORDER6', 85.00, 60.00, '0', 'cash', 'Default delivery $5', '2023-07-26 08:26:04', '2023-07-26 08:26:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `property_id`, `invoice_id`, `size`, `color`, `amount`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'S', '#000000', 2, '2023-07-26 06:51:04', '2023-07-26 06:51:04'),
(2, 72, 2, 'M', '#d12953', 1, '2023-07-26 08:09:25', '2023-07-26 08:09:25'),
(3, 72, 3, 'M', '#d12953', 2, '2023-07-26 08:13:43', '2023-07-26 08:13:43'),
(4, 34, 4, 'S', '#ecedde', 2, '2023-07-26 08:17:40', '2023-07-26 08:17:40'),
(5, 62, 4, 'M', '#000000', 1, '2023-07-26 08:17:40', '2023-07-26 08:17:40'),
(6, 46, 5, 'XXS', '#e8c987', 1, '2023-07-26 08:22:52', '2023-07-26 08:22:52'),
(7, 56, 6, 'L', '#e868d1', 1, '2023-07-26 08:26:04', '2023-07-26 08:26:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2020_11_08_065659_create_category_table', 1),
(3, '2020_12_05_000000_create_admin_account_table', 1),
(4, '2022_10_29_105030_create_guest_table', 1),
(5, '2022_10_29_135839_create_customer_table', 1),
(6, '2022_10_30_123626_create_product_table', 1),
(7, '2022_10_30_132519_create_properties_table', 1),
(8, '2022_10_30_132535_create_total_property_table', 1),
(9, '2022_10_30_132540_create_address_table', 1),
(10, '2022_10_30_135604_create_invoice_table', 1),
(11, '2022_10_30_135647_create_invoice_items_table', 1),
(12, '2022_10_30_135820_create_status_table', 1),
(13, '2022_10_31_135158_create_comments_table', 1),
(14, '2022_11_25_022120_create_images_table', 1),
(15, '2022_12_01_131439_create_supplier_table', 1),
(16, '2023_01_10_015509_create_sale_table', 1),
(17, '2023_05_24_144109_create_cart_memory_table', 1),
(18, '2023_06_08_101127_create_purchase_table', 1),
(19, '2023_06_08_101942_create_purchase_items_table', 1),
(20, '2023_07_13_003950_create_banner_table', 1),
(21, '2023_07_21_151835_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 = không bán, 1 = bán, 2 = hàng chờ',
  `demo_image` varchar(200) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `status`, `demo_image`, `product_code`, `name`, `description`, `price`, `tag`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'jean1.2.jpg', '#PRD1', 'QUẦN JEANS LƯNG CAO', '<p>Với chất liệu denim cao cấp, sản phẩm có độ bền cao, đảm bảo bạn có thể mặc nó dài mà không sợ mài mòn hay rách.</p><p>Kiểu dáng đứng tạo ra sự cân đối và thanh lịch cho thân hình của người mặc. Độ dài ngang mắt cá chân giúp tôn lên đôi chân, thiết kế Lưng cao của sản phẩm giúp tạo hiệu ứng thon gọn cho vùng bụng và che khuyết điểm nếu có.</p><p>Thiết kế có thể dễ dàng phân phối với nhiều trang phục khác nhau. Bạn có thể kết hợp với áo thun tạo nên một phong cách thoải mái và năng động. Hoặc có thể kết hợp cùng áo sơ mi và giày cao Gót để có vẻ ngoài lịch sự và sang trọng. Bạn cũng có thể thêm phụ kiện như mũ, túi xách hay dây buộc để tạo điểm nhấn cho trang phục.</p><p>Với chiếc quần jean lưng cao này, bạn sẽ cảm nhận được sự tự tin và thoải mái trong mọi hoàn cảnh. Sản phẩm này không chỉ mang đến vẻ thời trang mà còn giúp ích bạn cảm thấy tự tin với vóc dáng của mình.<br></p>', 60.00, 'summer jeans', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(2, 4, 1, 'jean2.1.jpg', '#PRD2', 'QUẦN JEANS ỐNG ĐỨNG DÁNG SLIM FIT', '<p>Quần jeans cạp cao, Gấu cắt không may viền tạo kiểu tua rua. Có 5 túi. Kiểu dáng trẻ trung, năng động.</p><p>Chất liệu với hơn 95% cotton mềm mại, thoáng mát &amp; an toàn cho làn da nhạy cảm nhất, kiểu dáng ôm gọn dáng người, tạo độ thon và đẹp hơn cho người mặc. Những chiếc quần Jean có thể nói bất cứ ai cũng có thể mặc được dòng sản phẩm này, dù là đi chơi, đi học, hay đi làm.<br></p>', 85.00, 'summer jeans', '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(3, 2, 1, 'shirt1.2.jpg', '#PRD3', 'ÁO THUN TRỄ VAI DÁNG ÔM', '<p>Áo trễ vai chất liệu vải thun ôm sát giúp tôn lên vẻ nữ tính, quyến rũ của nàng. Điểm nhấn nút vặn chữ U.</p><p>Những cô nàng sở hữu một thân hình “đồng hồ cát” thì đây sẽ là item cực kì phù hợp với bạn.<br></p>', 55.00, 'summer shirt', '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(4, 2, 1, 'shirt8.1.jpg', '#PRD4', 'ÁO THUN IN HỌA TIẾT', '<p>Áo thun in họa tiết hoa với thiết kế áo basic, đơn giản phù hợp với các cô nàng sành điệu. Thiết kế áo tay lỡ phổ biến kết hợp cùng gam màu đen tạo cảm giác huyền bí hơn đồng thời dễ dàng mix &amp; match theo nhiều phong cách khác nhau.</p><p>Kiểu áo thun đơn giản nhưng không hề đơn điệu giúp nàng cân mọi phong cách thời trang từ trẻ trung đến sành điệu, phá cách nhất.<br></p>', 48.00, 'summer shirt', '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(5, 2, 1, 'shirt7.1.jpg', '#PRD5', 'ÁO THUN HOA', '<p>Áo thun suông, dáng đứng. Tay ngắn, cổ áo bo. Phía trước áo in hình.</p><p>Áo thun in hình hoa mang phong cách trẻ trung, nữ tính. Chiếc áo này phù hợp để nàng diện hằng ngày cho mọi dịp khác nhau. Đơn giản mix cùng quần hay chân váy bất kỳ là nàng đã có thể hoàn thiện set đồ rồi đó.<br></p>', 90.00, 'autumn shirt', '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(6, 3, 1, 'skirt5.1.jpg', '#PRD6', 'CHÂN VÁY CHỮ A PHỐI VIỀN HOA NỔI', '<p>Được thiết kế với chất liệu tuytsi tuyển chọn giúp tạo nên sự thoải mái và độ bền cao. Chiếc váy có phom dáng chữ A, mang đến vẻ thanh lịch và trang nhã cho người diện.\\r\\n\\r\\nĐiểm nhấn đặc biệt của chiếc váy chính là viền hoa may nổi bật và thu hút bằng vải ren trên thân váy. Độ dài trên gối của thiết kế cũng rất phù hợp với các hoạt động trong nhiều dịp khác nhau, từ công sở cho đến dạo phố hay dự tiệc.</p><p>Cách phối đồ cho chiếc váy chữ A này rất đa dạng và linh hoạt. Bạn có thể kết hợp với áo sơ mi trắng và giày cao gót để tạo nên một vẻ ngoài chuyên nghiệp và sang trọng. Nếu muốn tạo nên phong cách cá tính và trẻ trung hơn, có thể phối với áo phông và giày sneakers.</p><p>Với sự kết hợp đa dạng này, chiếc chân váy chữ A trên gối với chi tiết hoa ren nổi bật chắc chắn sẽ trở thành một sản phẩm không thể thiếu trong tủ đồ của bất kỳ cô gái nào muốn tạo nên vẻ đẹp thanh lịch và quyến rũ.<br></p>', 105.00, 'summer skirt', '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(7, 3, 1, 'skirt2.3.jpg', '#PRD7', 'CHÂN VÁY XÒE PHỐI LY', '<p>Thiết kế thời trang đầy nữ tính và thanh lịch. Với chất liệu vải khaki đứng dáng nhưng không kém phần êm ái, thoải mái cho người mặc, đồng thời cũng rất dễ phối đồ. Chiều dài qua gối của chân váy tạo sự trẻ trung và năng động, phù hợp mặc nhiều dịp khác nhau, từ đi làm cho đến đi chơi.\\r\\n\\r\\nKiểu dáng xoè nhẹ về đuôi và thiết kế xếp ly tạo sự phóng khoáng và trẻ trung cho người mặc. Điểm nhấn của thiết kế là hàng khuy ngọc đính kèm ở cạp váy, tăng thêm sự sang trọng và thu hút.</p><p>Để phối đồ với chiếc chân váy này, bạn có thể kết hợp cùng áo sơ mi trắng để tạo nên một bộ trang phục trẻ trung và lịch sự, hoặc phối cùng áo phông và giày thể thao để có phong cách năng động và thoải mái hơn. Ngoài ra, bạn có thể diện cùng áo khoác denim hoặc blazer để tạo nên phong cách thời trang thật độc đáo và cá tính.<br></p>', 95.00, 'autumn skirt', '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(8, 3, 1, 'skirt3.1.jpg', '#PRD8', 'CHÂN VÁY XẺ GẤU TRƯỚC', '<p>Zuýp cạp cao dáng midi. 2 túi chéo. có 2 hàng khuy trang trí 2 bên. Xẻ gấu mặt trước tạo điểm nhấn. Cài bằng khóa kéo ẩn sau lưng.</p><p>Sử dụng chất Tuysi tạo cảm giác thoải mái khi mặc. Dáng xòe dễ phối hợp với nhiều kiểu trang phục từ áo thun, áo sơ mi kiểu.<br></p>', 45.00, 'summer skirt', '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(9, 5, 1, 'trousers2.4.jpg', '#PRD9', 'QUẦN BAGGY LỬNG', '<p>Quần baggy lửng độ dài trên mắt cá chân, thiết kế cạp cao bản to cách điệu tôn dáng với thiết kế 2 túi chéo 2 bên tiện lợi cho các nàng có thể đựng đồ khi ra ngoài. Thiết kế quần phối đai khuy cùng phần ống quần nhấn đai khác biệt.</p><p>Nàng có thể kết hợp quần baggy lửng với nhiều kiểu áo khác nhau để diện hàng ngày đi làm, đi chơi đều phù hợp.</p><p>Lưu ý: Màu sắc sản phẩm thực tế sẽ có sự chênh lệch nhỏ so với ảnh do điều kiện ánh sáng khi chụp và màu sắc hiển thị qua mản hình máy tính/ điện thoại.<br></p>', 120.00, 'baggy trousers', '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(10, 5, 1, 'trousers1.3.jpg', '#PRD10', 'QUẦN BAGGY PHỐI ĐAI', '<p>Quần baggy lửng, cạp cao. Ống quần có đường xếp ly cố định từ cạp xuống. Ống quần rộng. Gấu quần được tạo kiểu bằng đai nhỏ cài khuy kim loại. Quần kèm đai, cài bằng dây khóa kéo bên hông.</p><p>Mang kiểu dáng đơn giản, rộng vừa phải, dễ mặc và dễ phối cùng những kiểu áo khác, giúp người mặc thể hiện được sự chỉnh chu nhưng vẫn thanh lịch và thời trang.<br></p>', 70.00, 'baggy trousers', '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(11, 5, 1, 'trousers3.4.jpg', '#PRD11', 'QUẦN SUÔNG ỐNG RỘNG XẾP LY', '<p>Quần dài ống rộng dáng suông. Quần cạp cao, xếp ly tạo kiểu xòe rộng, mang lại cảm giác thoải mái tuyệt đối.</p><p>Dáng quần này tạo cảm giác chân thon dài, thẳng và che được hầu hết các khuyết điểm. Chất liệu Tuysi lên form chuẩn, mềm mại. Quần dễ dàng kết hợp với nhiều kiểu áo khác nhau, phù hợp diện đi chơi hay đi làm.<br></p>', 86.00, 'baggy trousers', '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(12, 1, 1, 'dress1.1.jpg', '#PRD12', 'CLOUD DRESS - ĐẦM ORGANZA XẾP TẦNG', '<p>Cloud Dress - Đầm organza xếp tầng nằm trong BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Thiết kế đầm trễ vai khoe lên bờ vai gợi cảm, đầm dáng ngắn, xòe rộng nữ tính. Chất liệu được sử dụng là loại vải tơ Organza cao cấp. Chất vải mịn màng, mỏng nhẹ và không nhăn. Bề mặt vải sáng bóng, bắt ánh sáng tốt kết hợp cùng thiết kế may nhúm phồng, xếp tầng tạo hiệu ứng bồng bềnh, thướt tha khi di chuyển. Nàng không cần mix nhiều phụ kiện mà trông vẫn thật tỏa sáng, sang trọng.</p><p>Một thiết kế đầm công chúa nhưng vẫn đầy nét quyến rũ, nổi bật tuyệt đối. Chiếc đầm có ứng dụng cao trong nhiều bữa tiệc và chắc chắn sẽ khiến nàng trở thành tâm điểm thu hút ánh nhìn trong đêm tiệc.<br></p>', 160.00, 'party dress', '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(13, 3, 1, 'skirt1.4.jpg', '#PRD13', 'ĐẦM CHỮ A DẠO PHỐ', '<p>Thiết kế đầm dáng chữ A dài qua gối giúp tôn lên nét đẹp của vóc dáng và mang đến sự thoải mái khi diện. Chi tiết không tay cùng phần hai bên vai khâu viền tạo điểm nhấn và thêm phần hiện đại cho thiết kế. Dáng váy peplum tạo sự bồng bềnh, mềm mại giúp vòng 2 thêm thon gọn mang lại sự tự tin và thoải mái vận động trong mọi hoạt động.</p><p>Chất liệu vải Tuysi cao cấp kết hợp cùng kiểu dáng hiện đại, sản phẩm phù hợp dành cho những buổi dạo phố, đi làm, gặp gỡ khách hàng hay những sự kiện. Kết hợp cùng giày cao gót và phụ kiện túi xách đi kèm để thiết kế váy thêm sang trọng, ấn tượng.<br></p>', 79.00, 'summer skirt', '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(14, 1, 1, 'dress2.2.jpg', '#PRD14', 'PRETTY DRESS - ĐẦM LỤA', '<p>Lựa chọn gam màu sang trọng trên một thiết kế đầm thanh lịch sẽ giúp nàng công sở chào ngày mới tự tin hơn rất nhiều. Điểm nhấn của thiết kế được đặt ở phần thắt&nbsp; đai eo hiện đại kết hợp đôi vai xếp li lạ mắt. Dáng đầm cơ bản, độ dài qua gối giữ vững nét đẹp công sở. Cùng với đó, sử dụng chất liệu lụa cao cấp, đầm mang đến cảm giác mặc nhẹ nhàng, mềm mại, rất thích hợp diện trong thời tiết hiện tại và diện đến bất cứ nơi đâu.<br></p>', 129.00, 'fall dress', '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(15, 1, 1, 'skirt6.1.jpg', '#PRD15', 'CHÂN VÁY XẾP LY DÁNG SUÔNG', '<p>Chân váy sở hữu thiết kế xếp ly tinh tế tạo ra những uyển chuyển thướt tha khi di chuyển. Với chất liệu vải lụa mềm mại, chân váy không chỉ mang đến sự thoải mái khi mặc mà còn tạo nên sự sang trọng, quý phải.</p><p>Nếu bạn yêu thích phong cách công sở thanh lịch, có thể phối chiếc váy với một áo sơ mi trắng cùng một đôi giày cao gót. Trong khi đó, nếu muốn hướng đến phong cách nữ tính, hãy phối với một chiếc áo thun cùng đôi giày bệt.<br></p>', 94.00, 'summer skirt', '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(16, 3, 1, 'skirt4.1.jpg', '#PRD16', 'UÝP REN DẬP LY', '<p>Zuýp ren cạp cao, dài qua gối. Cài bằng khóa kéo ẩn bên hông.</p><p>Zuýp được phủ lớp ren dập ly với vẻ đẹp tinh tế, đầy bí ẩn mang đến cho phái đẹp sự ngọt ngào, quyến rũ. Thiết kế 2 lớp, có lót mang đến sự thoải mái, tự tin. Lớp trong ngắn, lớp ngoài dài đem đến sự nữ tính, thướt tha. Dáng xòe midi mang đến sự thanh lịch. Dễ kết hợp với áo phông hay áo kiểu. Phù hợp mặc đi làm hay đi chơi dạo phố.<br></p>', 69.00, 'company skirt', '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(17, 2, 1, 'shirt4.3.jpg', '#PRD17', 'ÁO PEPLUM KHUY BỌC VẢI', '<p>Áo sơ mi V. Tay lỡ bo chun ở gấu tạo bồng. Eo chiết dáng peplum có bèo nhúm và dây kéo rút. Có hàng khuy trang trí bọc vai phía trước</p><p>Chất liệu lụa thô mang lại cảm giác thoáng mát, thoải mái cho người mặc bởi khả năng hút ẩm cao, thấm hút tốt. Nàng có thể mix&amp;match mẫu áo này với quần dài, quần short, chân váy để tạo ra các outfit khác nhau một cách dễ dàng.<br></p>', 125.00, 'company shirt', '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(18, 2, 1, 'shirt5.3.jpg', '#PRD18', 'ÁO PEPLUM XẺ TÀ', '<p>Thiết kế áo hai lớp vải, lớp ngoài là vải lụa xuyên thấu nhẹ nhàng, tạo hiệu ứng mờ ảo tôn vai, lớp trong là vải lót mềm mại giúp định hình dáng áo.\\r\\n\\r\\nCổ áo tròn được may nếp ly, mang đến vẻ nền nã và nữ tính cho thiết kế. Điểm nhấn đặc biệt là chi tiết hoa nổi gắn lệch bên eo cùng phần xẻ tà tinh tế ở vạt áo trước, giúp tôn lên vòng eo thon gọn và làm nổi bật cho vẻ đẹp của sản phẩm.</p><p>Áo peplum xẻ tà có thể được kết hợp với nhiều trang phục và phụ kiện khác nhau. Bạn có thể phối nó với một chiếc chân váy midi hoặc quần cạp cao để tạo nên một bộ trang phục thanh lịch và nữ tính. Nếu muốn tạo ra một phong cách cá nhân và thời trang hơn, hãy kết hợp áo với một đôi quần jeans và giày cao gót.<br></p>', 129.00, 'summer shirt', '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(19, 1, 1, 'dress8.3.jpg', '#PRD19', 'ROSY DRESS - ĐẦM DẠ HỘI XẾP HOA', '<p>Xuất hiện trong show diễn thời trang Xuân Hè 2023 \\\"Harmony\\\" - đánh thức thanh âm bên trong với sắc hồng dữ dội. Thiết kế đầm với sắc hồng rực rỡ này sẽ mang lại cho nàng nguồn năng lượng tươi mới. Thiết kế dáng đầm ôm cổ điển, tay hến may cách điệu, điểm nhấn là chi tiết may nhúm eo giúp che khuyết điểm bụng dưới hiệu quả. </p><p>Chất vải tuytsi mềm mát, đứng phom cùng dáng đầm ôm nhẹ nhàng phù hợp cho nàng diện đến những nơi sang trọng hoặc đi dạo phố cuối tuần.<br></p>', 80.00, 'party dress', '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(20, 1, 1, 'dress5.1.jpg', '#PRD20', 'ĐẦM QUÂY NGỰC ĐÍNH KHUY', '<p>Đầm maxi vải thô dáng quây ngực vẫn luôn là cái tên được các chị em săn đón mỗi dịp hè về. Thiết kế dáng quây ngực kèm 2 dây vai chắc chắn, điểm nhấn là chi tiết hàng khuy kim loại sang trọng. Dáng đầm dài xòe nhẹ không những tôn dáng mà khéo léo che đi khuyết điểm cơ thể.</p><p>Đây là sự lựa chọn hoàn hảo cho chuyến du lịch của nàng, đầm phối cùng chiếc nón rộng vành xinh xắn là nàng đã có ngay set đồ sang chảnh cho chuyến đi biển rồi đó.<br></p>', 149.00, 'summer dress', '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(21, 1, 1, 'dress6.4.jpg', '#PRD21', 'ĐẦM VEST DÁNG XÒE NHẸ', '<p>Sản phẩm thuộc BST Timeless tham gia trình diễn trong show thời trang Fall Winter 2022. BST lấy cảm hứng từ phong cách Academia cùng những ý tưởng sáng tạo mang tính xu hướng và nổi bật, đem đến một diện mạo học thức vượt ra khỏi khái niệm vẻ đẹp đơn thuần, dấu ấn vượt thời gian cùng những trang phục \\\"không tuổi\\\".</p><p>nNằm trong BST Timeless với phong cách chủ đạo là Academia nên thiết kế của mẫu đầm có dáng vẻ đứng đắn và thanh lịch hơn. Với thiết kế cổ áo cổ 2 ve, tay dài, eo ôm, dáng đầm dài qua đầu gối xòe nhẹ giúp che khuyết điểm phần bắp tay và phần thân dưới, mang lại dáng vẻ thanh mảnh hơn cho nàng.\\r\\n\\r\\nChất liệu được sử dụng là chất vải tuysi cao cấp. Đây là sự lựa chọn hàng đầu của các nhà mốt dành cho các thiết kế đòi hỏi sự thanh lịch, sang trọng mà vẫn đảm bảo tính thoải mái. Đầm 2 lớp chất liệu vải tuysi mềm nhẹ, thoáng mát, ít nhăn và giữ form dáng tốt. Xu hướng nữ quyền được IVY moda kết hợp giữa vẻ đẹp thanh lịch, sang trọng nhưng vẫn đề cao sự thoải mái, dễ chịu từ phom dáng đến chất liệu mềm mại.<br></p>', 135.00, 'vest', '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(22, 1, 1, 'dress7.2.jpg', '#PRD22', 'SARAH DRESS - ĐẦM DỰ TIỆC ĐÍNH HOA', '<p>Đầm dự tiệc đính hoa là sản phẩm thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. BST lấy cảm hứng từ phong cách Academia với ý tưởng sáng tạo mang tính xu hướng và nổi bật, đem đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần, dấu ấn vượt thời gian cùng những trang phục \\\"không tuổi\\\".</p><p>Đầm dáng dài, xòe nhẹ. Thiết kế áo đầm lấy cảm hứng từ chiếc áo corset, thân áo được may bố mảnh giúp tôn dáng và che khuyết điểm thân trên hiệu quả.<br></p>', 109.00, 'party dress', '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(23, 1, 1, 'skirt7.2.jpg', '#PRD23', 'SARAH DRESS - ĐẦM DỰ TIỆC ĐÍNH HOA BE', '<p>Chất liệu vải tuysi cao cấp, dày dặn và không bị nhăn, có độ phồng cho phần chân váy càng nâng tầm cho đầm tốt hơn đồng thời giúp bạn \\\"ăn gian\\\" chiều cao. Đầm có lớp lót cùng màu bên trong cẩn thận. </p><p>Một chiếc đầm sang trọng, tinh tế từ những chi tiết nhỏ nhất. Kết hợp đầm cùng giày cao gót và túi xách bản nhỏ khi đi dự tiệc thật phong cách và phù hợp với những bữa tiệc lớn hoặc những dự kiện quan trọng.<br></p>', 105.00, 'party dress', '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(24, 5, 1, 'trousers4.3.jpg', '#PRD24', 'QUẦN LEGGING LỬNG', '<p>Quần legging dáng ngố, ôm body. Cạp chun co giãn. Kiểu may không đường chỉ giúp tôn vòng 3 hiệu quả. Chất vải thun dày mềm mịn. Phối cùng áo thun, áo croptop và blazer, giày thể thao giúp trở nên năng động.<br></p>', 49.00, 'legging trousers', '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(25, 4, 1, 'trousers5.2.jpg', '#PRD25', 'QUẦN SOOC BÒ GẬP GẤU', '<p>Quần mini short dáng suông, ống gấu gập tầm 3cm được may cố định. Phía trước có túi chéo, phía sau có túi hộp.</p><p>Thiết kế mini short luôn là lựa chọn hàng đầu cho những chuyến vui chơi ngày hè. Chỉ cần đơn giản mix với áo thun và một đôi giày bệt dễ chịu là nàng đã có thể thoải mái du lịch đến mọi nơi. Sắc xanh lơ nhạt màu trẻ trung góp phần khiến làn da nàng trở nên sáng hơn.<br></p>', 79.00, 'short jeans', '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(26, 2, 1, 'shirt6.2.jpg', '#PRD26', 'ÁO BLAZER NGẮN TAY PHỐI QUẦN SHORT', '<p>Set đồ bao gồm một chiếc áo blazer ngắn tay, áo hai dây đi kèm và quần short phong cách. Chất liệu được sử dụng là vải linen, tạo cảm giác mát mẻ và thoải mái khi mặc trong những ngày hè nóng bức.\\r\\n\\r\\nÁo blazer có thiết kế cộc tay, tạo nên phong cách trẻ trung và năng động. Áo hai dây đi kèm với những đường may tinh tế, giúp tôn lên vẻ đẹp của người diện. Quần short với chiều dài vừa phải, giúp bạn thoải mái di chuyển mà vẫn giữ được vẻ lịch sự cùng phong cách thời trang.</p><p>Cổ áo được trang trí bởi khuy kim loại đính kèm, tạo nên điểm nhấn độc đáo và sang trọng. Với phong cách trẻ trung và hiện đại, set đồ này sẽ là sự lựa chọn hoàn hảo cho thời trang công sở hay những buổi hẹn hò, dạo phố cùng bạn bè.<br></p>', 149.00, 'company shirt', '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(27, 2, 1, 'shirt3.3.jpg', '#PRD27', 'ÁO THUN FLOWERS', '<p>Thiết kế áo thun nữ dáng suông rộng, tạo cảm giác thoải mái và dễ chịu khi mặc. Chất liệu cotton mềm mịn, thấm hút giúp người diện cảm thấy thông thoáng và mát mẻ trong suốt ngày dài.</p><p>Áo được trang trí với hoạ tiết in hoa nổi trước ngực, tạo nên điểm nhấn và giúp thiết kế trở nên độc lạ hơn. Với màu sắc nhẹ nhàng và hoạ tiết tươi sáng, sản phẩm này sẽ rất được lòng những người yêu thích phong cách trẻ trung và năng động.</p><p>Kết hợp với quần jean, chân váy hoặc short để có một trang phục thời trang và bắt mắt cho những ngày nắng nóng hoặc dạo phố cùng bạn bè.<br></p>', 90.00, 'summer shirt', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(28, 1, 1, 'shirt2.1.jpg', '#PRD28', 'ÁO THUN PRAY KẺ NGANG', '<p>Áo thun cổ tròn, cộc tay. Vải kẻ ngang đan màu. In hoa và chữ mặt trước.</p><p>Thiết kế form suông vừa phải đem lại cảm giác thon gọn, lịch sự và trẻ trung. Họa tiết in chữ khác màu nổi bật trên nền màu đơn sắc giúp items này thu hút hơn bao giờ hết. Chất liệu thun cao cấp nhẹ, mềm, thấm hút mồ hôi, siêu co dãn...Mix cùng quần Jean, chân váy, zuýp dài...bạn sẽ có những set đồ thời trang, cá tính, lịch sự.<br></p>', 155.00, 'summer shirt', '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(29, 1, 1, 'dress3.4.jpg', '#PRD29', 'CHÂN VÁY XẾP LY', '<p>Váy xếp ly dáng xoè là một sản phẩm thời trang đẹp mắt và nữ tính, được thiết kế để tôn lên vẻ đẹp của người diện. Với sự kết hợp giữa chất liệu vải thô đứng dáng và độ rộng của ly xếp, chiếc váy này mang đến cảm giác thoải mái và nền nã khi mặc.</p><p>Điểm nổi bật của sản phẩm chính là chi tiết xếp ly xoè dần về đuôi, giúp tạo nên vẻ đẹp cân đối và thời trang cho người diện. Thiết kế này cũng giúp tôn lên đôi chân thon dài và mang đến sự tự tin cho phái đẹp khi diện váy.</p><p>Với màu sắc trang nhã và kiểu dáng đơn giản, chân váy xếp ly dáng xoè thích hợp để mặc trong nhiều dịp khác nhau, từ công sở đến dạo phố hay dự tiệc. Sản phẩm có thể kết hợp cùng áo sơ mi, áo thun và các phụ kiện đi kèm.<br></p>', 99.00, 'company dress', '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(30, 1, 1, 'dress4.2.jpg', '#PRD30', 'VÁY XẾP LY 2 LỚP XANH', '<p>&nbsp;Sản phẩm thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Bộ sưu tập lấy cảm hứng từ phong cách thời trang Academia, cộng hưởng với những ý tưởng sáng tạo đầy xu hướng, mang đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần.</p>', 95.00, 'party dress', '2023-07-26 06:48:58', '2023-07-26 06:48:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `color_name` varchar(50) NOT NULL,
  `batch` tinyint(4) NOT NULL,
  `amount` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `properties`
--

INSERT INTO `properties` (`id`, `prd_id`, `size`, `color`, `color_name`, `batch`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', '#759fcc', 'xanh nhạt', 1, 3, '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(2, 1, 'M', '#000000', 'đen', 1, 2, '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(3, 1, 'L', '#2b3abf', 'xanh đậm', 1, 5, '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(4, 2, 'S', '#000000', 'đen', 1, 1, '2023-07-26 05:58:56', '2023-07-26 06:51:04'),
(5, 2, 'M', '#444b7e', 'xanh đậm', 1, 2, '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(6, 2, 'L', '#b7bbe1', 'xanh nhạt', 1, 4, '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(7, 2, 'XL', '#808080', 'xám', 1, 2, '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(8, 3, 'XXS', '#dbd4b3', 'be', 1, 3, '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(9, 3, 'XXS', '#000000', 'đen', 1, 1, '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(10, 3, 'XXS', '#db7500', 'cam', 1, 5, '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(11, 4, 'M', '#dcdf01', 'vàng', 1, 2, '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(12, 4, 'L', '#0ed100', 'xanh lá', 1, 3, '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(13, 4, 'XL', '#000000', 'đen', 1, 9, '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(14, 5, 'XS', '#1b7a00', 'xanh lá', 1, 2, '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(15, 5, 'S', '#ff0066', 'hồng', 1, 6, '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(16, 5, 'M', '#9ca4ec', 'xanh nhạt', 1, 1, '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(17, 6, 'XS', '#c9c9c9', 'xám', 1, 2, '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(18, 6, 'S', '#000000', 'đen', 1, 5, '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(19, 6, 'M', '#f50000', 'đỏ', 1, 2, '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(20, 7, 'S', '#e6ce7a', 'vàng be', 1, 2, '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(21, 7, 'M', '#555eaa', 'xanh đậm', 1, 5, '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(22, 8, 'M', '#e3bea6', 'hồng nhạt', 1, 3, '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(23, 8, 'L', '#8dd3a4', 'xanh nhạt', 1, 5, '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(24, 8, 'XL', '#e9fa00', 'vàng', 1, 5, '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(25, 9, 'XXS', '#9acad0', 'xanh mint', 1, 2, '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(26, 9, 'S', '#000000', 'đen', 1, 5, '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(27, 9, 'M', '#d1a76b', 'vàng chàm', 1, 3, '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(28, 9, 'L', '#8873d3', 'tím', 1, 3, '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(29, 10, 'S', '#abd908', 'xanh lá', 1, 5, '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(30, 10, 'M', '#eadd9f', 'be', 1, 2, '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(31, 11, 'S', '#d5014b', 'hồng đậm', 1, 1, '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(32, 11, 'M', '#ffa8db', 'hồng nhạt', 1, 3, '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(33, 11, 'L', '#40bcf2', 'xanh biển', 1, 4, '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(34, 12, 'S', '#ecedde', 'be', 1, 0, '2023-07-26 06:16:44', '2023-07-26 08:17:40'),
(35, 12, 'M', '#a3abf5', 'xanh nhạt', 1, 5, '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(36, 12, 'L', '#ffb3f5', 'hồng nhạt', 1, 4, '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(37, 12, 'XL', '#000000', 'đen', 1, 3, '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(38, 13, 'S', '#000000', 'đen', 1, 5, '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(39, 13, 'M', '#005fb8', 'xanh biển', 1, 4, '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(40, 14, 'XS', '#e5bdea', 'tím', 1, 2, '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(41, 14, 'M', '#a2d2ae', 'xanh lá', 1, 4, '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(42, 14, 'L', '#707070', 'xám', 1, 2, '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(43, 15, 'M', '#ff85ba', 'hồng', 1, 2, '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(44, 15, 'L', '#5eb706', 'xanh lá', 1, 4, '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(45, 15, 'XL', '#be9dfb', 'tím', 1, 3, '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(46, 16, 'XXS', '#e8c987', 'vàng be', 1, 1, '2023-07-26 06:23:21', '2023-07-26 08:22:52'),
(47, 16, 'S', '#123ea5', 'xanh đậm', 1, 3, '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(48, 16, 'M', '#ec8eaf', 'hồng', 1, 5, '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(49, 17, 'S', '#d10000', 'đỏ', 1, 3, '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(50, 17, 'M', '#00109e', 'xanh biển', 1, 4, '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(51, 17, 'L', '#00a30b', 'xanh lá', 1, 3, '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(52, 18, 'S', '#eaebf6', 'trắng', 1, 2, '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(53, 18, 'M', '#992600', 'nâu', 1, 3, '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(54, 19, 'S', '#fff7c2', 'be', 1, 3, '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(55, 19, 'M', '#737691', 'xám', 1, 5, '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(56, 19, 'L', '#e868d1', 'hồng', 1, 1, '2023-07-26 06:27:56', '2023-07-26 08:26:04'),
(57, 20, 'S', '#ba8cd9', 'tím', 1, 4, '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(58, 20, 'M', '#b8ffcf', 'xanh m', 1, 3, '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(59, 20, 'XL', '#000000', 'đen', 1, 4, '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(60, 21, 'M', '#9e9e9e', 'xám', 1, 4, '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(61, 21, 'L', '#7078c2', 'xanh nhạt', 1, 3, '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(62, 22, 'M', '#000000', 'đen', 1, 4, '2023-07-26 06:32:26', '2023-07-26 08:17:40'),
(63, 22, 'L', '#74bafb', 'xanh nhạt', 1, 2, '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(64, 23, 'S', '#000000', 'đen', 1, 3, '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(65, 23, 'M', '#d6ca8f', 'be', 1, 5, '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(66, 23, 'XL', '#ca6644', 'cam', 1, 2, '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(67, 24, 'S', '#ef4e93', 'hồng', 1, 2, '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(68, 24, 'M', '#000000', 'đen', 1, 5, '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(69, 24, 'L', '#017dbc', 'xanh', 1, 2, '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(70, 25, 'M', '#535cac', 'xanh biển', 1, 3, '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(71, 25, 'L', '#616161', 'xám', 1, 3, '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(72, 26, 'M', '#d12953', 'đỏ hồng', 1, 4, '2023-07-26 06:41:32', '2023-07-26 08:13:43'),
(73, 26, 'L', '#4f07bb', 'xanh', 1, 3, '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(74, 26, 'XL', '#000000', 'đen', 1, 2, '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(75, 27, 'XXS', '#d9b5d8', 'hồng', 1, 2, '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(76, 27, 'S', '#bad5ae', 'xa', 1, 6, '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(77, 27, 'L', '#e0e0e0', 'trắng', 1, 2, '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(78, 28, 'S', '#000000', 'đen', 1, 7, '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(79, 28, 'M', '#4ddbff', 'xanh mint', 1, 2, '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(80, 29, 'XXS', '#ff9494', 'hồng', 1, 4, '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(81, 29, 'S', '#414781', 'xanh biển', 1, 2, '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(82, 29, 'M', '#000000', 'đen', 1, 3, '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(83, 29, 'L', '#fdeea0', 'be', 1, 2, '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(84, 30, 'M', '#93d345', 'xanh lá', 1, 3, '2023-07-26 06:48:58', '2023-07-26 06:48:58'),
(85, 30, 'L', '#545454', 'xám', 1, 3, '2023-07-26 06:48:58', '2023-07-26 06:48:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchase`
--

CREATE TABLE `purchase` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_code` varchar(255) NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `total_pay` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `purchase`
--

INSERT INTO `purchase` (`id`, `purchase_code`, `supplier_id`, `total_pay`, `created_at`, `updated_at`) VALUES
(1, '#NAIVE1', 1, 5693.00, '2023-07-26 05:50:54', '2023-07-26 06:48:58'),
(2, '#NAIVE2', 1, 14696.00, '2023-07-26 05:51:13', '2023-07-26 06:32:26'),
(3, '#MILAN1', 2, 1740.00, '2023-07-26 05:51:24', '2023-07-26 06:00:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `batch` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `prd_id`, `quantity`, `unit_price`, `batch`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 10, 50.00, 1, '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(2, 3, 2, 11, 80.00, 1, '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(3, 3, 3, 9, 40.00, 1, '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(4, 2, 4, 14, 35.00, 1, '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(5, 2, 5, 9, 60.00, 1, '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(6, 2, 6, 9, 90.00, 1, '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(7, 2, 7, 7, 75.00, 1, '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(8, 2, 8, 13, 30.00, 1, '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(9, 2, 9, 13, 100.00, 1, '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(10, 2, 10, 7, 50.00, 1, '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(11, 2, 11, 8, 78.00, 1, '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(12, 2, 12, 14, 150.00, 1, '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(13, 2, 13, 9, 70.00, 1, '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(14, 2, 14, 8, 100.00, 1, '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(15, 2, 15, 9, 58.00, 1, '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(16, 2, 16, 10, 55.00, 1, '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(17, 2, 17, 10, 100.00, 1, '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(18, 2, 18, 5, 120.00, 1, '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(19, 2, 19, 10, 60.00, 1, '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(20, 2, 20, 11, 130.00, 1, '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(21, 2, 21, 7, 105.00, 1, '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(22, 2, 22, 7, 100.00, 1, '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(23, 1, 23, 10, 100.00, 1, '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(24, 1, 24, 9, 40.00, 1, '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(25, 1, 25, 6, 40.00, 1, '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(26, 1, 26, 12, 100.00, 1, '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(27, 1, 27, 10, 60.00, 1, '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(28, 1, 28, 9, 100.00, 1, '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(29, 1, 29, 11, 89.00, 1, '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(30, 1, 30, 6, 69.00, 1, '2023-07-26 06:48:58', '2023-07-26 06:48:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` tinyint(4) DEFAULT NULL,
  `sale_name` varchar(150) NOT NULL,
  `discount` tinyint(4) NOT NULL,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`id`, `category_id`, `customer_type`, `sale_name`, `discount`, `begin`, `end`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Sinh nhật Elegant 1 tuổi', 10, '2023-07-25 08:29:00', '2023-07-30 08:29:00', '2023-07-26 08:29:25', '2023-07-26 08:29:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id`, `invoice_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-07-26 06:51:04', '2023-07-26 06:51:04'),
(2, 2, 1, '2023-07-26 08:09:25', '2023-07-26 08:09:25'),
(3, 3, 1, '2023-07-26 08:13:43', '2023-07-26 08:13:43'),
(4, 4, 2, '2023-07-26 08:17:40', '2023-07-26 08:18:32'),
(5, 5, 1, '2023-07-26 08:22:52', '2023-07-26 08:22:52'),
(6, 6, 1, '2023-07-26 08:26:04', '2023-07-26 08:26:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Naive', '0958495839583', 'Naive@gmail.com', 'Quận 1, Sài Gòn', '2023-07-26 05:48:23', '2023-07-26 05:48:23'),
(2, 'Milan', '09483983875', 'Milan@gmail.com', 'Đặng Văn Ngữ, Hà Nội', '2023-07-26 05:50:12', '2023-07-26 05:50:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `total_property`
--

CREATE TABLE `total_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `colors` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `total_property`
--

INSERT INTO `total_property` (`id`, `prd_id`, `sizes`, `colors`, `created_at`, `updated_at`) VALUES
(1, 1, 'S M L ', '#759fcc #000000 #2b3abf ', '2023-07-26 05:57:13', '2023-07-26 05:57:13'),
(2, 2, 'S M L XL ', '#000000 #444b7e #b7bbe1 #808080 ', '2023-07-26 05:58:56', '2023-07-26 05:58:56'),
(3, 3, 'XXS ', '#dbd4b3 #000000 #db7500 ', '2023-07-26 06:00:37', '2023-07-26 06:00:37'),
(4, 4, 'M L XL ', '#dcdf01 #0ed100 #000000 ', '2023-07-26 06:03:26', '2023-07-26 06:03:26'),
(5, 5, 'XS S M ', '#1b7a00 #ff0066 #9ca4ec ', '2023-07-26 06:04:53', '2023-07-26 06:04:53'),
(6, 6, 'XS S M ', '#c9c9c9 #000000 #f50000 ', '2023-07-26 06:06:43', '2023-07-26 06:06:43'),
(7, 7, 'S M ', '#e6ce7a #555eaa ', '2023-07-26 06:08:16', '2023-07-26 06:08:16'),
(8, 8, 'M L XL ', '#e3bea6 #8dd3a4 #e9fa00 ', '2023-07-26 06:10:03', '2023-07-26 06:10:03'),
(9, 9, 'XXS S M L ', '#9acad0 #000000 #d1a76b #8873d3 ', '2023-07-26 06:12:02', '2023-07-26 06:12:02'),
(10, 10, 'S M ', '#abd908 #eadd9f ', '2023-07-26 06:13:20', '2023-07-26 06:13:20'),
(11, 11, 'S M L ', '#d5014b #ffa8db #40bcf2 ', '2023-07-26 06:15:22', '2023-07-26 06:15:22'),
(12, 12, 'S M L XL ', '#ecedde #a3abf5 #ffb3f5 #000000 ', '2023-07-26 06:16:44', '2023-07-26 06:16:44'),
(13, 13, 'S M ', '#000000 #005fb8 ', '2023-07-26 06:18:20', '2023-07-26 06:18:20'),
(14, 14, 'XS M L ', '#e5bdea #a2d2ae #707070 ', '2023-07-26 06:19:27', '2023-07-26 06:19:27'),
(15, 15, 'M L XL ', '#ff85ba #5eb706 #be9dfb ', '2023-07-26 06:20:58', '2023-07-26 06:20:58'),
(16, 16, 'XXS S M ', '#e8c987 #123ea5 #ec8eaf ', '2023-07-26 06:23:21', '2023-07-26 06:23:21'),
(17, 17, 'S M L ', '#d10000 #00109e #00a30b ', '2023-07-26 06:24:46', '2023-07-26 06:24:46'),
(18, 18, 'S M ', '#eaebf6 #992600 ', '2023-07-26 06:26:24', '2023-07-26 06:26:24'),
(19, 19, 'S M L ', '#fff7c2 #737691 #e868d1 ', '2023-07-26 06:27:56', '2023-07-26 06:27:56'),
(20, 20, 'S M XL ', '#ba8cd9 #b8ffcf #000000 ', '2023-07-26 06:29:31', '2023-07-26 06:29:31'),
(21, 21, 'M L ', '#9e9e9e #7078c2 ', '2023-07-26 06:30:57', '2023-07-26 06:30:57'),
(22, 22, 'M L ', '#000000 #74bafb ', '2023-07-26 06:32:26', '2023-07-26 06:32:26'),
(23, 23, 'S M XL ', '#000000 #d6ca8f #ca6644 ', '2023-07-26 06:35:54', '2023-07-26 06:35:54'),
(24, 24, 'S M L ', '#ef4e93 #000000 #017dbc ', '2023-07-26 06:37:07', '2023-07-26 06:37:07'),
(25, 25, 'M L ', '#535cac #616161 ', '2023-07-26 06:40:00', '2023-07-26 06:40:00'),
(26, 26, 'M L XL ', '#d12953 #4f07bb #000000 ', '2023-07-26 06:41:32', '2023-07-26 06:41:32'),
(27, 27, 'XXS S L ', '#d9b5d8 #bad5ae #e0e0e0 ', '2023-07-26 06:44:18', '2023-07-26 06:44:18'),
(28, 28, 'S M ', '#000000 #4ddbff ', '2023-07-26 06:45:29', '2023-07-26 06:45:29'),
(29, 29, 'XXS S M L ', '#ff9494 #414781 #000000 #fdeea0 ', '2023-07-26 06:47:30', '2023-07-26 06:47:30'),
(30, 30, 'M L ', '#93d345 #545454 ', '2023-07-26 06:48:58', '2023-07-26 06:48:58');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_customer_id_foreign` (`customer_id`),
  ADD KEY `address_guest_id_foreign` (`guest_id`);

--
-- Chỉ mục cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_account_email_unique` (`email`),
  ADD UNIQUE KEY `admin_account_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_memory`
--
ALTER TABLE `cart_memory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_memory_property_id_foreign` (`property_id`),
  ADD KEY `cart_memory_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_prd_id_foreign` (`prd_id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`),
  ADD UNIQUE KEY `customer_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_prd_id_foreign` (`prd_id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_invoice_code_unique` (`invoice_code`),
  ADD KEY `invoice_customer_id_foreign` (`customer_id`),
  ADD KEY `invoice_guest_id_foreign` (`guest_id`),
  ADD KEY `invoice_address_id_foreign` (`address_id`);

--
-- Chỉ mục cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_property_id_foreign` (`property_id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_product_code_unique` (`product_code`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_prd_id_foreign` (`prd_id`);

--
-- Chỉ mục cho bảng `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_purchase_code_unique` (`purchase_code`),
  ADD KEY `purchase_supplier_id_foreign` (`supplier_id`);

--
-- Chỉ mục cho bảng `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_prd_id_foreign` (`prd_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_invoice_id_foreign` (`invoice_id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_phone_unique` (`phone`),
  ADD UNIQUE KEY `supplier_email_unique` (`email`);

--
-- Chỉ mục cho bảng `total_property`
--
ALTER TABLE `total_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `total_property_prd_id_foreign` (`prd_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cart_memory`
--
ALTER TABLE `cart_memory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `total_property`
--
ALTER TABLE `total_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `address_guest_id_foreign` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart_memory`
--
ALTER TABLE `cart_memory`
  ADD CONSTRAINT `cart_memory_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_memory_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_guest_id_foreign` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `total_property`
--
ALTER TABLE `total_property`
  ADD CONSTRAINT `total_property_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
