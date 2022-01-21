-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 12:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
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
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('agsh8QefswR4fFR2uhaGX2Phr38hoRVAbYOBnzvr', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4818.2 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTFlWUXFsNXkxR0o3cENTV3NvSDJ3eEg5VGFMUm9RdFM3Vlp3MVpzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly9sb2NhbGhvc3QvUmVhaGFuYS1QSFAvTGFyYXZlbC1DbGFzcy8xc2lyL2Vjb20vcHVibGljL2NoZWNrb3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYmY1NWU3MTFkZDM4YzI4NzQ2MmIyZTcxNTI2YjdiMTYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMDp7czo1OiJyb3dJZCI7czozMjoiYmY1NWU3MTFkZDM4YzI4NzQ2MmIyZTcxNTI2YjdiMTYiO3M6MjoiaWQiO2k6NjtzOjM6InF0eSI7czoxOiIyIjtzOjQ6Im5hbWUiO3M6MTE6IkZhaGFkIElzbGFtIjtzOjU6InByaWNlIjtkOjEwMjM7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjU6ImltYWdlIjtzOjI5OiJwcm9kdWN0LWltYWdlcy8xNjQxNzE4OTg2LmpwZyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==', 1641985126),
('CUjjSP7zeEkX3nJZx4gZVWz1ipThr2zF9HpiTnqc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.9 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTd5MWgwUDh6cVZNSXF4VjU0S2dSaDRZaU1xcUc2bDU5aWJxNlVjdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly9sb2NhbGhvc3QvUmVhaGFuYS1QSFAvTGFyYXZlbC1DbGFzcy8xc2lyL2Vjb20vcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1641894384),
('iNV6x4x9q64mzX5hMwfQfP2BC07t1Fkqf6p40QJX', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.9 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZ2oyZnJJR3lWbTk5SjRscEIwWG5IRXV2VHVFVkR1ZU9UNkJyU05BRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly9sb2NhbGhvc3QvUmVhaGFuYS1QSFAvTGFyYXZlbC1DbGFzcy8xc2lyL2Vjb20vcHVibGljL2NoZWNrb3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGdYaVhIZW9mbGJBd0FZeno0YktjMU9BTWNwc3EwNGpYckZtbGJHWjlVTkIuODZxVkVSSW1pIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRnWGlYSGVvZmxiQXdBWXp6NGJLYzFPQU1jcHNxMDRqWHJGbWxiR1o5VU5CLjg2cVZFUkltaSI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czozMjoiZWJlMDAxOWFmZGFlZjljMzkwN2MyMTkxYzAwNmExNmMiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMDp7czo1OiJyb3dJZCI7czozMjoiZWJlMDAxOWFmZGFlZjljMzkwN2MyMTkxYzAwNmExNmMiO3M6MjoiaWQiO2k6NztzOjM6InF0eSI7czoxOiI3IjtzOjQ6Im5hbWUiO3M6ODoiTmVja2xhc2giO3M6NToicHJpY2UiO2Q6MTA3Mjg7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjU6ImltYWdlIjtzOjI5OiJwcm9kdWN0LWltYWdlcy8xNjQxNzIxNTc2LmpwZyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO31zOjMyOiJiZjU1ZTcxMWRkMzhjMjg3NDYyYjJlNzE1MjZiN2IxNiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjEwOntzOjU6InJvd0lkIjtzOjMyOiJiZjU1ZTcxMWRkMzhjMjg3NDYyYjJlNzE1MjZiN2IxNiI7czoyOiJpZCI7aTo2O3M6MzoicXR5IjtzOjE6IjMiO3M6NDoibmFtZSI7czoxMToiRmFoYWQgSXNsYW0iO3M6NToicHJpY2UiO2Q6MTAyMztzOjY6IndlaWdodCI7ZDowO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6NToiaW1hZ2UiO3M6Mjk6InByb2R1Y3QtaW1hZ2VzLzE2NDE3MTg5ODYuanBnIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7fXM6MzI6ImMwMmZiNjNlZmU5YTc1OTk5NGU4YjFkZDI5ZWU0MmRkIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTA6e3M6NToicm93SWQiO3M6MzI6ImMwMmZiNjNlZmU5YTc1OTk5NGU4YjFkZDI5ZWU0MmRkIjtzOjI6ImlkIjtpOjU7czozOiJxdHkiO3M6MToiMiI7czo0OiJuYW1lIjtzOjY6Ik1vYmlsZSI7czo1OiJwcmljZSI7ZDoyMTAwMDtzOjY6IndlaWdodCI7ZDowO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6NToiaW1hZ2UiO3M6Mjk6InByb2R1Y3QtaW1hZ2VzLzE2NDE3MTg3MTcuanBnIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1641814402),
('XBJOiOhU8dr4201Htb1uTcsWgUQ9qWHqD4TF14CC', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4818.2 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiUDdlWHFJZTJycUVmczFwQ1AzM3J6ZEtIcWJRWnZmMDlhREljNXBYZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly9sb2NhbGhvc3QvUmVhaGFuYS1QSFAvTGFyYXZlbC1DbGFzcy8xc2lyL2Vjb20vcHVibGljL2NoZWNrb3V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHBwZmxFcGlpNjVyMng4MEJBVFUwYy42cUFCeFF1cXkuZktxYlBUZXUyNXBaRFdBVWRBcnJTIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRwcGZsRXBpaTY1cjJ4ODBCQVRVMGMuNnFBQnhRdXF5LmZLcWJQVGV1MjVwWkRXQVVkQXJyUyI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiYmY1NWU3MTFkZDM4YzI4NzQ2MmIyZTcxNTI2YjdiMTYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMDp7czo1OiJyb3dJZCI7czozMjoiYmY1NWU3MTFkZDM4YzI4NzQ2MmIyZTcxNTI2YjdiMTYiO3M6MjoiaWQiO2k6NjtzOjM6InF0eSI7czoxOiIxIjtzOjQ6Im5hbWUiO3M6MTE6IkZhaGFkIElzbGFtIjtzOjU6InByaWNlIjtkOjEwMjM7czo2OiJ3ZWlnaHQiO2Q6MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjU6ImltYWdlIjtzOjI5OiJwcm9kdWN0LWltYWdlcy8xNjQxNzE4OTg2LmpwZyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==', 1641977436);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
