-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2021 lúc 02:15 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `furniture_data`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_rating` int(11) NOT NULL,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` bigint(20) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_name`) VALUES
(0, 'Không phân loại'),
(1, 'Ashley');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2021_04_24_155218_create_products_table', 1),
(11, '2021_04_24_155658_create_taxonomies_table', 1),
(12, '2021_04_24_160229_create_taxonomy_relationships_table', 1),
(13, '2021_04_24_160356_create_orders_table', 1),
(14, '2021_04_24_160908_create_comments_table', 1),
(15, '2021_04_26_020820_create_manufacturers_table', 1),
(16, '2021_04_26_021344_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `detail_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_available` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_image`, `product_description`, `product_available`, `manufacturer_id`, `created_at`, `updated_at`) VALUES
(1, 'Altari Sofa', 69999, 'img_1000.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 6, 1, NULL, NULL),
(2, 'Giường Ngủ Gỗ Tràm MOHO MALAGA 302', 3490000, 'img_5969.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 20:33:42', '2021-04-26 20:33:42'),
(3, 'Bộ Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601', 5990000, 'img_5970.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 20:35:21', '2021-04-26 20:35:21'),
(4, 'Giường Ngủ Gỗ Tràm MOHO VLINE 601 Nhiều Kích Thước', 4990000, 'img_5971.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 20:39:08', '2021-04-26 20:39:08'),
(5, 'BÀN GÓC TS1657', 3750000, 'img_5972.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:02:43', '2021-04-26 21:02:43'),
(6, 'GHẾ GIÁM ĐỐC A1601', 6350000, 'img_5973.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:04:02', '2021-04-26 21:04:02'),
(7, 'THẢM ROSE 6-2', 5450000, 'img_5968.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:09:19', '2021-04-26 21:09:19'),
(8, 'Ghế Lazboy Pinnacle 10T512 ', 35500000, 'img_5974.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:18:55', '2021-04-26 21:18:55'),
(9, 'Sofa Miami 2 chỗ hiện đại vải hồng', 13900000, 'img_5975.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:21:02', '2021-04-26 21:21:02'),
(10, 'Tủ Tivi Miami', 13900000, 'img_5976.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:23:27', '2021-04-26 21:23:27'),
(11, 'Sofa Miami 3 chỗ và 1 armchair hiện đại ', 23900000, 'img_5977.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:24:29', '2021-04-26 21:24:29'),
(12, 'Giường ngủ gỗ Harmony 1m6', 10900000, 'img_5978.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:25:44', '2021-04-26 21:25:44'),
(13, 'Giường hộc kéo Iris 1m6 Stone', 14900000, 'img_5979.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:28:35', '2021-04-26 21:28:35'),
(14, 'Bàn đầu giường IRIS mẫu 2', 2900000, 'img_5980.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:30:22', '2021-04-26 21:30:22'),
(15, 'Bàn đầu giường Osaka', 6900000, 'img_5981.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 21:31:41', '2021-04-26 21:31:41'),
(16, 'Bàn đầu giường 3 hộc kéo', 7100000, 'img_5982.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 1, '2021-04-26 22:02:36', '2021-04-26 22:02:36'),
(17, 'SO-522 Sofa', 54184000, 'SO-5223_dbcedd85-accd-4619-8a46-2ff6cfbb1fbb_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 03:51:55', NULL),
(18, 'SO-521 Sofa Chữ U', 52104000, 'SO-521-min_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 03:55:39', NULL),
(19, 'DI-635 Bàn Ăn + 6 Ghế', 22360000, 'DI-635-min_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 03:59:37', NULL),
(20, 'DI-620 Bàn Ăn + 6 Ghế', 19344000, 'z2265726501208_dcc2c7b3b5cb3a98c80ed349fd27e770_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:02:06', NULL),
(21, 'Bàn cafe TA-641', 5300000, 'TA-641_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:03:53', NULL),
(22, 'Bàn cafe TA-701', 10800000, '4_e9276a29-1109-4683-9f94-6dea692a396d_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:06:48', NULL),
(23, 'TA-671 Bàn Cafe', 10000000, 'TA-671_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:11:48', NULL),
(24, 'SO-522 Sofa 1 Chỗ', 9776000, 'SO-5222_2_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:14:55', NULL),
(25, 'SO-903 Sofa 1 chỗ', 15912000, 'SO-903_6_0e01f3fe-83dd-4958-ba46-cfccc4cc7d4d_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:17:51', NULL),
(26, 'SO-810 Sofa 1 Chỗ', 75920000, 'Cozy-Day23228copy_5b252e85-2f46-4287-9102-ba7eae73e867_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:21:54', NULL),
(27, 'CH-704 GHẾ THƯ GIÃN', 17368000, '5_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:26:22', NULL),
(28, 'ST-703 GHẾ THƯ GIÃN', 9152000, '10_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:28:38', NULL),
(29, 'SO-562 Sofa Chữ L', 51272000, 'z2287245879670_38367fd43d556213ef9ae0769c9073d2_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:31:45', NULL),
(30, 'DI-802 Bàn Ăn + 6 Ghế', 19608000, 'awfw_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 04:34:26', NULL),
(31, 'SO-812 Sofa Bộ 4-2', 134160000, 'Cozy-Day23217copy_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:05:44', NULL),
(32, 'STA-731C BÀN GÓC', 3328000, 'STA-731C_bf0c8d8d-e1ce-4364-9cda-da19df446402_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:09:33', NULL),
(33, 'Tủ Trang Trí CA-620', 14872000, 'Cozy-07-013502copy_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:15:23', NULL),
(34, 'Tủ Trang Trí CA-622', 15808000, 'CA-622-01_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:16:29', NULL),
(35, 'Tủ Trang Trí NT-902', 7280000, 'CaptureOneSession1640-2_800x800.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:19:05', NULL),
(36, 'Tủ Trang Trí NT-903', 8216000, 'CaptureOneSession1494-01-Copy_800x800.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:21:19', NULL),
(37, 'GIƯỜNG NGỦ BE-720', 57824000, 'BE-720_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:23:31', NULL),
(38, 'Bàn cafe TA-674A', 8700000, 'TA-674A-01_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:25:54', NULL),
(39, 'Kệ Tivi TV-645', 8528000, 'z2280762993719_782c603dfa8560295036306282ee80ae_960x960.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:27:40', NULL),
(40, 'Kệ Tivi TV-700', 19864000, '1_10_-min_832x832.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel saepe quis eum officiis repudiandae animi praesentium. Nam aliquam cum laudantium, consequuntur modi placeat quae rerum illum, eum vel fugiat deleniti.', 1, 0, '2021-04-27 05:29:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taxonomies`
--

CREATE TABLE `taxonomies` (
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taxonomies`
--

INSERT INTO `taxonomies` (`taxonomy_id`, `taxonomy_name`, `taxonomy_type`) VALUES
(1, 'Nội Thất Phòng Khách', 'category'),
(2, 'Nội Thất Phòng Ngủ', 'category'),
(3, 'Nội Thất Nhà Bếp', 'category');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taxonomy_relationships`
--

CREATE TABLE `taxonomy_relationships` (
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taxonomy_relationships`
--

INSERT INTO `taxonomy_relationships` (`taxonomy_id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_permission` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`taxonomy_id`);

--
-- Chỉ mục cho bảng `taxonomy_relationships`
--
ALTER TABLE `taxonomy_relationships`
  ADD PRIMARY KEY (`taxonomy_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `taxonomy_relationships`
--
ALTER TABLE `taxonomy_relationships`
  MODIFY `taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
