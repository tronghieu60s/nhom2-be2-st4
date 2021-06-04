-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 04, 2021 lúc 07:25 AM
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
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Phòng Khách', NULL, NULL),
(2, 'Phòng Ngủ', NULL, NULL),
(3, 'Nhà Bếp', NULL, NULL),
(4, 'Sân Vườn', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorizable`
--

CREATE TABLE `categorizable` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorizable`
--

INSERT INTO `categorizable` (`category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(1, 5, NULL, NULL),
(2, 4, NULL, NULL),
(1, 39, '2021-05-14 17:32:46', '2021-05-14 17:32:46'),
(1, 38, '2021-05-14 17:33:06', '2021-05-14 17:33:06'),
(3, 38, '2021-05-14 17:33:06', '2021-05-14 17:33:06'),
(2, 37, '2021-05-14 17:33:22', '2021-05-14 17:33:22'),
(1, 36, '2021-05-14 17:33:35', '2021-05-14 17:33:35'),
(2, 36, '2021-05-14 17:33:35', '2021-05-14 17:33:35'),
(1, 35, '2021-05-14 17:33:46', '2021-05-14 17:33:46'),
(2, 35, '2021-05-14 17:33:46', '2021-05-14 17:33:46'),
(1, 34, '2021-05-14 17:34:18', '2021-05-14 17:34:18'),
(2, 34, '2021-05-14 17:34:18', '2021-05-14 17:34:18'),
(1, 33, '2021-05-14 17:34:29', '2021-05-14 17:34:29'),
(2, 33, '2021-05-14 17:34:30', '2021-05-14 17:34:30'),
(1, 32, '2021-05-14 17:34:38', '2021-05-14 17:34:38'),
(3, 32, '2021-05-14 17:34:38', '2021-05-14 17:34:38'),
(1, 31, '2021-05-14 17:34:48', '2021-05-14 17:34:48'),
(2, 31, '2021-05-14 17:34:48', '2021-05-14 17:34:48'),
(1, 30, '2021-05-14 17:35:01', '2021-05-14 17:35:01'),
(3, 30, '2021-05-14 17:35:01', '2021-05-14 17:35:01'),
(1, 29, '2021-05-14 17:35:10', '2021-05-14 17:35:10'),
(2, 29, '2021-05-14 17:35:10', '2021-05-14 17:35:10'),
(1, 28, '2021-05-14 17:35:26', '2021-05-14 17:35:26'),
(1, 27, '2021-05-14 17:35:46', '2021-05-14 17:35:46'),
(1, 26, '2021-05-14 17:36:04', '2021-05-14 17:36:04'),
(1, 25, '2021-05-14 17:36:12', '2021-05-14 17:36:12'),
(1, 24, '2021-05-14 17:36:20', '2021-05-14 17:36:20'),
(1, 23, '2021-05-14 17:36:37', '2021-05-14 17:36:37'),
(3, 23, '2021-05-14 17:36:37', '2021-05-14 17:36:37'),
(4, 23, '2021-05-14 17:36:37', '2021-05-14 17:36:37'),
(1, 22, '2021-05-14 17:36:53', '2021-05-14 17:36:53'),
(4, 22, '2021-05-14 17:36:53', '2021-05-14 17:36:53'),
(1, 21, '2021-05-14 17:39:34', '2021-05-14 17:39:34'),
(4, 21, '2021-05-14 17:39:34', '2021-05-14 17:39:34'),
(1, 20, '2021-05-14 17:39:43', '2021-05-14 17:39:43'),
(3, 20, '2021-05-14 17:39:43', '2021-05-14 17:39:43'),
(4, 20, '2021-05-14 17:39:43', '2021-05-14 17:39:43'),
(1, 19, '2021-05-14 17:40:07', '2021-05-14 17:40:07'),
(3, 19, '2021-05-14 17:40:07', '2021-05-14 17:40:07'),
(4, 19, '2021-05-14 17:40:07', '2021-05-14 17:40:07'),
(1, 18, '2021-05-14 17:40:26', '2021-05-14 17:40:26'),
(1, 17, '2021-05-14 17:40:34', '2021-05-14 17:40:34'),
(2, 16, '2021-05-14 17:40:44', '2021-05-14 17:40:44'),
(2, 15, '2021-05-14 17:40:55', '2021-05-14 17:40:55'),
(2, 14, '2021-05-14 17:41:04', '2021-05-14 17:41:04'),
(2, 13, '2021-05-14 17:41:13', '2021-05-14 17:41:13'),
(2, 12, '2021-05-14 17:41:22', '2021-05-14 17:41:22'),
(1, 11, '2021-05-14 17:41:39', '2021-05-14 17:41:39'),
(2, 11, '2021-05-14 17:41:39', '2021-05-14 17:41:39'),
(1, 10, '2021-05-14 17:41:49', '2021-05-14 17:41:49'),
(1, 9, '2021-05-14 17:41:58', '2021-05-14 17:41:58'),
(1, 8, '2021-05-14 17:42:09', '2021-05-14 17:42:09'),
(2, 8, '2021-05-14 17:42:09', '2021-05-14 17:42:09'),
(1, 7, '2021-05-14 17:42:30', '2021-05-14 17:42:30'),
(2, 7, '2021-05-14 17:42:30', '2021-05-14 17:42:30'),
(1, 6, '2021-05-14 17:42:41', '2021-05-14 17:42:41'),
(1, 40, '2021-06-03 22:16:08', '2021-06-03 22:16:08'),
(2, 40, '2021-06-03 22:16:08', '2021-06-03 22:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `comment_rating` int(11) NOT NULL,
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_rating`, `comment_content`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sản phẩm rất tốt', 1, 1, NULL, NULL),
(2, 5, 'sản phẩm rất ok, tuyệt vời', 4, 1, '2021-05-13 05:51:46', '2021-05-13 05:51:46'),
(4, 5, 'Sản phẩm tuyệt', 1, 4, '2021-05-18 12:09:11', '2021-05-18 12:09:11'),
(5, 3, 'vận chuyển bị sứt mẻ đồ người ta..., cho 3 sao', 1, 35, '2021-05-18 13:23:27', '2021-05-18 13:23:27'),
(6, -1, 'sản phẩm này dùng thế nào mọi người?', 4, 35, '2021-05-25 19:26:39', '2021-05-25 19:26:39'),
(8, 5, 'quá ngon', 4, 35, '2021-06-01 18:03:35', '2021-06-01 18:03:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` bigint(20) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_name`, `created_at`, `updated_at`) VALUES
(1, 'Không Phân Loại', NULL, NULL),
(2, 'Ashley', NULL, NULL),
(3, 'Aaron', NULL, NULL),
(4, 'Dunelm Group', NULL, NULL),
(5, 'French Heritage', NULL, NULL),
(6, 'Forma Ideale', NULL, NULL),
(7, 'Harvey Norman', NULL, NULL),
(8, 'Steelcase', NULL, NULL);

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
(9, '2021_04_09_000000_create_users_table', 1),
(10, '2021_04_10_020820_create_manufacturers_table', 1),
(11, '2021_04_11_160356_create_orders_table', 1),
(12, '2021_04_12_155658_create_categories_table', 1),
(13, '2021_04_13_155218_create_products_table', 1),
(14, '2021_04_14_160229_create_categorizable_table', 1),
(15, '2021_04_15_160908_create_comments_table', 1),
(16, '2021_04_16_021344_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_status`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2021-05-15 20:36:32', '2021-05-15 20:45:27'),
(5, 0, 1, '2021-05-18 13:54:56', '2021-05-18 13:54:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` bigint(20) UNSIGNED NOT NULL,
  `detail_quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`detail_id`, `detail_quantity`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 2, 4, 35, '2021-05-15 20:36:32', '2021-05-15 20:36:32'),
(7, 1, 4, 33, '2021-05-15 20:36:32', '2021-05-15 20:36:32'),
(8, 1, 4, 18, '2021-05-15 20:36:32', '2021-05-15 20:36:32'),
(9, 1, 5, 16, '2021-05-18 13:54:56', '2021-05-18 13:54:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL DEFAULT 0,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_available` int(11) NOT NULL DEFAULT 0,
  `manufacturer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_image`, `product_description`, `product_available`, `manufacturer_id`, `created_at`, `updated_at`) VALUES
(1, 'Sofa dài siêu đẹp', 6999999, 'img_1000.jpg', 'Zsofa luôn cho ra đời những mẫu Ghế sofa cao cấp chiều lòng được những khách hàng khó tính nhất, Ghế sofa của Zsofa luôn đảm bảo uy tín và chất lượng đến tay khách hàng.', 20, 4, NULL, NULL),
(2, 'Giường Ngủ Gỗ Tràm MOHO MALAGA 302', 3490000, 'img_5969.jpg', 'Chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt', 41, 5, '2021-04-25 16:33:42', '2021-04-25 16:33:42'),
(3, 'Bộ Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601', 5990000, 'img_5970.jpg', 'Bàn kích thước ngang 75cm x dài 120cm x cao 75cm, miễn phí vận chuyển và lắp ráp tp.hcm, đơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%, hàng việt nam chất lượng cao, hàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng, bảo hành 24 tháng', 30, 5, '2021-04-25 16:35:21', '2021-04-25 16:35:21'),
(4, 'Giường Ngủ Gỗ Tràm MOHO VLINE 601 Nhiều Kích Thước', 4990000, 'img_5971.jpg', 'Giường Đôi Coco Gỗ Tràm IBIE - BBDCOC có nhiều kích thước để tùy chọn 1m4, 1m6, 1m8 và 2m.\r\nGiường đôi Coco được làm từ gỗ tràm tự nhiên đã qua xử lý công nghệ hơi nước hiện đại, đáp ứng các yêu cầu cao về chất lượng và độ bền, không bị cong vênh hay nứt gãy, mối mọt theo thời gian.\r\nĐây là loại vật liệu có sẵn tại Việt nam, giá trị kinh tế cao, thành phẩm được xuất khẩu sang nhiều quốc gia Châu Á như Hàn Quốc,...\r\nThiết kế kiểu dáng đơn giản và thanh lịch, màu sắc tự nhiên mang đến sự hiện đại và sang trọng cho không gian phòng ngủ.', 29, 4, '2021-04-25 16:39:08', '2021-04-25 16:39:08'),
(5, 'BÀN GÓC TS1657', 3750000, 'img_5972.jpg', 'Bàn làm việc L chân sắt BVP16L chân sắt sơn tĩnh điện cùng với mặt bàn lượn chữ L cao cấp, có độ bền cao, an toàn cho người sử dụng, đẹp mắt, an toàn cho người sử dụng, giá thành rẻ đáp ứng nhu cầu sử dụng của nhiều đối tượng người dùng, đặc biệt là góc làm việc trưởng phòng, leader,...Đặc điểm thiết kế', 32, 3, '2021-04-25 17:02:43', '2021-04-25 17:02:43'),
(6, 'GHẾ GIÁM ĐỐC A1601', 6350000, 'img_5973.jpg', 'Ghế giám đốc cao cấp SG912 được thiết kế nổi bật với màu đồng sang trọng, góp phần mang lại sự mới mẻ, đột phá cho không gian làm việc. Ghế có 03 loại chất liệu da cho khách hàng chọn lựa theo ý thích bao gồm da công nghiệp, da thật và PVC. Các loại da này đều có đặc tính ưu việt về độ mềm mại, không thấm nước và hạn chế bong tróc khi sử dụng lâu ngày, giúp tiết kiệm thời gian vệ sinh ghế và chi phí mua mới sản phẩm.', 39, 2, '2021-04-25 17:04:02', '2021-04-25 17:04:02'),
(7, 'THẢM ROSE 6-2', 5450000, 'img_5968.jpg', 'THẢM LÔNG TRẢI SÀN CAO CẤP MANG ĐẾN SỰ AN TOÀN CHO NGƯỜI GIÀ VÀ TRẺ NHỎ\r\n-Lưu ý: Là shop bán loại dày 4.5cm nên đừng so sánh với những loại dày 2.5cm giá rẻ hơn ạ. Khách hàng cứ yên tâm là \"tiền nào của đó\"\r\n-Đặc tính sản phẩm: Làm từ sợi tổng hợp,lông dài 3cm,mặt đế dày 1.5cm chống trơn trượt\r\n-Thảm Lông dùng để trải sàn nhà,trải thay nệm để nằm,trải cho các bé nhỏ chơi\r\n-Tạo Không gian hiện đại ,tiện ích trong ngôi nhà.Mang đến sự ấm cúng cho cho người sử dụng', 21, 4, '2021-04-25 17:09:19', '2021-04-25 17:09:19'),
(8, 'Ghế Lazboy Pinnacle 10T512', 35500000, 'img_5974.jpg', 'là một sản phẩm được thiết kế để giúp chúng ta thư giãn, nghỉ ngơi thoải mái. Tại Beanbag home có rất nhiều mẫu ghế lười có thiết kế đẹp, dễ thương, đáng yêu, sang trọng… và tính năng tiện dụng; các mẫu ghế lười đẹp mắt của Beanbag home sẽ là góp phần tô điểm không gian sống gia đình bạn thêm hoàn hảo.', 16, 6, '2021-04-25 17:18:55', '2021-05-14 17:42:09'),
(9, 'Sofa Miami 2 chỗ hiện đại vải hồng', 13900000, 'img_5975.jpg', 'Chất lượng là giá trị mà zSofa luôn đảm bảo cho mọi sản phẩm ghế sofa mà mình cung cấp.\r\nĐầu tư về khâu sản xuất với những phương pháp làm ghế sofa tiên tiến nhất và đội ngũ thợ ghế sofa có kinh nghiệm.\r\nChỉ dùng những nguyên vật liệu làm ghế sofa chất lượng nhất được lấy từ những nguồn cung cấp uy tín nhất.\r\nTạo nên bộ ghế sofa tân cổ điển có bộ khung ghế chắc chắn nhất và chất lượng và độ bền đến từng chi tiết.', 12, 6, '2021-04-25 17:21:02', '2021-04-25 17:21:02'),
(10, 'Tủ Tivi Miami', 13900000, 'img_5976.jpg', 'Luzo Home gia công các mối đinh vít đều rất tinh tế, đảm bảo ưng ý sau khi nhận được hàng', 42, 8, '2021-04-25 17:23:27', '2021-04-25 17:23:27'),
(11, 'Sofa Miami 3 chỗ và 1 armchair hiện đại', 23900000, 'img_5977.jpg', 'Vải bố nhập khẩu Hàn Quốc ( có thể thay đổi da bò/ da PU, simili … )\r\nChân ghế nhựa đúc (hoặc gỗ).\r\n\r\nKhung Gỗ Dầu đã xử lý chống mối mọt\r\n\r\nNệm mút cao su non kết hợp lò xo đàn hồi tốt, mang lại cảm giác êm ái dể chịu', 42, 4, '2021-04-25 17:24:29', '2021-05-14 17:41:39'),
(12, 'Giường ngủ gỗ Harmony 1m6', 10900000, 'img_5978.jpg', 'Với thông điệp “Dành tặng con không gian sống tuyệt vời, như trái tim người mẹ” vì chiếc giường sẽ là nơi con nghỉ ngơi, vui chơi,thấu hiểu thông điệp nay nên Noithatasaka.vn xin giới thiệu bạn một trong những sản phẩm tuy giản đơn mà vô cùng hiện đại.\r\n\r\nLà giải pháp tối ưu cho phòng ngủ có 3 người chật chội.\r\n\r\nNhững gia đình thường xuyên có khách ( Bạn của bé, ông, bà, anh, chị,…)', 12, 5, '2021-04-25 17:25:44', '2021-04-25 17:25:44'),
(13, 'Giường hộc kéo Iris 1m6 Stone', 14900000, 'img_5979.jpg', 'Với sự thành công của các mẫu giường tầng cao truyền thống đã có thì sự ra đời của mẫu giường hộp GT092 mang lại cho khách hàng nhiều trải nghiệm thú vị bởi sự hiện đại pha lẫn sự tiện ích mà không kém phần sang trọng.\r\nMẫu giường này được các chuyên gia đánh giá cao về khả năng chịu lực tốt, thiết kế đơn giản mà sang trọng vừa tiết kiệm diện tích và vừa mang lại không gian đẹp cho căn phòng nhà bạn.\r\nGiường tầng cho bé có ngăn kéo GT092 là hàng xuất khẩu Châu Âu đáp ứng được các yêu cầu kỹ thuật khắt khe nhất. Giường được sản xuất 100% từ gỗ thông nhập khẩu New Zealand đã qua xử lý chống cong vênh, mối mọt, chống hút ẩm và đặc biệt được sơn quang tĩnh điện không chì đảm bảo tốt nhất cho sức khỏe.', 10, 6, '2021-04-25 17:28:35', '2021-04-25 17:28:35'),
(14, 'Bàn đầu giường IRIS mẫu 2', 2900000, 'img_5980.jpg', '- Gỗ cao su có thớ gỗ dày, màu mắc vô cùng bắt mắt và chất gỗ vô cùng bền bỉ, rất chắc và khá nặng tay. Đây là cũng là nguyên liệu vô cùng phổ biến trong nội thất.\r\n\r\n- Gỗ cao su có tính chịu lực rất cao nên thường được sử dụng làm chân bàn, chân ghế, chân giường, chân tủ,...\r\n\r\n- Dùng Veneer cho các loại gỗ công nghiệp để tăng giá trị sản phẩm.', 21, 8, '2021-04-25 17:30:22', '2021-04-25 17:30:22'),
(15, 'Bàn đầu giường Osaka', 6900000, 'img_5981.jpg', 'Bàn làm việc gia đình, Kính thước ngang 50cm x dài 1m4 x cao 75cm, ván MFC 18mm', 32, 2, '2021-04-25 17:31:41', '2021-04-25 17:31:41'),
(16, 'Bàn đầu giường 3 hộc kéo', 7100000, 'img_5982.jpg', 'THƯƠNG HIỆU: Nội Thất Kaya\r\nKÍCH THƯỚC: Rộng 110 x Dài 255 x Cao 165 (cm)\r\nNỆM TẦNG TRÊN: 100 x 193 x 9+ (cm)\r\nNỆM TẦNG DƯỚI: 100 x 193 x 9+ (cm)\r\nNỆM TẦNG SÁT ĐẤT: 100 x 185 x 9+ (cm)\r\nMÀU SẮC: Trắng, Vàng, Nâu, Tự Nhiên\r\nCHẤT LIỆU: Gỗ thông New Zealand\r\nSẢN XUẤT TẠI: Việt Nam xuất khẩu sang Châu Âu, Hàn Quốc\r\nCHẾ ĐỘ BH: 24 tháng\r\nGIAO HÀNG: Toàn quốc\r\nPHÍ VẬN CHUYỂN: Miễn phí tại TP.HCM\r\nTHỜI GIAN GIAO HÀNG: Từ 1-3 ngày.', 23, 3, '2021-04-25 18:02:36', '2021-04-25 18:02:36'),
(17, 'SO-522 Sofa', 54184000, 'SO-5223_dbcedd85-accd-4619-8a46-2ff6cfbb1fbb_960x960.jpg', 'Zsofa luôn cho ra đời những mẫu Ghế sofa cao cấp chiều lòng được những khách hàng khó tính nhất, Ghế sofa của Zsofa luôn đảm bảo uy tín và chất lượng đến tay khách hàng.', 18, 7, '2021-04-25 23:51:55', NULL),
(18, 'SO-521 Sofa Chữ U', 52104000, 'SO-521-min_960x960.jpg', 'Bộ Sofa da góc chữ U nhập khẩu Malaysia SO-521 có kích thước vừa, lớn phù hợp với không gian phòng khách rộng. Thiết kế vuông vức mang phong khách hiện đại, sang trọng. Lưng tựa có thể điều khiển bật nhiều chế độ, tạo sự linh hoạt và thoải mái cho người sử dụng.', 12, 7, '2021-04-25 23:55:39', NULL),
(19, 'DI-635 Bàn Ăn + 6 Ghế', 22360000, 'DI-635-min_960x960.jpg', 'Được đóng chắc chắn bởi những người thợ có nhiều năm kinh nghiệm.\r\nĐảm bảo chất lượng cho từng chi tiết với nguồn nguyên vật liệu cao cấp nhất.\r\nĐó chính là những nguyên vật liệu được lấy từ những nguồn cung cấp uy tín.\r\nĐảm bảo rằng khách hàng sẽ có một chiếc bàn với độ bền và thời gian sử dụng lâu nhất.', 27, 5, '2021-04-25 23:59:37', NULL),
(20, 'DI-620 Bàn Ăn + 6 Ghế', 19344000, 'z2265726501208_dcc2c7b3b5cb3a98c80ed349fd27e770_960x960.jpg', 'Được đóng chắc chắn bởi những người thợ có nhiều năm kinh nghiệm.\r\nĐảm bảo chất lượng cho từng chi tiết với nguồn nguyên vật liệu cao cấp nhất.\r\nĐó chính là những nguyên vật liệu được lấy từ những nguồn cung cấp uy tín.\r\nĐảm bảo rằng khách hàng sẽ có một chiếc bàn với độ bền và thời gian sử dụng lâu nhất.', 43, 5, '2021-04-26 00:02:06', NULL),
(21, 'Bàn cafe TA-641', 5300000, 'TA-641_960x960.jpg', 'Chất liệu bàn: mặt bàn thép carbon + chân Nhôm\r\nKích thước bàn: D700mm*710mm\r\nChất liệu ghế: Nhôm\r\nKích thước 550*580*830mm\r\nMã bàn starbuck: T126\r\nMã ghế starbuck: C026', 32, 2, '2021-04-26 00:03:53', NULL),
(22, 'Bàn cafe TA-701', 10800000, '4_e9276a29-1109-4683-9f94-6dea692a396d_960x960.jpg', 'Chất liệu bàn: mặt bàn thép carbon + chân Nhôm\r\nKích thước bàn: D700mm*710mm\r\nChất liệu ghế: Nhôm\r\nKích thước 550*580*830mm\r\nMã bàn starbuck: T126\r\nMã ghế starbuck: C026', 11, 5, '2021-04-26 00:06:48', NULL),
(23, 'TA-671 Bàn Cafe', 10000000, 'TA-671_960x960.jpg', 'Chất liệu bàn: mặt bàn thép carbon + chân Nhôm\r\nKích thước bàn: D700mm*710mm\r\nChất liệu ghế: Nhôm\r\nKích thước 550*580*830mm\r\nMã bàn starbuck: T126\r\nMã ghế starbuck: C026', 37, 7, '2021-04-26 00:11:48', NULL),
(24, 'SO-522 Sofa 1 Chỗ', 9776000, 'SO-5222_2_960x960.jpg', 'Bộ Sofa da nhập khẩu Malaysia SO-522 (Keira) có kích thước vừa phải, phù hợp với không gian phòng khách vừa và lớn. Thiết kế đơn giản, vuông vức mang phong khách hiện đại, sang trọng. Lưng tựa được thiết kế mềm mại tạo cảm giác thoải mái và êm ái cho người ngồi.', 8, 3, '2021-04-26 00:14:55', NULL),
(25, 'SO-903 Sofa 1 chỗ', 15912000, 'SO-903_6_0e01f3fe-83dd-4958-ba46-cfccc4cc7d4d_832x832.jpg', 'Bộ Sofa da nhập khẩu Malaysia SO-522 (Keira) có kích thước vừa phải, phù hợp với không gian phòng khách vừa và lớn. Thiết kế đơn giản, vuông vức mang phong khách hiện đại, sang trọng. Lưng tựa được thiết kế mềm mại tạo cảm giác thoải mái và êm ái cho người ngồi.', 25, 7, '2021-04-26 00:17:51', NULL),
(26, 'SO-810 Sofa 1 Chỗ', 75920000, 'Cozy-Day23228copy_5b252e85-2f46-4287-9102-ba7eae73e867_832x832.jpg', 'Sản phẩm được sản xuất và nhập khẩu hoàn toàn từ Malaysia.\r\nSofa Malaysia được thế giới biết đến với thiết kế hiện đại, kỹ thuật sản xuất tiên tiến, độ bền cao. Tất cả sản phẩm sử dụng các vật liệu thân thiện với môi trường, không độc hại. COZY tự hào là nhà phân phối độc quyền của các sản phẩm nội thất cao cấp Malaysia tại Việt Nam.\r\nCOZY là thương hiệu phân phối sản phẩm nội thất hàng đầu với mức giá ưu đãi ĐỘC QUYỀN. ', 12, 4, '2021-04-26 00:21:54', NULL),
(27, 'CH-704 GHẾ THƯ GIÃN', 17368000, '5_832x832.jpg', 'Ghế massage ELIP Rhodi được chế tác từ tổ hợp chất liệu cao cấp gồm da, nệm, nhựa ABS, kết hợp cùng tone màu nâu chủ đạo, mang đến một sản phẩm bắt mắt, thanh lịch, điểm tô sự sang trọng cho ngôi nhà, và đương nhiên, chất lượng sản phẩm luôn được tập đoàn thể thao Elipsport đặt lên hàng đầu. Với ELIP Rhodi, bạn sẽ được tận hưởng những phát giây thư giãn thoải mái với một sản phẩm có độ bền vững chắc, một chiếc ghế massage êm ái, đầy đủ chức năng dành cho người sử dụng. Hơn nữa, thiết bị này còn được tích hợp công nghệ Bluetooth cho phép người dùng phát các bản nhạc yêu thích từ điện thoại, để qua đó kích thích não bộ thư giãn, đạt hiệu quả massage cao hơn.\r\n\r\n', 21, 8, '2021-04-26 00:26:22', NULL),
(28, 'ST-703 GHẾ THƯ GIÃN', 9152000, '10_832x832.jpg', 'Ghế massage ELIP Rhodi được chế tác từ tổ hợp chất liệu cao cấp gồm da, nệm, nhựa ABS, kết hợp cùng tone màu nâu chủ đạo, mang đến một sản phẩm bắt mắt, thanh lịch, điểm tô sự sang trọng cho ngôi nhà, và đương nhiên, chất lượng sản phẩm luôn được tập đoàn thể thao Elipsport đặt lên hàng đầu. Với ELIP Rhodi, bạn sẽ được tận hưởng những phát giây thư giãn thoải mái với một sản phẩm có độ bền vững chắc, một chiếc ghế massage êm ái, đầy đủ chức năng dành cho người sử dụng. Hơn nữa, thiết bị này còn được tích hợp công nghệ Bluetooth cho phép người dùng phát các bản nhạc yêu thích từ điện thoại, để qua đó kích thích não bộ thư giãn, đạt hiệu quả massage cao hơn.\r\n\r\n', 30, 6, '2021-04-26 00:28:38', NULL),
(29, 'SO-562 Sofa Chữ L', 51272000, 'z2287245879670_38367fd43d556213ef9ae0769c9073d2_832x832.jpg', 'Mẫu ghế sofa chữ L được zSOFA.vn thiết kế với kiểu dáng đơn giản , mang lại sự sang trọng cho ngôi nhà của bạn. sofa chữ L tại zSOFA.vn được bán với giá rẻ nhất thị trường TP.HCM .', 24, 8, '2021-04-26 00:31:45', NULL),
(30, 'DI-802 Bàn Ăn + 6 Ghế', 19608000, 'awfw_960x960.jpg', 'Được đóng chắc chắn bởi những người thợ có nhiều năm kinh nghiệm.\r\nĐảm bảo chất lượng cho từng chi tiết với nguồn nguyên vật liệu cao cấp nhất.\r\nĐó chính là những nguyên vật liệu được lấy từ những nguồn cung cấp uy tín.\r\nĐảm bảo rằng khách hàng sẽ có một chiếc bàn với độ bền và thời gian sử dụng lâu nhất.', 18, 5, '2021-04-26 00:34:26', NULL),
(31, 'SO-812 Sofa Bộ 4-2', 134160000, 'Cozy-Day23217copy_960x960.jpg', 'Da công nghiệp nhập khẩu Hàn Quốc ( có thể thay đổi da bò/ da PU, simili …)\r\nChân ghế nhựa đúc\r\n\r\nKhung Gỗ Dầu đã xử lý chống mối mọt\r\n\r\nNệm mút cao su non kết hợp lò xo đàn hồi tốt, mang lại cảm giác êm ái dể chịu', 12, 7, '2021-04-26 01:05:44', NULL),
(32, 'STA-731C BÀN GÓC', 3328000, 'STA-731C_bf0c8d8d-e1ce-4364-9cda-da19df446402_832x832.jpg', 'Kích thước : 2,2m x 1,6m ( có thể thay đổi kích thước, màu sắc )\r\nChất Liệu : Vải bố nhập khẩu Hàn Quôc, khung sườn gỗ dầu đã qua xử lý chống mối mọt, Nệm mút D40 Nhập Kim Cương đàn hồi tốt', 21, 3, '2021-04-26 01:09:33', NULL),
(33, 'Tủ Trang Trí CA-620', 14872000, 'Cozy-07-013502copy_960x960.jpg', 'chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt\r\n\r\nmiễn phí vận chuyển và lắp ráp tp.hcm\r\n\r\nđơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%\r\n\r\nhàng việt nam chất lượng cao\r\n\r\nhàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng\r\n\r\nbảo hành 24 tháng\r\n\r\nLiên hệ: trung tâm bán sỉ Nội Thất Mai Lâm\r\n\r\ncửa hàng trưng bày: 2289 Huỳnh Tấn Phát, khu phố 7, thị trấn Nhà Bè, tp.HCM', 43, 7, '2021-04-26 01:15:23', NULL),
(34, 'Tủ Trang Trí CA-622', 15808000, 'CA-622-01_832x832.jpg', 'chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt\r\n\r\nmiễn phí vận chuyển và lắp ráp tp.hcm\r\n\r\nđơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%\r\n\r\nhàng việt nam chất lượng cao\r\n\r\nhàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng\r\n\r\nbảo hành 24 tháng\r\n\r\nLiên hệ: trung tâm bán sỉ Nội Thất Mai Lâm\r\n\r\ncửa hàng trưng bày: 2289 Huỳnh Tấn Phát, khu phố 7, thị trấn Nhà Bè, tp.HCM', 23, 5, '2021-04-26 01:16:29', NULL),
(35, 'Tủ Trang Trí NT-902', 7280000, 'CaptureOneSession1640-2_800x800.jpg', 'chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt\r\n\r\nmiễn phí vận chuyển và lắp ráp tp.hcm\r\n\r\nđơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%\r\n\r\nhàng việt nam chất lượng cao\r\n\r\nhàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng\r\n\r\nbảo hành 24 tháng\r\n\r\nLiên hệ: trung tâm bán sỉ Nội Thất Mai Lâm\r\n\r\ncửa hàng trưng bày: 2289 Huỳnh Tấn Phát, khu phố 7, thị trấn Nhà Bè, tp.HCM', 16, 3, '2021-04-26 01:19:05', NULL),
(36, 'Tủ Trang Trí NT-903', 8216000, 'CaptureOneSession1494-01-Copy_800x800.jpg', 'chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt\r\n\r\nmiễn phí vận chuyển và lắp ráp tp.hcm\r\n\r\nđơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%\r\n\r\nhàng việt nam chất lượng cao\r\n\r\nhàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng\r\n\r\nbảo hành 24 tháng\r\n\r\nLiên hệ: trung tâm bán sỉ Nội Thất Mai Lâm\r\n\r\ncửa hàng trưng bày: 2289 Huỳnh Tấn Phát, khu phố 7, thị trấn Nhà Bè, tp.HCM', 7, 3, '2021-04-26 01:21:19', NULL),
(37, 'GIƯỜNG NGỦ BE-720', 57824000, 'BE-720_832x832.jpg', 'Với không gian sống có diện tích hạn chế thì gường tầng luôn là sự lựa chọn số 1. Giường gỗ 2 tầng GT228 được thiết kế khác biệt có ưu điểm vượt trội so với những kiểu giường tầng truyền thống sẽ mang đến cho bạn và gia đình những giây phút nghỉ ngơi thoải mái sau một ngày làm việc, học tập mệt mỏi và căng thẳng.\r\n\r\nGiường tầng GT228 được làm từ 100% gỗ thông cao cấp nhập khẩu từ New Zealand.\r\n\r\nĐược xử lý chống cong vênh, mối mọt kĩ lưỡng, sơn quang tĩnh điện nên có độ bền chắc, chất lượng đạt tiêu chuẩn xuất khẩu quốc tế.\r\n\r\nGiường được thiết kế không có phần chân, bốn cạnh giường tiếp xúc trực tiếp với sàn nhà tạo được sự vững chãi, chắc chắn, giảm bớt độ cao của giường an toàn cho người sử dụng đặc biệt là trẻ em.', 21, 8, '2021-04-26 01:23:31', NULL),
(38, 'Bàn cafe TA-674A', 8700000, 'TA-674A-01_960x960.jpg', 'Bàn cà phê DECOR được làm từ gỗ công nghiệp bền chắc, vững chãi và mặt kính cường lực an toàn cho người sử dụng. Sản phẩm có thiết kế đơn giản, tiện ích với kệ mở phía dưới cho bạn thoải mái sắp xếp những vật dụng cần thiết. Kết hợp với các sản phẩm khác trong bộ sưu tập phòng khách để hoàn thiện nội thất hiện đại cho ngôi nhà của bạn.', 12, 7, '2021-04-26 01:25:54', NULL),
(39, 'Kệ Tivi TV-645', 8528000, 'z2280762993719_782c603dfa8560295036306282ee80ae_960x960.jpg', 'chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt\r\n\r\nmiễn phí vận chuyển và lắp ráp tp.hcm\r\n\r\nđơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%\r\n\r\nhàng việt nam chất lượng cao\r\n\r\nhàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng\r\n\r\nbảo hành 24 tháng\r\n\r\nLiên hệ: trung tâm bán sỉ Nội Thất Mai Lâm\r\n\r\ncửa hàng trưng bày: 2289 Huỳnh Tấn Phát, khu phố 7, thị trấn Nhà Bè, tp.HCM', 31, 2, '2021-04-26 01:27:40', NULL),
(40, 'Kệ Tivi TV-700 AAZZ', 19864000, '1_10_-min_832x832.jpg', 'chất liệu MDF phủ melamine cao cấp(dày 18mm) vân gỗ sần kết hợp sơn trắng 2k chống trày, chống cong vênh, mối mọt\r\n\r\nKệ tivi được thiết kế để tôn vinh vẻ đẹp tối giản với những đường nét hiện đại giản lược tạo sự đơn giản, trang nhã cho không gian. Tạo hình vuông vắn mang đậm phong cách Nhật đầy tinh tế cùng các góc cạnh bo tròn tạo hiệu ứng bắt sáng tốt hơn giúp sản phẩm tivi nổi bật hơn trong không gian bày trí.\r\n\r\nVới 3 tấm bề mặt chính được làm dày lên tới 3cm cực kỳ chắc chắn và vững chãi. Kết hợp với phần lưng gồm 3 thanh gỗ nan có tác dụng kết nối giữa các tầng với nhau, đảm bảo sự liên kết tối ưu nhất & liền mạch giữa các chi tiết. Là phần xương sống giúp cho việc chia thành 2 tầng kệ với nhiều ngăn, hộc được đảm bảo một cách tốt nhất.\r\n\r\nHộc kéo kệ được thiết kế dạng trơn với tay nắm âm nằm chìm bên dưới, tiết kiệm diện tích tốt hơn, dễ sử dụng hơn. 2 hộc lớn được gắn ray trượt cố định hai bên mỗi hộc tủ tạo sự chắc chắn, hạn chế tình trạng xê dịch, cho cảm giác êm tay khi kéo đẩy. 2 hộc nhỏ là hộc gỗ đơn giản, dạng ghép nối dễ thao tác.\r\n\r\nBốn chân trụ thấp vững chãi ở 4 góc tạo sự cân bằng, chân được làm hơi cong để đảm bảo tính thẩm mỹ cho tổng thể. Tuy nhiên mặt được làm đế bằng dạng mặt lớn giúp tăng diện tích tiếp xúc với mặt đất. Đảm bảo tính vững chãi và khả năng chịu lực tốt hơn cho tổng thể.\r\n\r\nKệ tivi gỗ sử dụng chất liệu gỗ gõ đỏ với màu sắc vàng đỏ tự nhiên rất thích hợp với những không gian nhiều ánh sáng như phòng khách gia đình. Giúp làm ấm không gian, cho ngôi nhà của bạn bớt đi phần trống trải, lạnh lẽo giúp phòng khách trở nên ấm cúng và thân thiện hơn với người dùng.\r\nmiễn phí vận chuyển và lắp ráp tp.hcm\r\nđơn hàng từ 20tr giảm 5%, từ 50tr giảm 10%\r\n\r\nhàng việt nam chất lượng cao\r\n\r\nhàng có sẵn, giao ngay trong ngày, thanh toán khi nhận hàng\r\n\r\nbảo hành 24 tháng\r\n\r\nLiên hệ: trung tâm bán sỉ Nội Thất Mai Lâm\r\n\r\ncửa hàng trưng bày: 2289 Huỳnh Tấn Phát, khu phố 7, thị trấn Nhà Bè, tp.HCM', 32, 6, '2021-04-26 01:29:15', '2021-06-03 22:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_permission` int(11) NOT NULL DEFAULT 1,
  `user_email_valid` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_username`, `user_password`, `user_permission`, `user_email_valid`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', 'admin', '$2y$12$4o/NfE4hi1kUOY4t5J3Eo.DwdVvo0GXFZxoE3mbKrBTCkC9AaiTrq', 9, 1, '2021-05-09 10:39:27', '2021-05-15 20:28:29'),
(4, 'tronghieu60s@gmail.com', 'admine', '$2y$12$4o/NfE4hi1kUOY4t5J3Eo.DwdVvo0GXFZxoE3mbKrBTCkC9AaiTrq', 1, 1, '2021-05-10 03:17:21', '2021-05-28 19:37:27'),
(5, 'tronghieu60s@set.edu.vn', 'admin122', '$2y$12$l0Srjjz0/elx1v49qktaSemK12V27gp4BZC/ROiE28I0XTuOdHCaa', 1, 0, '2021-05-25 18:23:55', '2021-05-25 18:23:55'),
(7, 'truongth2904@gmail.com', 'truongth2904', '$2y$12$t2L5uMrgvexGtfVv9gdGZ.gkrJrS0WeXGEZcu1R/WAxKehTNiifxK', 1, 1, '2021-05-25 19:53:38', '2021-05-25 19:55:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `categorizable`
--
ALTER TABLE `categorizable`
  ADD KEY `categorizable_category_id_foreign` (`category_id`),
  ADD KEY `categorizable_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_manufacturer_id_foreign` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categorizable`
--
ALTER TABLE `categorizable`
  ADD CONSTRAINT `categorizable_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `categorizable_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`manufacturer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
