-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2023 at 01:57 PM
-- Server version: 10.3.37-MariaDB-cll-lve
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
-- Database: `drutebmz_drutoshoes2`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address_name`, `address`, `zipcode`, `city`, `created_at`, `updated_at`) VALUES
(4, 4, 'agargaon', 'hridoy', 1768003197, 'fgdsf', '2022-12-23 16:03:04', '2022-12-23 16:03:04'),
(8, 3, 'Home', 'MD ABU SAYED', 1749247855, 'tongi', '2022-12-26 22:13:31', '2022-12-26 22:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `add_to_carts`
--

CREATE TABLE `add_to_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` double(10,2) DEFAULT NULL,
  `product_total_price` double(10,2) DEFAULT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `size` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_to_carts`
--

INSERT INTO `add_to_carts` (`id`, `user_id`, `product_id`, `product_quantity`, `product_price`, `product_total_price`, `color_code`, `size`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 5, 700.00, 3500.00, '\"#f8960d\"', '\"M\"', '2022-12-21 19:23:32', '2022-12-21 19:23:32'),
(13, 2, 2, 5, 700.00, 3500.00, '\"#f8960d\"', '\"M\"', '2022-12-22 18:01:29', '2022-12-22 18:01:29'),
(14, 2, 2, 5, 700.00, 3500.00, '\"#f8960d\"', 'M', '2022-12-22 18:01:49', '2022-12-22 18:01:49'),
(15, 2, 2, 5, 700.00, 3500.00, '#f8960d', 'M', '2022-12-22 18:02:13', '2022-12-22 18:02:13'),
(17, 2, 2, 5, 700.00, 3500.00, '#f8960d', 'M', '2022-12-22 18:05:47', '2022-12-22 18:05:47'),
(21, 2, 2, 5, 700.00, 3500.00, '\"#f8960d\"', '\"M\"', '2022-12-22 18:20:14', '2022-12-22 18:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reset_passes`
--

CREATE TABLE `admin_reset_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `others` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `sub_title`, `text`, `others`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL, NULL, 'Admin/image/banner/63a1d870b800f-jpg', 'active', '2022-12-20 20:44:48', '2022-12-20 20:44:48'),
(2, '2', NULL, NULL, NULL, 'Admin/image/banner/63a1d897447fe-png', 'active', '2022-12-20 20:45:27', '2022-12-20 20:45:27'),
(3, '3', NULL, NULL, NULL, 'Admin/image/banner/63a1d8cf37122-jpg', 'active', '2022-12-20 20:46:23', '2022-12-20 20:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_title` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_title`, `photo`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'assets/images/brand/-1671552628.png', NULL, 'active', '2022-12-20 21:10:28', '2022-12-20 21:10:28'),
(2, 'Ambassador', 'assets/images/brand/-1671552697.jpg', NULL, 'active', '2022-12-20 21:11:37', '2022-12-20 21:11:37'),
(3, 'Bata', 'assets/images/brand/-1671552794.jpg', NULL, 'active', '2022-12-20 21:13:14', '2022-12-20 21:13:14'),
(4, 'Bata 3D', 'assets/images/brand/-1671552899.png', NULL, 'active', '2022-12-20 21:14:59', '2022-12-20 21:14:59'),
(5, 'Hush Puppies', 'assets/images/brand/-1671552931.webp', NULL, 'active', '2022-12-20 21:15:31', '2022-12-20 21:15:31'),
(6, 'North Star', 'assets/images/brand/-1671552969.jpg', NULL, 'active', '2022-12-20 21:16:09', '2022-12-20 21:16:09'),
(7, 'Power', 'assets/images/brand/-1671553110.png', NULL, 'active', '2022-12-20 21:18:30', '2022-12-20 21:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
  `summary` mediumtext DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `photo`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s collections', 'assets/images/category/Rectangle 39361.png', NULL, 'active', '2022-12-20 20:54:17', '2022-12-20 20:54:17'),
(2, 'Women\'s collections', 'assets/images/category/Rectangle 39362.png', NULL, 'active', '2022-12-20 20:54:38', '2022-12-20 20:54:38'),
(3, 'Kid\'s collections', 'assets/images/category/Rectangle 39363.png', NULL, 'active', '2022-12-20 20:54:49', '2022-12-20 20:54:49'),
(4, 'Accessories', 'assets/images/category/Rectangle 39364.png', NULL, 'active', '2022-12-20 20:55:01', '2022-12-20 20:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#000000', 'active', '2022-12-20 21:27:49', NULL),
(2, 'White', '#ffffff', 'active', '2022-12-20 21:28:23', NULL),
(3, 'Red', '#ff0000', 'active', '2022-12-20 21:30:23', NULL),
(4, 'Green', '#008000', 'active', '2022-12-20 21:31:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color_per_sizes`
--

CREATE TABLE `color_per_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `color_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`color_code`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_per_sizes`
--

INSERT INTO `color_per_sizes` (`id`, `product_id`, `size_name`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 1, '6', '[\"#000000\",\"#ffffff\",\"#ff0000\"]', '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(2, 1, '7', '[\"#000000\",\"#ffffff\"]', '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(3, 2, '40', '[\"#000000\",\"#ff0000\"]', '2023-01-01 23:31:35', '2023-01-01 23:31:35'),
(4, 2, '41', '[\"#ff0000\"]', '2023-01-01 23:31:35', '2023-01-01 23:31:35'),
(5, 2, '42', '[\"#008000\"]', '2023-01-01 23:31:35', '2023-01-01 23:31:35'),
(6, 2, '44', '[\"#ff0000\"]', '2023-01-01 23:31:35', '2023-01-01 23:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `color_size_qties`
--

CREATE TABLE `color_size_qties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `size_color_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_size_qties`
--

INSERT INTO `color_size_qties` (`id`, `product_id`, `size_id`, `size_name`, `color_name`, `color_code`, `size_color_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '6', 'Black', '#000000', 4975, '2022-12-20 21:46:50', '2023-01-02 19:26:05'),
(2, 1, 5, '8', 'White', '#ffffff', 5003, '2022-12-20 21:46:50', '2022-12-22 20:05:28'),
(3, 2, 2, '5', 'White', '#ffffff', 7, '2022-12-20 21:49:09', '2022-12-29 21:05:51'),
(4, 2, 4, '7', 'Red', '#ff0000', 20, '2022-12-20 21:49:09', '2022-12-20 21:49:09'),
(5, 3, 1, '4', 'Black', '#000000', 0, '2022-12-21 21:53:00', '2022-12-29 18:15:24'),
(6, 3, 2, '5', 'White', '#ffffff', 499, '2022-12-21 21:53:00', '2022-12-22 20:05:28'),
(7, 4, 3, '6', 'White', '#ffffff', 49, '2022-12-21 21:56:14', '2022-12-22 18:45:21'),
(8, 4, 4, '7', 'Red', '#ff0000', 20, '2022-12-21 21:56:14', '2022-12-21 21:56:14'),
(9, 4, 5, '8', 'Green', '#008000', 10, '2022-12-21 21:56:14', '2022-12-21 21:56:14'),
(10, 5, 1, '4', 'Black', '#000000', 20, '2022-12-21 22:00:00', '2022-12-22 20:05:28'),
(11, 5, 2, '5', 'White', '#ffffff', 20, '2022-12-21 22:00:00', '2022-12-21 22:00:00'),
(12, 5, 3, '6', 'Red', '#ff0000', 50, '2022-12-21 22:00:00', '2022-12-21 22:00:00'),
(13, 6, 2, '5', 'Black', '#000000', 20, '2022-12-21 22:41:42', '2022-12-21 22:41:42'),
(14, 6, 3, '6', 'Green', '#008000', 50, '2022-12-21 22:41:42', '2022-12-21 22:41:42'),
(15, 7, 4, '7', 'Black', '#000000', 499, '2022-12-21 22:56:34', '2022-12-24 11:59:15'),
(16, 7, 5, '8', 'White', '#ffffff', 505, '2022-12-21 22:56:34', '2022-12-21 22:56:34'),
(17, 7, 6, '9', 'Red', '#ff0000', 500, '2022-12-21 22:56:34', '2022-12-21 22:56:34'),
(18, 7, 7, '10', 'Green', '#008000', 500, '2022-12-21 22:56:34', '2022-12-21 22:56:34'),
(19, 8, 1, '4', 'Black', '#000000', 284, '2022-12-21 22:58:25', '2022-12-22 20:05:28'),
(20, 8, 2, '5', 'White', '#ffffff', 100, '2022-12-21 22:58:25', '2022-12-21 22:58:25'),
(21, 1, 1, '6', 'Black', '#000000', 10, '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(22, 1, 1, '6', 'White', '#ffffff', 5, '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(23, 1, 1, '6', 'Red', '#ff0000', 15, '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(24, 1, 2, '7', 'Black', '#000000', 15, '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(25, 1, 2, '7', 'White', '#ffffff', 15, '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(26, 2, 5, '40', 'Black', '#000000', 20, '2023-01-01 23:31:35', '2023-01-01 23:31:35'),
(27, 2, 5, '40', 'Red', '#ff0000', 9, '2023-01-01 23:31:35', '2023-01-02 19:27:55'),
(28, 2, 6, '41', 'Red', '#ff0000', 5, '2023-01-01 23:31:35', '2023-01-01 23:31:35'),
(29, 2, 7, '42', 'Green', '#008000', 15, '2023-01-01 23:31:35', '2023-01-01 23:31:35'),
(30, 2, 9, '44', 'Red', '#ff0000', 45, '2023-01-01 23:31:35', '2023-01-01 23:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `method_code` int(11) NOT NULL DEFAULT 1,
  `trx` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_transport` varchar(255) NOT NULL,
  `mail_host` varchar(255) NOT NULL,
  `mail_port` varchar(255) NOT NULL,
  `mail_username` varchar(255) NOT NULL,
  `mail_password` varchar(255) NOT NULL,
  `mail_encryption` varchar(255) NOT NULL,
  `mail_from` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `mail_transport`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', 'b776338518c3f9', '47977d7d3e27ff', 'tls', 'help@drutoshop.com', '2022-10-22 02:41:11', '2022-10-22 03:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_products`
--

CREATE TABLE `favourite_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_products`
--

INSERT INTO `favourite_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2022-12-22 19:46:22', '2022-12-22 19:46:22'),
(2, 3, 1, '2022-12-22 19:47:14', '2022-12-22 19:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `flash_deal` int(11) NOT NULL,
  `end_date` date NOT NULL,
  `flash_price` double(8,2) NOT NULL,
  `flash_type` varchar(255) NOT NULL DEFAULT '%',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `screet_key` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `extra` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `images`, `client_id`, `screet_key`, `status`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 101, 'Paypal', 'Admin/image/gateway-image/1663588588-jpg', 'Paypal-Tvy+XM0v1eBARMklugZafbDNMCVoMGpY1j7OZY', 'Tvy+XM0v1eBARMklugZafbDNMCVoMGpY1j7OZY', 1, NULL, 'PayPal allows customers to establish an account on its platform, which is connected to a user\'s credit card or checking account. PayPal is a fast, simple, and secure way to make a payment online.', '2022-09-19 03:32:37', '2022-09-19 05:56:28'),
(2, 102, 'Stripe', 'Admin/image/gateway-image/1663588049-png', 'Stripe-Tvy+XM0v1eBARMklugZafbDNMCVoMGpY1j7OZY', 'Tvy+XM0v1eBARMklugZafbDNMCVoMGpY1j7OZY', 1, NULL, 'Stripe is a third-party payments processor built around a simple idea: make it easy for companies to do business online.', '2022-09-19 03:32:37', '2022-09-19 05:47:29'),
(3, 103, 'SSLcommerz', 'Admin/image/gateway-image/1663587098-png', 'SSLcpmmerz-vy+XM0v1eBARMklugZafbDNMCVoMGpY1j7OZY', 'Tvy+XM0v1eBARMklugZafbDNMCVoMGpY1j7OZY', 1, NULL, 'SSLcommerz is a third-party payments processor built around a simple idea: make it easy for companies to do business online.', '2022-09-19 03:32:37', '2022-09-19 05:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `genarel_settings`
--

CREATE TABLE `genarel_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `fax_no` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `fav_icon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genarel_settings`
--

INSERT INTO `genarel_settings` (`id`, `website_name`, `company_email`, `contact_no`, `fax_no`, `footer_text`, `address`, `fav_icon`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Drutoshop', 'info@drutoshop.com', '+88 01414141414', '85858585', 'Drutoshop l © DrutoSoft 2022', 'Dhaka 1230', 'Admin/image/genarel/632b139ac5c85-png', 'Admin/image/genarel/632e9190ec088.png', 'active', '2022-09-21 07:20:23', '2022-09-23 23:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_1` varchar(255) DEFAULT NULL,
  `title_2` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(32, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(33, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(34, '2016_06_01_000004_create_oauth_clients_table', 1),
(35, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2022_03_25_191247_create_homes_table', 1),
(43, '2022_06_24_115146_create_colors_table', 4),
(44, '2022_06_24_125902_create_sizes_table', 5),
(48, '2022_06_15_120625_create_categories_table', 7),
(49, '2022_06_16_101914_create_subcategories_table', 7),
(50, '2022_06_20_130347_create_brands_table', 7),
(51, '2022_07_27_091629_create_addresses_table', 7),
(52, '2022_08_03_054431_create_favourite_products_table', 7),
(53, '2022_08_03_073659_create_add_to_carts_table', 7),
(101, '2022_08_22_043426_create_color_size_qties_table', 8),
(102, '2022_08_22_043936_create_stock_products_table', 8),
(103, '2022_08_29_081300_create_temp_data_table', 8),
(104, '2022_08_31_052405_create_ratings_table', 9),
(107, '2022_08_31_085138_create_orders_table', 10),
(108, '2022_09_14_022728_create_notifications_table', 11),
(109, '2022_09_16_181354_create_admin_reset_passes_table', 12),
(113, '2022_09_19_071404_create_gateways_table', 13),
(114, '2022_09_20_073925_create_deposits_table', 14),
(115, '2022_09_20_101119_create_trxes_table', 14),
(116, '2022_09_20_130515_create_banners_table', 14),
(118, '2022_09_21_120542_create_genarel_settings_table', 15),
(119, '2022_09_21_102851_create_pushers_table', 16),
(120, '2022_10_22_072637_create_email_settings_table', 16),
(122, '2022_10_26_102553_create_flash_deals_table', 17),
(124, '2022_06_27_063912_create_products_table', 18),
(125, '2014_10_12_000000_create_users_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00bd796f1eec2bfe9bd75d9bcba8654f85574f8b835b38bef50ae30d4b3d1656e0d39538cc9074d3', 5, 11, 'authToken', '[]', 0, '2023-01-01 23:08:54', '2023-01-01 23:08:54', '2024-01-01 18:08:54'),
('0bf049497ebf12830ee1622a6449a290b6d02f8062d4d1a991840311110cc59284cba79ee6dec0ae', 4, 11, 'authToken', '[]', 0, '2023-01-21 18:16:05', '2023-01-21 18:16:05', '2024-01-21 13:16:05'),
('0c2b617a12324728b4e1817946b47f5d3d7ba16f33a4c078b27903d82667e0a2e4ea4f53da42dc33', 3, 11, 'authToken', '[]', 0, '2022-12-20 16:58:39', '2022-12-20 16:58:39', '2023-12-20 11:58:39'),
('0ea21a1dd0d51d04563a4387f652bbb5d46ab287bc8e60877ea0dd21af4062a40326d5300294bcbb', 4, 11, 'authToken', '[]', 0, '2022-12-23 09:57:20', '2022-12-23 09:57:20', '2023-12-23 04:57:20'),
('13b8fe652e3c7aebeabc8aa0349683fd29c2fc63665036c2990cf7756bea2ce740b1c97225921a73', 6, 7, 'authToken', '[]', 0, '2022-09-16 02:23:07', '2022-09-16 02:23:07', '2023-09-16 08:23:07'),
('1510d7ce0bd5f2aac51a8a915ce4db2231132ab50140f1fd056716f43494e9c849624093e0dab554', 3, 11, 'authToken', '[]', 0, '2022-12-20 22:08:43', '2022-12-20 22:08:43', '2023-12-20 17:08:43'),
('15d4882a0ec0ffb2f048ce973e78186f718bf0b5ad1e29041dba956e070568afb20fa37494efe1d3', 2, 11, 'authToken', '[]', 0, '2022-12-15 07:45:55', '2022-12-15 07:45:55', '2023-12-15 13:45:55'),
('1ab1a94aa3e539189f740220c4ad1179c09fbf24b083e3b3166e6104e916bbd921c478a8bbed2738', 3, 11, 'authToken', '[]', 0, '2022-12-22 21:24:23', '2022-12-22 21:24:23', '2023-12-22 16:24:23'),
('1c043634338988039e8da3d92ef8ee82e62aa9c7e4f55857206b800c525a958d171a7bec2bd7e6ee', 3, 11, 'authToken', '[]', 0, '2023-01-09 21:59:18', '2023-01-09 21:59:18', '2024-01-09 16:59:18'),
('25958e626039a975d2548358cddc3b85a857a8bab677a2fc7decfe7879548e907d4ba07c89ebddf3', 9, 11, 'authToken', '[]', 0, '2022-12-14 00:04:59', '2022-12-14 00:04:59', '2023-12-14 06:04:59'),
('437d8e0aed16cbaf17a258c30f5dd7db26011c0d006bddcc817cb41bf5bf75f2362580432cea22c4', 4, 1, 'authToken', '[]', 0, '2022-08-31 00:58:14', '2022-08-31 00:58:14', '2023-08-31 06:58:14'),
('440485c33a6929ed757676a87fb597751fabe0adb562603d4d645cb774ee9b8a68745c11839a1ed8', 6, 11, 'authToken', '[]', 0, '2023-01-21 20:03:05', '2023-01-21 20:03:05', '2024-01-21 15:03:05'),
('5f33ebd3ad2d47cd910eb2b6c007babe5f9862c25847f1f8c36658e8153932cd5f462985171942b4', 2, 11, 'authToken', '[]', 0, '2022-12-15 03:19:19', '2022-12-15 03:19:19', '2023-12-15 09:19:19'),
('628ed5efb889a722e925b9a0d1be26d9cc43bfe414a1116f1f1ca1f21647e53a783b5c6eee8b5e14', 3, 11, 'authToken', '[]', 0, '2023-01-31 20:03:14', '2023-01-31 20:03:14', '2024-01-31 15:03:14'),
('67aeb80384031153dbe9fcd62f7fe2ec97e511a3fae99e94d3576790a4b0a4ae55bd26f2bdca1b5e', 3, 11, 'authToken', '[]', 0, '2022-12-24 17:21:17', '2022-12-24 17:21:17', '2023-12-24 12:21:17'),
('70ebe8010e4814c521893423aa43c845a0667a05af8f90be0d15cfacc7051eb30c372afa35aa5ced', 3, 11, 'authToken', '[]', 0, '2023-01-31 18:52:27', '2023-01-31 18:52:27', '2024-01-31 13:52:27'),
('7bc76be95bdf408d6c22c51e1e84f1672bb0d18e5c4328c91b38620983c68b7876fdb1bf32c7d77f', 6, 11, 'authToken', '[]', 0, '2022-10-06 07:57:31', '2022-10-06 07:57:31', '2023-10-06 13:57:31'),
('8386c21107a95b110266cd837c6e48e54c84ccb37d850376dc5984a21fa9f97b2477528d514a9b2e', 3, 11, 'authToken', '[]', 0, '2022-12-24 21:58:45', '2022-12-24 21:58:45', '2023-12-24 16:58:45'),
('86278dd5962088cb975cc8c4287713ce5d1d8c6692e2adf06fb0c4b109f2fdbe755732e0dcb7ef53', 4, 11, 'authToken', '[]', 0, '2022-12-23 10:00:20', '2022-12-23 10:00:20', '2023-12-23 05:00:20'),
('8fbf33374b5e1dfbd0ce52d9c083425292fccf47c9c35437815253a519152d4610d91c300f4f6e5d', 3, 11, 'authToken', '[]', 0, '2022-12-22 21:25:20', '2022-12-22 21:25:20', '2023-12-22 16:25:20'),
('9b443e0f8124431c78ca2fb75df17fed10b98ef8d661c3057cc234708b07ac7bc911e7e908662f74', 6, 7, 'authToken', '[]', 0, '2022-09-16 02:35:58', '2022-09-16 02:35:58', '2023-09-16 08:35:58'),
('a58a5f6e3381e5d3d1ede89b26a2718d5d57fc677c4e263e58907927779392e2641fa4c5faec4a67', 2, 11, 'authToken', '[]', 0, '2022-12-15 08:36:26', '2022-12-15 08:36:26', '2023-12-15 14:36:26'),
('a733d1656f4d0ff3bb84ee89515da4a4a79fa76ec851b827679b43c6d6d2882597275930849d0cab', 4, 11, 'authToken', '[]', 0, '2022-12-23 09:55:58', '2022-12-23 09:55:58', '2023-12-23 04:55:58'),
('b22236adfb734108ce5bf65bb7388adfaa2f0f14b86d196f954ee9aa118f1f28d3b5894e4b2f3421', 3, 11, 'authToken', '[]', 0, '2023-01-01 21:30:15', '2023-01-01 21:30:15', '2024-01-01 16:30:15'),
('b289b4d2744119e3489d28975137e4972a3f3f55b8def4e75b3626b9814297ef26eaa369aa22cd19', 3, 11, 'authToken', '[]', 0, '2022-12-29 21:09:28', '2022-12-29 21:09:28', '2023-12-29 16:09:28'),
('b8ae0402546a58bf78574b35823c12d162aa7f8a7a374b6fd5f6f288448dda458bab16a3e9f3d5c9', 6, 11, 'authToken', '[]', 0, '2023-01-12 22:15:43', '2023-01-12 22:15:43', '2024-01-12 17:15:43'),
('bfab6c53ee121a3f0d63a036840cc04b10c06e0d6389fe8c395965470bd28a97d04eaad71874127a', 9, 11, 'authToken', '[]', 0, '2022-10-22 00:01:35', '2022-10-22 00:01:35', '2023-10-22 06:01:35'),
('ca3f16f606546ff759de37dcfc50176abcd9ff2f1591ed93598e0f3abd2341335881cb992ee0924a', 6, 11, 'authToken', '[]', 0, '2022-10-06 21:33:15', '2022-10-06 21:33:15', '2023-10-07 03:33:15'),
('cb7ba2e3618cdb7d20326e33053ca724be5547c32c77191d2f91c25f0d4a8c9ecdf48d44093b4c64', 4, 11, 'authToken', '[]', 0, '2022-12-22 21:30:59', '2022-12-22 21:30:59', '2023-12-22 16:30:59'),
('cba4e09b2f18d3b2b4b69da846d88f786bd2e5032303feef6d487758899166562466de631f89ef97', 4, 11, 'authToken', '[]', 0, '2022-12-23 09:44:26', '2022-12-23 09:44:26', '2023-12-23 04:44:26'),
('cc568342af3f8222ce562630632f6d22a5a0b4ecfb182a5811e70e57ff0c5b2e3530760872079dea', 3, 11, 'authToken', '[]', 0, '2022-12-22 18:10:55', '2022-12-22 18:10:55', '2023-12-22 13:10:55'),
('ce1cce48485438f1f7c3da134deaba833ddc0fb3716405fe451445e46e30c52f9f7132c30463d134', 3, 11, 'authToken', '[]', 0, '2022-12-20 16:58:49', '2022-12-20 16:58:49', '2023-12-20 11:58:49'),
('cf83e533e650af2b97ed2ae8a6e6863b8fe0c23dd767e6ec2c11e08e9fa2b1a541fd9c6462c8e233', 3, 11, 'authToken', '[]', 0, '2022-12-21 18:38:00', '2022-12-21 18:38:00', '2023-12-21 13:38:00'),
('cfe4953d9bc27d8c32340bed0c0ba647abec4d28cb6c2f7204edee1e68af72bad99c2fc6f533a19e', 4, 11, 'authToken', '[]', 0, '2022-12-22 07:43:15', '2022-12-22 07:43:15', '2023-12-22 02:43:15'),
('d3958287d2c4e5c1bd01ef8b85eaaa6d7243251e4c33afaa052a8a804278c193ed608b95d187162a', 4, 1, 'authToken', '[]', 0, '2022-08-31 02:48:33', '2022-08-31 02:48:33', '2023-08-31 08:48:33'),
('e350bfcda5038d71b21832208d396bdea3248a6e8fb2a2e139eb4eca6d1e00b420b44f7e46e7ccb8', 4, 11, 'authToken', '[]', 0, '2022-12-23 09:53:52', '2022-12-23 09:53:52', '2023-12-23 04:53:52'),
('e649b996c91e506574da610c66d52c311c557a20a3e3951394ebb6bdbe84487e4bab6f1172190f81', 4, 11, 'authToken', '[]', 0, '2022-12-22 07:42:52', '2022-12-22 07:42:52', '2023-12-22 02:42:52'),
('ef773d611093f3563158e5211576d184034aed8a674184687228978692eda77300c0fef1e5387024', 9, 11, 'authToken', '[]', 0, '2022-10-21 23:59:16', '2022-10-21 23:59:16', '2023-10-22 05:59:16'),
('f33a644f131fc057aa28181847ca807ecfe94c1448fbd6bc0f8b3c00a7c6bce24af8dd7a8835ce78', 4, 11, 'authToken', '[]', 0, '2022-12-23 09:41:07', '2022-12-23 09:41:07', '2023-12-23 04:41:07'),
('fc0a1a93700f674b6be076df0d2bef22f382414ecca307bb8c38a6d27eed3adfdc4ccaae18e608f9', 4, 11, 'authToken', '[]', 0, '2022-12-23 09:50:06', '2022-12-23 09:50:06', '2023-12-23 04:50:06'),
('fe35b341a123cf2d6b7dbd51eb98e8870c8a7e99c1dcd2067e355a62c7081247d44f10ceefbe1e59', 4, 11, 'authToken', '[]', 0, '2023-01-21 18:20:27', '2023-01-21 18:20:27', '2024-01-21 13:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'dOeB7YFmXJGSAL1KzGYRQqVknh5gSIYizpb58sH5', NULL, 'http://localhost', 1, 0, 0, '2022-08-30 23:49:33', '2022-08-30 23:49:33'),
(2, NULL, 'Laravel Password Grant Client', '8XfreCqY2YzOmTdnK7ZbjVVUNPLsnFN7SSkkI5Uz', 'users', 'http://localhost', 0, 1, 0, '2022-08-30 23:49:34', '2022-08-30 23:49:34'),
(3, NULL, 'Laravel Personal Access Client', 'ac2HuABOK8PFitIYPbKY7UZzIwejFlx7QVB7TLA5', NULL, 'http://localhost', 1, 0, 0, '2022-09-13 20:42:45', '2022-09-13 20:42:45'),
(4, NULL, 'Laravel Password Grant Client', 'g5QmXEmCJDsoK9PKnxrvaCF5siPMTBh6YV3BLIbF', 'users', 'http://localhost', 0, 1, 0, '2022-09-13 20:42:46', '2022-09-13 20:42:46'),
(5, NULL, 'Laravel Personal Access Client', '5SZkls0PhpdPGvc0EyPkf1J7yj5OgnKGmXrAMKGn', NULL, 'http://localhost', 1, 0, 0, '2022-09-13 20:42:56', '2022-09-13 20:42:56'),
(6, NULL, 'Laravel Password Grant Client', 'kOSOfO54aq2uRaM3YPyVV4Oyy2Rwj3f8tJ5vE0U7', 'users', 'http://localhost', 0, 1, 0, '2022-09-13 20:42:56', '2022-09-13 20:42:56'),
(7, NULL, 'Laravel Personal Access Client', 'mm7dvm1bPcjxyzuoK32OS5wlpo7TsjgJKmWyRsoU', NULL, 'http://localhost', 1, 0, 0, '2022-09-16 02:01:31', '2022-09-16 02:01:31'),
(8, NULL, 'Laravel Password Grant Client', '17vchKuASxtLTRo11gM3fmhQ8XcNsx8KwSF4MqCT', 'users', 'http://localhost', 0, 1, 0, '2022-09-16 02:01:31', '2022-09-16 02:01:31'),
(9, NULL, 'Laravel Personal Access Client', 'eV7S4RDfBqT2ERvmIeO5o3HIipEHIwSaHa5Fbs3d', NULL, 'http://localhost', 1, 0, 0, '2022-09-16 11:41:44', '2022-09-16 11:41:44'),
(10, NULL, 'Laravel Password Grant Client', 'xRjynjrRqdAKXtjqX1PYLWLs9BaCFNJm7KxbrXLu', 'users', 'http://localhost', 0, 1, 0, '2022-09-16 11:41:45', '2022-09-16 11:41:45'),
(11, NULL, 'Laravel Personal Access Client', 'Cfvn9zyqYnnCV4Pd2Qdn7bPQUt0moPI0YPbWnYy0', NULL, 'http://localhost', 1, 0, 0, '2022-09-21 04:25:57', '2022-09-21 04:25:57'),
(12, NULL, 'Laravel Password Grant Client', 'tQJAINvNlfmX5CYCZ5NxW96JGI4L6nvylytKRlnX', 'users', 'http://localhost', 0, 1, 0, '2022-09-21 04:25:57', '2022-09-21 04:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-30 23:49:34', '2022-08-30 23:49:34'),
(2, 3, '2022-09-13 20:42:46', '2022-09-13 20:42:46'),
(3, 5, '2022-09-13 20:42:56', '2022-09-13 20:42:56'),
(4, 7, '2022-09-16 02:01:31', '2022-09-16 02:01:31'),
(5, 9, '2022-09-16 11:41:45', '2022-09-16 11:41:45'),
(6, 11, '2022-09-21 04:25:57', '2022-09-21 04:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `total_price` double(10,2) NOT NULL DEFAULT 0.00,
  `payment_type` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `isPaid` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `total_price`, `payment_type`, `phone_no`, `address`, `city`, `isPaid`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'ord-76573', 0.00, 'COD', NULL, 'Gulsan, Baridhara', 'Dhaka', 0, 2, '2023-01-09 11:02:44', '2023-01-10 12:01:10'),
(2, 6, 'ord-54317', 0.00, 'COD', NULL, 'Gulsan, Baridhara', 'Dhaka', 0, 0, '2023-01-12 22:28:26', '2023-01-12 22:28:26'),
(3, 4, 'ord-43464', 0.00, NULL, NULL, 'MOlla bar', 'Mokter bari', 0, 0, '2023-01-21 18:24:54', '2023-01-21 18:24:54'),
(4, 4, 'ord-9084', 0.00, NULL, NULL, 'MOlla bar', 'Mokter bari', 0, 0, '2023-01-21 19:45:28', '2023-01-21 19:45:28'),
(5, 3, 'ord-40993', 0.00, NULL, NULL, 'MOlla bar', 'Mokter bari', 0, 0, '2023-01-31 18:59:26', '2023-01-31 18:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `size` varchar(6) DEFAULT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `total_price`, `size`, `color_code`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'ord-76573', 8, 1250.00, 'M', '#fafafa', 5, '2023-01-09 11:02:44', '2023-01-09 11:02:44'),
(2, 'ord-76573', 6, 1250.00, 'M', '#fafafa', 5, '2023-01-09 11:02:45', '2023-01-09 11:02:45'),
(3, 'ord-54317', 1, 1250.00, '6', '#000000', 5, '2023-01-12 22:28:26', '2023-01-12 22:28:26'),
(4, 'ord-54317', 2, 1250.00, '40', '#000000', 5, '2023-01-12 22:28:26', '2023-01-12 22:28:26'),
(5, 'ord-43464', 1, 300.00, '7', '#000000', 1, '2023-01-21 18:24:54', '2023-01-21 18:24:54'),
(6, 'ord-9084', 1, 300.00, '7', '#000000', 1, '2023-01-21 19:45:28', '2023-01-21 19:45:28'),
(7, 'ord-40993', 1, 1000.00, 's', '#fafafa', 10, '2023-01-31 18:59:26', '2023-01-31 18:59:26'),
(8, 'ord-40993', 1, 900.00, '7', '#000000', 3, '2023-01-31 18:59:26', '2023-01-31 18:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `discount_rate` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount_price` double(10,2) NOT NULL,
  `discription` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `feature_product` tinyint(4) NOT NULL DEFAULT 0,
  `trand_product` tinyint(4) NOT NULL DEFAULT 0,
  `exclusive_product` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `product_name`, `brand_id`, `category_id`, `subcategory_id`, `price`, `discount_rate`, `quantity`, `discount_price`, `discription`, `image`, `images`, `slug`, `sku`, `credit`, `total_price`, `feature_product`, `trand_product`, `exclusive_product`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bata Shoes', 3, 2, 5, 500.00, 40.00, 60, 300.00, 'Bata Shoes', 'assets/images/product/1672596096-.jpg', '[\"assets\\/images\\/product\\/1672596096-.jpg\",\"assets\\/images\\/product\\/1672596096-1.jpg\",\"assets\\/images\\/product\\/1672596096-2.jpg\"]', 'bata-shoes', 'PRO-BD-17096', '%', 18000.00, 1, 1, 0, 'active', '2023-01-01 23:01:36', '2023-01-22 09:36:57'),
(2, 1, 'Cody Solomon', 3, 3, 8, 788.00, 30.00, 95, 551.00, 'Harum qui est totam', 'assets/images/product/1672597895-.jpg', '[\"assets\\/images\\/product\\/1672597895-.jpg\",\"assets\\/images\\/product\\/1672597895-1.jpg\"]', 'cody-solomon', 'PRO-BD-85516', '%', 52345.00, 1, 0, 0, 'active', '2023-01-01 23:31:35', '2023-01-22 09:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `pushers`
--

CREATE TABLE `pushers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text DEFAULT NULL,
  `app_id` text DEFAULT NULL,
  `secret` text DEFAULT NULL,
  `key` text DEFAULT NULL,
  `cluster` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 5, '2022-12-23 16:34:59', '2022-12-23 16:34:59'),
(2, 2, 3, 5, '2023-01-02 18:14:19', '2023-01-02 18:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `status`, `created_at`, `updated_at`) VALUES
(1, '6', 'active', '2022-12-20 21:21:17', NULL),
(2, '7', 'active', '2022-12-20 21:24:44', NULL),
(3, '8', 'active', '2022-12-20 21:26:51', NULL),
(4, '9', 'active', '2022-12-20 21:26:59', NULL),
(5, '40', 'active', '2022-12-20 21:27:07', NULL),
(6, '41', 'active', '2022-12-20 21:27:14', NULL),
(7, '42', 'active', '2022-12-20 21:27:23', NULL),
(8, '43', 'active', '2023-01-01 22:39:52', NULL),
(9, '44', 'active', '2023-01-01 22:40:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_products`
--

CREATE TABLE `stock_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `total_qty` int(11) NOT NULL,
  `last_qty` int(11) NOT NULL,
  `sale_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_products`
--

INSERT INTO `stock_products` (`id`, `product_id`, `total_qty`, `last_qty`, `sale_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 989, 933, 56, '2022-12-20 21:46:50', '2023-01-31 18:59:26'),
(2, 2, 30, 16, 14, '2022-12-20 21:49:09', '2023-01-12 22:28:26'),
(3, 3, 727, 698, 29, '2022-12-21 21:53:00', '2022-12-29 18:15:24'),
(4, 4, 80, 79, 1, '2022-12-21 21:56:14', '2022-12-22 18:45:21'),
(5, 5, 91, 90, 1, '2022-12-21 22:00:00', '2022-12-22 20:05:28'),
(6, 6, 70, 70, 0, '2022-12-21 22:41:42', '2022-12-21 22:41:42'),
(7, 7, 50, 49, 1, '2022-12-21 22:56:34', '2022-12-24 11:59:15'),
(8, 8, 390, 384, 6, '2022-12-21 22:58:25', '2022-12-22 20:05:28'),
(9, 1, 60, 60, 0, '2023-01-01 23:01:36', '2023-01-01 23:01:36'),
(10, 2, 95, 95, 0, '2023-01-01 23:31:35', '2023-01-01 23:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `title`, `photo`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Formal Shoes', 'assets/images/category/Formal Shoes-1671641416.webp', NULL, 'active', '2022-12-20 20:56:13', '2022-12-21 21:50:16'),
(2, 4, 'Casual Shoes', 'assets/images/category/Casual Shoes-1671641387.webp', NULL, 'active', '2022-12-20 20:56:36', '2022-12-21 21:49:47'),
(3, 1, 'Mens Sandal', 'assets/images/category/Mens Sandal-1671551854.png', NULL, 'active', '2022-12-20 20:57:34', '2022-12-20 20:57:34'),
(4, 2, 'Ladies Sports Shoes', 'assets/images/category/Ladies Sports Shoes-1671551993.webp', NULL, 'active', '2022-12-20 20:59:53', '2022-12-20 20:59:53'),
(5, 2, 'Ladies Heel', 'assets/images/category/Ladies Heel-1671552024.webp', NULL, 'active', '2022-12-20 21:00:24', '2022-12-20 21:00:24'),
(6, 2, 'Ladies Sandals', 'assets/images/category/Ladies Sandals-1671552044.webp', NULL, 'active', '2022-12-20 21:00:44', '2022-12-20 21:00:44'),
(7, 2, 'Ladies Casual & Formal Closed Shoes', 'assets/images/category/Ladies Casual & Formal Closed Shoes-1671552077.webp', NULL, 'active', '2022-12-20 21:01:17', '2022-12-20 21:01:17'),
(8, 3, 'Boys Sandals', 'assets/images/category/Boys Sandals-1671552148.webp', NULL, 'active', '2022-12-20 21:02:28', '2022-12-20 21:02:28'),
(9, 3, 'Boys Sports', 'assets/images/category/Boys Sports-1671552242.webp', NULL, 'active', '2022-12-20 21:04:02', '2022-12-20 21:04:02'),
(10, 3, 'Kids\' Casuals (Boys)', 'assets/images/category/Kids\' Casuals (Boys)-1671552290.webp', NULL, 'active', '2022-12-20 21:04:50', '2022-12-20 21:04:50'),
(11, 3, 'Kids\' Casuals (Girls)', 'assets/images/category/Kids\' Casuals (Girls)-1671552325.webp', NULL, 'active', '2022-12-20 21:05:25', '2022-12-20 21:05:25'),
(12, 1, 'Formal Shoes', 'assets/images/category/Formal Shoes-1671643959.webp', NULL, 'active', '2022-12-21 22:32:39', '2022-12-21 22:32:39'),
(13, 1, 'Casual Shoes', 'assets/images/category/Casual Shoes-1671643994.webp', NULL, 'active', '2022-12-21 22:33:14', '2022-12-21 22:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `temp_data`
--

CREATE TABLE `temp_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trxes`
--

CREATE TABLE `trxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `trx_type` varchar(2) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `trx` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `isBan` tinyint(4) NOT NULL DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fname`, `lname`, `email`, `mobile_no`, `email_verified_at`, `dob`, `gender`, `address`, `password`, `image`, `role`, `isBan`, `is_delete`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$0huw37OTmYJiss69lJW8tel9hPMu9uh.tCa08LVschcJMpceslVpu', NULL, 1, 1, 1, 1, 'eSxoclSXniXav08jrZS69C5bWI3B2e0DFRfUkfAXr9l8f7yhgo5IDLSdGAiB', '2022-12-15 08:35:04', '2022-12-15 08:35:04'),
(2, 'hasan610', 'Rabbi', 'Hasan', 'user@gmail.com', '01710528972', NULL, NULL, 'Male', NULL, '$2y$10$wmYtrLL3zeiRqsLYzSBCtupDtVNJL3bx8k/AGTXHjgrGSQYZSrQsS', NULL, 0, 1, 1, 1, NULL, '2022-12-15 08:36:26', '2022-12-15 09:07:36'),
(3, 'Abu Sayed', 'Abu Sayed', 'Abu Sayed', 'sayedvai08@gmail.com', '01749247855', NULL, '2022-12-13', NULL, NULL, '$2y$10$ijQXHWMXARoDlNlyb62TCuOHiuthmA9.nJCZ4NOp/.1bfK.BTR2X2', NULL, 0, 1, 1, 1, NULL, '2022-12-20 16:58:39', '2022-12-24 17:20:48'),
(4, 'testuser', 'testuser', 'testuser', 'testuser@gmail.com', '01768003198', NULL, '2022-12-23', NULL, NULL, '$2y$10$1sNVDnUluuUYLCsmCAOhA./IdCFMmrG1Ji8Yy9bazTpD.pOidI0gC', 'assets/images/profile/63a544c1e6cb9kpr_fi_grey_product_image.jpg', 0, 1, 1, 1, NULL, '2022-12-22 07:42:52', '2022-12-23 11:03:46'),
(5, 'Sakib', NULL, NULL, 'sakib5@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$5x8RItsm5paw5S4ohmQnLu4zZvzq.WnQQQ7vjBeLB20CYh0gZVfq2', NULL, 0, 1, 1, 1, NULL, '2023-01-01 23:08:54', '2023-01-01 23:08:54'),
(6, 'Sadman Sadik', NULL, NULL, 'sadman@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$b9Jz/OmxVTgr6Y4bNzcLrO1AYol.t4worEPjI5gPqRkQESxrS0eyy', NULL, 0, 1, 1, 1, NULL, '2023-01-12 22:15:43', '2023-01-12 22:15:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `add_to_carts`
--
ALTER TABLE `add_to_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_reset_passes`
--
ALTER TABLE `admin_reset_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_per_sizes`
--
ALTER TABLE `color_per_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_size_qties`
--
ALTER TABLE `color_size_qties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_size_qties_product_id_foreign` (`product_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourite_products`
--
ALTER TABLE `favourite_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genarel_settings`
--
ALTER TABLE `genarel_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
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
-- Indexes for table `pushers`
--
ALTER TABLE `pushers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_product_id_foreign` (`product_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_products`
--
ALTER TABLE `stock_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_data`
--
ALTER TABLE `temp_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trxes`
--
ALTER TABLE `trxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_no_unique` (`mobile_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `add_to_carts`
--
ALTER TABLE `add_to_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `admin_reset_passes`
--
ALTER TABLE `admin_reset_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `color_per_sizes`
--
ALTER TABLE `color_per_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `color_size_qties`
--
ALTER TABLE `color_size_qties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_products`
--
ALTER TABLE `favourite_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genarel_settings`
--
ALTER TABLE `genarel_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pushers`
--
ALTER TABLE `pushers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stock_products`
--
ALTER TABLE `stock_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `temp_data`
--
ALTER TABLE `temp_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trxes`
--
ALTER TABLE `trxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
