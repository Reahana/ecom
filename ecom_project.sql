-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 04:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'well', 'brand-images/1640770532.jpg', 1, '2021-12-29 03:35:32', '2021-12-29 03:35:32'),
(2, 'Samsung', 'asdasd', '', 1, '2021-12-30 04:57:21', '2021-12-30 04:57:21'),
(3, 'Diamond World', 'iNE;VONDOIN M:ldsdBVDBVeWGE', 'brand-images/1641721498.jpg', 1, '2022-01-09 03:44:58', '2022-01-09 03:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Woman Fashion', 'well Woman Fashion', 'category-images/1640686591.jpg', 1, '2021-12-28 02:38:52', '2021-12-28 04:16:31'),
(3, 'Man Fashion', 'well', '', 1, '2021-12-28 05:23:21', '2021-12-28 05:23:21'),
(4, 'Electronics', 'well', 'category-images/1640690612.jpg', 1, '2021-12-28 05:23:32', '2021-12-28 05:23:32'),
(5, 'Jewellary', 'djdhbvdvoidf', 'category-images/1641721231.jpg', 1, '2022-01-09 03:40:31', '2022-01-09 03:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile`, `address`, `created_at`, `updated_at`) VALUES
(2, 'ddvdvdweW', 'reahana3@gmail.com', '$2y$10$jLmRYWTCb0Yjy7a6NcxACuNT78rnG95vJX38XHLOMjpJuWTU0d69i', '01837420600', NULL, '2022-01-18 23:05:25', '2022-01-18 23:05:25'),
(3, 'Rose', 'rose@gmail.com', '$2y$10$NQ3cNKqCvjmpIWRkUMKqxerIeyvHA0P/9RSTBuHzA9JuNhuX18Ley', '018374200000', NULL, '2022-01-19 02:40:27', '2022-01-19 02:40:27'),
(4, 'Amanda Reahana Gomes', 'reahana233@gmail.com', '$2y$10$0nLS.cgIb.Ch2H.pnw4XvuvI9/y0RKJut6vxLIWqtgjFEm6HjCM7.', '01837420631', NULL, '2022-01-19 02:59:28', '2022-01-19 02:59:28'),
(5, 'Amanda Reahana Gomes', 'reahana233@gmail.com', '$2y$10$D8iXMp6xE0u8pU7ucxqU3.igcbf.v2qjFtLvp541zzz4Vc5cnvaeC', '01837420631', NULL, '2022-01-19 03:03:25', '2022-01-19 03:03:25');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_26_092948_create_sessions_table', 1),
(7, '2021_12_27_104906_create_categories_table', 2),
(8, '2021_12_28_104214_create_sub_categories_table', 3),
(9, '2021_12_29_091625_create_brands_table', 4),
(10, '2021_12_29_094828_create_units_table', 5),
(11, '2021_12_29_104147_create_products_table', 6),
(12, '2021_12_29_105416_create_sub_images_table', 6),
(13, '2022_01_10_113406_create_orders_table', 7),
(14, '2022_01_10_113449_create_order_details_table', 7),
(15, '2022_01_10_114605_create_customers_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `tax_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_timestamp`, `order_total`, `tax_total`, `order_status`, `payment_amount`, `payment_status`, `payment_date`, `payment_timestamp`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `delivery_address`, `created_at`, `updated_at`) VALUES
(1, 2, '2022-01-19', '1642550400', 50000.85, 6521.85, 'Pending', 0.00, 'Pending', NULL, NULL, 'Pending', NULL, NULL, '2/A, Tejkunipara, Tejgaon', '2022-01-18 23:05:26', '2022-01-18 23:05:26'),
(2, 3, '2022-01-19', '1642550400', 1176.45, 153.45, 'Pending', 0.00, 'Pending', NULL, NULL, 'Pending', NULL, NULL, 'Tejgaon', '2022-01-19 02:40:27', '2022-01-19 02:40:27'),
(3, 4, '2022-01-19', '1642550400', 12337.20, 1609.20, 'Pending', 0.00, 'Pending', NULL, NULL, 'Pending', NULL, NULL, '27/A, Tejkunipara, Tejgaon', '2022-01-19 02:59:29', '2022-01-19 02:59:29'),
(4, 5, '2022-01-19', '1642550400', 12337.20, 1609.20, 'Pending', 0.00, 'Pending', NULL, NULL, 'Pending', NULL, NULL, '27/A, Tejkunipara, Tejgaon', '2022-01-19 03:03:25', '2022-01-19 03:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 10728.00, 2, '2022-01-18 23:05:26', '2022-01-18 23:05:26'),
(2, 1, 6, 1023.00, 1, '2022-01-18 23:05:26', '2022-01-18 23:05:26'),
(3, 1, 4, 21000.00, 1, '2022-01-18 23:05:26', '2022-01-18 23:05:26'),
(4, 2, 6, 1023.00, 1, '2022-01-19 02:40:27', '2022-01-19 02:40:27'),
(5, 3, 7, 10728.00, 1, '2022-01-19 02:59:29', '2022-01-19 02:59:29');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` double(10,2) NOT NULL,
  `selling_price` double(10,2) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `review_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `hit_count`, `sales_count`, `review_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 'External Hard Drive', '1001', 5200.00, 4800.00, 'Short Description', '<p>Long Description&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'product-images/1640857979.jpg', 0, 0, 0, 1, '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(2, 2, 1, 1, 1, 'Eti Aktar', '10013213', 213412.00, 121312.00, 'asdasd', '<p>asdasdsad</p>', 'product-images/1640861315.jpg', 0, 0, 0, 1, '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(3, 3, 5, 1, 1, 'Black', '1234', 500.00, 250.00, 'saFSAFSAfSvcssV', '<p>xsCSFSAvsvs</p>', 'product-images/1641718530.jpg', 0, 0, 0, 1, '2022-01-09 02:55:30', '2022-01-09 02:55:30'),
(4, 4, 7, 2, 1, 'Mobile', '022', 250000.00, 21000.00, 'ok', '<p><span style=\"font-family: Verdana;\">﻿It is nice</span><br></p>', 'product-images/1641718708.jpg', 0, 0, 0, 1, '2022-01-09 02:58:28', '2022-01-09 02:58:28'),
(5, 4, 7, 2, 1, 'Mobile', '022', 250000.00, 21000.00, 'ok', '<p><span style=\"font-family: Verdana;\">﻿It is nice</span><br></p>', 'product-images/1641718717.jpg', 0, 0, 0, 1, '2022-01-09 02:58:37', '2022-01-09 02:58:37'),
(6, 3, 5, 2, 1, 'Fahad Islam', '120437753545454', 10236.00, 1023.00, 'xfhfhzfzf', '<p>zfnfnfgf</p>', 'product-images/1641718986.jpg', 0, 0, 0, 1, '2022-01-09 03:03:06', '2022-01-09 03:03:06'),
(7, 5, 9, 3, 2, 'Necklash', '5757873', 102222.00, 10728.00, 'gegeg4e', '<p>hgrzjnrfdnkfokfmemfdmfdpfejtiegjdkgmdlkfmbdgdrgrgfgfdagedg</p><p>gaeghegegegegege</p>', 'product-images/1641721576.jpg', 0, 0, 0, 1, '2022-01-09 03:46:16', '2022-01-09 03:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8NGudEi5Nu44oxfBsII1jB9SHPlzdVQZbHN4ZjtD', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY1huSTlPeUtLR0hNYUc3cTZzQ0RYMU04T3JpQnZ0aGZFVzR5Q01sZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3QvRWNvbV9Qcm9qZWN0L2Vjb20vcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjA6e31zOjM6InRheCI7ZDoxNjA5LjI7czo1OiJ0b3RhbCI7ZDoxMjMzNy4yO30=', 1642583089),
('DwzVFSCUaDYMRQYkdYp67c825mTE64DMrAdC5MOP', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWd1dzlWTDVuSFg0ZzVua1hzU21wVzhibW92RjJjMlU1dE9mZ1NLYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9sb2NhbGhvc3QvTmV3JTIwZm9sZGVyL0Vjb21fUHJvamVjdC9lY29tL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1642696223);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Shari', 'well Shari', 'sub-category-images/1640691099.jpg', 1, '2021-12-28 05:31:39', '2021-12-28 05:31:39'),
(2, 2, 'Habibur Rahman', 'safdsdaf', 'sub-category-images/1640764504.jpg', 1, '2021-12-29 01:55:04', '2021-12-29 01:55:04'),
(3, 4, 'BITM', 'asd', 'sub-category-images/1640766817.jpg', 1, '2021-12-29 02:33:37', '2021-12-29 02:33:37'),
(4, 2, 'Shoe', 'asdasd', 'sub-category-images/1640861748.jpg', 1, '2021-12-30 04:55:48', '2021-12-30 04:55:48'),
(5, 3, 'T-Shirt', 'asdas', 'sub-category-images/1640861761.jpg', 1, '2021-12-30 04:56:01', '2021-12-30 04:56:01'),
(6, 3, 'Pant', 'awsdasdas', '', 1, '2021-12-30 04:56:16', '2021-12-30 04:56:16'),
(7, 4, 'Mobile', 'asdasd', '', 1, '2021-12-30 04:56:25', '2021-12-30 04:56:25'),
(8, 4, 'Computer Acceories', 'asdasd', '', 1, '2021-12-30 04:56:37', '2021-12-30 04:56:37'),
(9, 5, 'Crown', 'GFwgfwqgfW', 'sub-category-images/1641721256.jpg', 1, '2022-01-09 03:40:56', '2022-01-09 03:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-sub-images/1640857979.jpg', '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(2, 1, 'product-sub-images/1640857979.jpg', '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(3, 1, 'product-sub-images/1640857979.jpg', '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(4, 2, 'product-sub-images/481640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(5, 2, 'product-sub-images/1821640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(6, 2, 'product-sub-images/3721640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(7, 2, 'product-sub-images/3531640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(8, 3, 'product-sub-images/4771641718530.jpg', '2022-01-09 02:55:30', '2022-01-09 02:55:30'),
(9, 5, 'product-sub-images/4931641718717.jpg', '2022-01-09 02:58:37', '2022-01-09 02:58:37'),
(10, 6, 'product-sub-images/4341641718986.jpg', '2022-01-09 03:03:06', '2022-01-09 03:03:06'),
(11, 6, 'product-sub-images/6981641718986.jpg', '2022-01-09 03:03:06', '2022-01-09 03:03:06'),
(12, 6, 'product-sub-images/1601641718987.jpg', '2022-01-09 03:03:07', '2022-01-09 03:03:07'),
(13, 6, 'product-sub-images/8981641718987.jpg', '2022-01-09 03:03:07', '2022-01-09 03:03:07'),
(14, 6, 'product-sub-images/7261641718987.png', '2022-01-09 03:03:07', '2022-01-09 03:03:07'),
(15, 7, 'product-sub-images/5921641721576.jpg', '2022-01-09 03:46:16', '2022-01-09 03:46:16'),
(16, 7, 'product-sub-images/6841641721576.jpg', '2022-01-09 03:46:16', '2022-01-09 03:46:16'),
(17, 7, 'product-sub-images/4731641721576.jpg', '2022-01-09 03:46:16', '2022-01-09 03:46:16'),
(18, 7, 'product-sub-images/6251641721577.jpg', '2022-01-09 03:46:17', '2022-01-09 03:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Box', 'Box', 1, '2021-12-29 04:05:30', '2021-12-29 04:05:30'),
(2, 'Diamond', 'DBdbdsbgasbvdX{{$product->name}}', 1, '2022-01-09 03:45:14', '2022-01-09 03:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Habibur Rahman', 'habib@gmail.com', NULL, '$2y$10$ppflEpii65r2x80BATU0c.6qABxQuqy.fKqbPTeu25pZDWAUdArrS', NULL, NULL, NULL, NULL, NULL, '2021-12-26 05:24:10', '2021-12-26 05:24:10'),
(2, 'Amanda Reahana Gomes', 'amanda@gmail.com', NULL, '$2y$10$gXiXHeoflbAwAYzz4bKc1OAMcpsq04jXrFmlbGZ9UNB.86qVERImi', NULL, NULL, NULL, NULL, NULL, '2022-01-09 01:55:07', '2022-01-09 01:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
