-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2021 lúc 09:23 AM
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
(1, 'Altari Sofa', 69999, 'img_1000.jpg', 'Overview\r\nIf style is the question, then the Altari sofa is the answer. Sporting clean lines and sleek track arms, the decidedly contemporary profile is enhanced with plump cushioning and a chenille-feel upholstery that\'s so pleasing to the touch. Sure to play well with so many color schemes, this sofa in richly neutral alloy includes a pair of understated floral pattern pillows for fashionably fresh appeal.\r\nProduct Details\r\n Corner-blocked frame\r\n Attached back and loose seat cushions\r\n High-resiliency foam cushions wrapped in thick poly fiber\r\n 2 decorative pillows included\r\n Pillows with soft polyfill\r\n Polyester upholstery and pillows\r\n Exposed feet with faux wood finish\r\n Platform foundation system resists sagging 3x better than spring system after 20,000 testing cycles by providing more even support\r\n Smooth platform foundation maintains tight, wrinkle-free look without dips or sags that can occur over time with sinuous spring foundations', 6, 1, NULL, NULL),
(2, 'Giường Ngủ Gỗ Tràm MOHO MALAGA 302', 3490000, 'img_5969.jpg', 'Giường gỗ MALAGA đến từ nội thất MOHO với các kích thước 1m2, 1m6 và 1m8 cho bạn sự lựa chọn đa dạng. Giường ngủ sử dụng chất liệu gỗ tràm hoàn toàn tự nhiên, đảm bảo độ bền và chắc chắn.', 1, 1, '2021-04-26 20:33:42', '2021-04-26 20:33:42'),
(3, 'Bộ Bàn Ăn Gỗ Cao Su Tự Nhiên MOHO VLINE 601', 5990000, 'img_5970.jpg', '- Gỗ cao su có thớ gỗ dày, màu mắc vô cùng bắt mắt và chất gỗ vô cùng bền bỉ, rất chắc và khá nặng tay. ', 1, 1, '2021-04-26 20:35:21', '2021-04-26 20:35:21'),
(4, 'Giường Ngủ Gỗ Tràm MOHO VLINE 601 Nhiều Kích Thước', 4990000, 'img_5971.jpg', 'Các thiết trong bộ sưu tập nội thất VLINE mang trong mình nét đẹp đặc trưng của hồn Việt cùng vẻ đẹp năng động của thời đại.', 1, 1, '2021-04-26 20:39:08', '2021-04-26 20:39:08'),
(5, 'BÀN GÓC TS1657', 3750000, 'img_5972.jpg', 'Dài: 500\r\nRộng: 550', 1, 1, '2021-04-26 21:02:43', '2021-04-26 21:02:43'),
(6, 'GHẾ GIÁM ĐỐC A1601', 6350000, 'img_5973.jpg', 'ghế giám đốc đẹp vl', 1, 1, '2021-04-26 21:04:02', '2021-04-26 21:04:02'),
(7, 'THẢM ROSE 6-2', 5450000, 'img_5968.jpg', '\r\nDài: 230 * Rộng: 160', 1, 1, '2021-04-26 21:09:19', '2021-04-26 21:09:19'),
(8, 'Ghế Lazboy Pinnacle 10T512 ', 35500000, 'img_5974.jpg', 'Kích thước: D850-R800-C1000mm\r\nVật liệu:\r\nKhung gỗ cao su bọc da bò tự nhiên 100%', 1, 1, '2021-04-26 21:18:55', '2021-04-26 21:18:55'),
(9, 'Sofa Miami 2 chỗ hiện đại vải hồng', 13900000, 'img_5975.jpg', 'Sofa Miami 2 chỗ là một thiết kế tối giản cho không gian phòng khách hiện đại, chất liệu sofa vải cao cấp trên tông màu xám nhạt rất dễ dàng phối hợp cùng các sản phẩm khác', 1, 1, '2021-04-26 21:21:02', '2021-04-26 21:21:02'),
(10, 'Tủ Tivi Miami', 13900000, 'img_5976.jpg', 'Kích thước: D1700-R450-C500\r\nVật liệu:\r\nGỗ sồi tự nhiên + MDF chống ẩm', 1, 1, '2021-04-26 21:23:27', '2021-04-26 21:23:27'),
(11, 'Sofa Miami 3 chỗ và 1 armchair hiện đại ', 23900000, 'img_5977.jpg', 'Kích thước: D1965 - R835 - C805 | D840 - R835 - C805\r\nVật liệu:\r\nKhung gỗ - Bọc vải cao cấp', 1, 1, '2021-04-26 21:24:29', '2021-04-26 21:24:29'),
(12, 'Giường ngủ gỗ Harmony 1m6', 10900000, 'img_5978.jpg', 'Kích thước: D2000- R1600- C1210\r\nVật liệu:\r\nGỗ sồi, tràm kết hợp MDF sơn trắng', 1, 1, '2021-04-26 21:25:44', '2021-04-26 21:25:44'),
(13, 'Giường hộc kéo Iris 1m6 Stone', 14900000, 'img_5979.jpg', 'Giường hộc kéo Iris 1m6 với thiết kế đóng nút đầu giường, điểm đặc biệt là bốn ngăn chứa đồ rộng thuận tiện cất những vật dụng trong phòng ngủ như gối, mền, drap hết sức gọn gàng', 1, 1, '2021-04-26 21:28:35', '2021-04-26 21:28:35'),
(14, 'Bàn đầu giường IRIS mẫu 2', 2900000, 'img_5980.jpg', 'Kích thước: D500-R400-C530mm\r\nVật liệu:\r\nMDF bọc vải', 1, 1, '2021-04-26 21:30:22', '2021-04-26 21:30:22'),
(15, 'Bàn đầu giường Osaka', 6900000, 'img_5981.jpg', 'Kích thước: D550 - R480 - C510 mm\r\nVật liệu:\r\nGỗ Oak - MDF veneer Oak - Inox 304 màu gold', 1, 1, '2021-04-26 21:31:41', '2021-04-26 21:31:41'),
(16, 'Bàn đầu giường 3 hộc kéo', 7100000, 'img_5982.jpg', 'Kích thước: D360- R480- C700 mm\r\nVật liệu:\r\nGỗ thông - MDF sơn', 1, 1, '2021-04-26 22:02:36', '2021-04-26 22:02:36'),
(17, 'SO-522 Sofa', 54184000, 'SO-5223_dbcedd85-accd-4619-8a46-2ff6cfbb1fbb_960x960.jpg', 'Bộ Sofa da nhập khẩu Malaysia SO-522 (Keira) có kích thước vừa phải, phù hợp với không gian phòng khách vừa và lớn. Thiết kế đơn giản, vuông vức mang phong khách hiện đại, sang trọng. Lưng tựa được thiết kế mềm mại tạo cảm giác thoải mái và êm ái cho người ngồi.\r\nSản phẩm được sản xuất và nhập khẩu hoàn toàn từ Malaysia.\r\nSofa Malaysia được thế giới biết đến với thiết kế hiện đại, kỹ thuật sản xuất tiên tiến, độ bền cao. Tất cả sản phẩm sử dụng các vật liệu thân thiện với môi trường, không độc hại. COZY tự hào là nhà phân phối độc quyền của các sản phẩm nội thất cao cấp Malaysia tại Việt Nam.\r\nCOZY là thương hiệu phân phối sản phẩm nội thất hàng đầu với mức giá ưu đãi ĐỘC QUYỀN.', 1, 0, '2021-04-27 03:51:55', NULL),
(18, 'SO-521 Sofa Chữ U', 52104000, 'SO-521-min_960x960.jpg', 'Bộ Sofa da góc chữ U nhập khẩu Malaysia SO-521 có kích thước vừa, lớn phù hợp với không gian phòng khách rộng. Thiết kế vuông vức mang phong khách hiện đại, sang trọng. Lưng tựa có thể điều khiển bật nhiều chế độ, tạo sự linh hoạt và thoải mái cho người sử dụng.\r\nSản phẩm được sản xuất và nhập khẩu hoàn toàn từ Malaysia.\r\nSofa Malaysia được thế giới biết đến với thiết kế hiện đại, kỹ thuật sản xuất tiên tiến, độ bền cao. Tất cả sản phẩm sử dụng các vật liệu thân thiện với môi trường, không độc hại. COZY tự hào là nhà phân phối độc quyền của các sản phẩm nội thất cao cấp Malaysia tại Việt Nam.', 1, 0, '2021-04-27 03:55:39', NULL),
(19, 'DI-635 Bàn Ăn + 6 Ghế', 22360000, 'DI-635-min_960x960.jpg', 'Sản phẩm được nhập khẩu từ công ty Hong Kong, nhà máy đặt tại Trung Quốc.\r\nBộ bàn ăn được thế giới biết đến với thiết kế hiện đại, kỹ thuật sản xuất tiên tiến, độ bền cao. Tất cả sản phẩm sử dụng các vật liệu thân thiện với môi trường, không độc hại. COZY tự hào là nhà phân phối độc quyền của các sản phẩm nội thất cao cấp Hong Kong tại Việt Nam.\r\nKhung sườn: Gỗ MDF, mặt kính trắng.\r\nGhế ăn bọc da tổng hợp, màu cappuchino, chân ghế ăn bằng thép sơn phủ.', 1, 0, '2021-04-27 03:59:37', NULL),
(20, 'DI-620 Bàn Ăn + 6 Ghế', 19344000, 'z2265726501208_dcc2c7b3b5cb3a98c80ed349fd27e770_960x960.jpg', 'Khiêm tốn và thanh lịch, PARMA có kích thước vừa phải phù hợp với một không gian ấm cúng. Mặt bàn ốp Ceramic Ý cao cấp có khả năng chống trầy, chịu lực và chiu nhiệt đến 1200°C.\r\nSản phẩm được nhập khẩu từ công ty Hong Kong.\r\nBộ bàn ăn được thế giới biết đến với thiết kế hiện đại, kỹ thuật sản xuất tiên tiến, độ bền cao. Tất cả sản phẩm sử dụng các vật liệu thân thiện với môi trường, không độc hại. COZY tự hào là nhà phân phối độc quyền của các sản phẩm nội thất cao cấp Hong Kong tại Việt Nam.', 1, 0, '2021-04-27 04:02:06', NULL),
(21, 'Bàn cafe TA-641', 5300000, 'TA-641_960x960.jpg', 'Kích thước L-W-H lần lượt là chiều dài-rộng-cao của sản phẩm.\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với bộ sofa và không gian nhà hay không', 1, 0, '2021-04-27 04:03:53', NULL),
(22, 'Bàn cafe TA-701', 10800000, '4_e9276a29-1109-4683-9f94-6dea692a396d_960x960.jpg', 'Kích thước L-W-H lần lượt là chiều dài-rộng-cao của sản phẩm.\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với bộ sofa và không gian nhà hay không.', 1, 0, '2021-04-27 04:06:48', NULL),
(23, 'TA-671 Bàn Cafe', 10000000, 'TA-671_960x960.jpg', 'Mặt bàn làm từ đá cẩm thạch cao cấp, cấu tạo đá cẩm thạch tự nhiên nguyên khối, được phủ lớp chống thấm ẩm và lớp sơn mài bóng gương để vừa đảm bảo độ bền và tuổi thọ của sản phẩm  vừa giữ độ thẩm mỹ cao với các đường vân đá tự nhiên.', 1, 0, '2021-04-27 04:11:48', NULL),
(24, 'SO-522 Sofa 1 Chỗ', 9776000, 'SO-5222_2_960x960.jpg', 'Bộ Sofa da nhập khẩu Malaysia SO-522 (Dark Grey) có kích thước vừa phải, phù hợp với không gian phòng khách vừa và lớn. Thiết kế đơn giản, vuông vức mang phong khách hiện đại, sang trọng. Lưng tựa được thiết kế mềm mại tạo cảm giác thoải mái và êm ái cho người ngồi.\r\nKhung sườn: gỗ đỏ (Malaysia) là loại gỗ cứng và đã xử lý mối mọt theo tiêu chuẩn xuất khẩu.\r\nNệm mút: Malaysia.\r\nDa Bò nhập khẩu từ Ý/PVC từ Malaysia.', 1, 0, '2021-04-27 04:14:55', NULL),
(25, 'SO-903 Sofa 1 chỗ', 15912000, 'SO-903_6_0e01f3fe-83dd-4958-ba46-cfccc4cc7d4d_832x832.jpg', 'Bộ Sofa da Nhật Bản SO-903 có kích thước nhỏ gọn, cho phòng khách nhỏ nhắn, mang đậm nét sang trọng vốn có của nghệ thuật thiết kế nội thất Nhật Bản. Với tựa đầu cao của sofa mang lại sự thoải mái và thư giãn cho người ngồi.\r\nBộ Sofa da được nhập khẩu từ công ty Nhật Bản, nhà máy đặt tại Việt Nam.\r\nSofa Nhật Bản đại diện cho dòng sản phẩm nội thất đương đại cao cấp, được sản xuất với quy trình kiểm soát chất lượng gắt gao nhất từ người Nhật.\r\nCác sản phẩm có các chi tiết được chăm chút tỉ mỉ, mang hơi hướng thiết kế hiện đại của thế giới nhưng vẫn theo các tiêu chuẩn nhân trắc học của người Á Đông.\r\nDòng sofa Nhật có thể xem là sản phẩm lý tưởng dành cho những khách hàng yêu thích vẻ đẹp và chất lượng hoàn hảo đến từ Nhật Bản.', 1, 0, '2021-04-27 04:17:51', NULL),
(26, 'SO-810 Sofa 1 Chỗ', 75920000, 'Cozy-Day23228copy_5b252e85-2f46-4287-9102-ba7eae73e867_832x832.jpg', 'Bộ Sofa da nhập khẩu Ý SO-810 có kích thước vừa phải, phù hợp với nhiều kiểu không gian phòng khách với thiết kế theo phong khách hiện đại, sang trọng.\r\nBộ Sofa SO-810 thuộc dòng sofa cao cấp nhập khẩu nguyên đai nguyên kiện từ Italy.\r\nĐược làm bằng 100% da bò mềm, mịn với vân da chọn lọc theo tiêu chuẩn quốc tế, không gây dị ứng và thân thiện với môi trường.\r\nNệm mút của sản phẩm có độ bền cao. Dáng ghế và độ đàn hồi vẫn được giữ nguyên khi sử dụng trong thời gian dài.\r\nCác phụ kiện đi kèm trong sản phẩm đều được chọn lọc kĩ càng và kiểm duyệt một cách nghiêm ngặt.', 1, 0, '2021-04-27 04:21:54', NULL),
(27, 'CH-704 GHẾ THƯ GIÃN', 17368000, '5_832x832.jpg', 'Công ty Hongkong, nhà máy đặt tại Trung Quốc.\r\nMicrofiber màu cream.\r\nChân gỗ tần bì đặc màu đen.\r\nMàu sắc: màu Cream.', 1, 0, '2021-04-27 04:26:22', NULL),
(28, 'ST-703 GHẾ THƯ GIÃN', 9152000, '10_832x832.jpg', 'Công ty Hongkong, nhà máy đặt tại Trung Quốc.\r\nMặt ngồi bọc bằng microfiber T903.\r\nMàu sắc: màu Cream.', 1, 0, '2021-04-27 04:28:38', NULL),
(29, 'SO-562 Sofa Chữ L', 51272000, 'z2287245879670_38367fd43d556213ef9ae0769c9073d2_832x832.jpg', 'Bộ Sofa da góc chữ L thư giãn nhập khẩu Malaysia SO-562 có kích thước vừa, lớn phù hợp với không gian phòng khách vừa và lớn. Được điều khiển bằng cơ điện, có thể bật ra thành ghế thư giãn, có hộc để đựng đồ rất thích hợp cho nhu cầu nghỉ ngơi của gia đình.\r\nSản phẩm được sản xuất và nhập khẩu hoàn toàn từ Malaysia.\r\nSofa Malaysia được thế giới biết đến với thiết kế hiện đại, kỹ thuật sản xuất tiên tiến, độ bền cao. Tất cả sản phẩm sử dụng các vật liệu thân thiện với môi trường, không độc hại. COZY tự hào là nhà phân phối độc quyền của các sản phẩm nội thất cao cấp Malaysia tại Việt Nam.\r\nKhung sườn: gỗ đỏ (Malaysia) là loại gỗ cứng và đã xử lý mối mọt theo tiêu chuẩn xuất khẩu.', 1, 0, '2021-04-27 04:31:45', NULL),
(30, 'DI-802 Bàn Ăn + 6 Ghế', 19608000, 'awfw_960x960.jpg', 'Bộ bàn ăn Gỗ Óc Chó nguyên khối đặc + 6 Ghế.\r\nXuất xứ: Việt nam xuất khẩu Châu Âu.\r\nChất liệu:\r\nGỗ Óc Chó nguyên khối đặc nhập Thụy Điển\r\nGhế CHR-690 Đệm ngồi bọc vải, chân gỗ óc chó', 1, 0, '2021-04-27 04:34:26', NULL),
(31, 'SO-812 Sofa Bộ 4-2', 134160000, 'Cozy-Day23217copy_960x960.jpg', 'Bộ Sofa da nhập khẩu Italy SO-812 có thiết kế sang trọng, hiện đại, phù hợp với không gian phòng khách lớn. \r\nBộ Sofa SO-812 thuộc dòng sofa cao cấp nhập khẩu nguyên đai nguyên kiện từ Italy.\r\nĐược làm bằng 100% da bò mềm, mịn với vân da chọn lọc theo tiêu chuẩn quốc tế, không gây dị ứng và thân thiện với môi trường.\r\n\r\nNệm mút của sản phẩm có độ bền cao. Dáng ghế và độ đàn hồi vẫn được giữ nguyên khi sử dụng trong thời gian dài.\r\n\r\nCác phụ kiện đi kèm trong sản phẩm đều được chọn lọc kĩ càng và kiểm duyệt một cách nghiêm ngặt.', 1, 0, '2021-04-27 05:05:44', NULL),
(32, 'STA-731C BÀN GÓC', 3328000, 'STA-731C_bf0c8d8d-e1ce-4364-9cda-da19df446402_832x832.jpg', 'Kích thước L-W-H lần lượt là chiều dài-rộng-cao của sản phẩm\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với bộ sofa và không gian nhà hay không', 1, 0, '2021-04-27 05:09:33', NULL),
(33, 'Tủ Trang Trí CA-620', 14872000, 'Cozy-07-013502copy_960x960.jpg', 'Mặt trên: MDF + veneer tro màu đen + ceramic carrara trắng\r\nThân: MDF + veneer tro màu đen\r\nChân: kim loại sơn tĩnh điện màu đen', 1, 0, '2021-04-27 05:15:23', NULL),
(34, 'Tủ Trang Trí CA-622', 15808000, 'CA-622-01_832x832.jpg', 'Thân: MDF + veneer sồi đỏ màu sô cô la\r\nCửa: nhôm + kính cường lực màu nâu\r\nChân: kim loại sơn tĩnh điện màu đen', 1, 0, '2021-04-27 05:16:29', NULL),
(35, 'Tủ Trang Trí NT-902', 7280000, 'CaptureOneSession1640-2_800x800.jpg', 'Việc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với không gian nhà hay không, cũng như có thể vận chuyển được qua cửa/cầu thang/hành lang/thang máy...', 1, 0, '2021-04-27 05:19:05', NULL),
(36, 'Tủ Trang Trí NT-903', 8216000, 'CaptureOneSession1494-01-Copy_800x800.jpg', 'MDF màu đen và mặt trên là microfiber màu HM-02A.\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với không gian nhà hay không, cũng như có thể vận chuyển được qua cửa/cầu thang/hành lang/thang máy...', 1, 0, '2021-04-27 05:21:19', NULL),
(37, 'GIƯỜNG NGỦ BE-720', 57824000, 'BE-720_832x832.jpg', 'Da Ý mặt trước da thật, mặt sau microfiber.\r\n\r\nChân gỗ tần bì đặc sơn màu Walnut.\r\n\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với không gian nhà hay không, cũng như có thể vận chuyển được qua cửa/cầu thang/hành lang/thang máy...', 1, 0, '2021-04-27 05:23:31', NULL),
(38, 'Bàn cafe TA-674A', 8700000, 'TA-674A-01_960x960.jpg', 'Mặt bàn :Mặt đá cẩm thạch đen tự nhiên nguyên bản , nguyên khối, phủ lớp bóng gương.\r\nKích thước L-W-H lần lượt là chiều dài-rộng-cao của sản phẩm\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với bộ sofa và không gian nhà hay không', 1, 0, '2021-04-27 05:25:54', NULL),
(39, 'Kệ Tivi TV-645', 8528000, 'z2280762993719_782c603dfa8560295036306282ee80ae_960x960.jpg', 'Gỗ tần bì ốp Matt Khaki + Kính màu  tuyết trắng + Chân sắt', 1, 0, '2021-04-27 05:27:40', NULL),
(40, 'Kệ Tivi TV-700', 19864000, '1_10_-min_832x832.jpg', 'Mặt ceramic + MDF màu rose gold\r\n\r\nchân inox\r\nViệc đo kích thước là cần thiết vì điều đó giúp quý khách hàng biết chắc chắn sản phẩm được mua có phù hợp với không gian nhà hay không, cũng như có thể vận chuyển được qua cửa/cầu thang/hành lang/thang máy...\r\n', 1, 0, '2021-04-27 05:29:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taxonomies`
--

CREATE TABLE `taxonomies` (
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taxonomy_relationships`
--

CREATE TABLE `taxonomy_relationships` (
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `manufacturer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taxonomy_relationships`
--
ALTER TABLE `taxonomy_relationships`
  MODIFY `taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
