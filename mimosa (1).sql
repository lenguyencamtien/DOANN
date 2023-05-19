-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2021 lúc 03:49 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mimosa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_28_092317_create_tbl_admin_table', 1),
(6, '2021_10_29_035852_create_tbl_category_product', 2),
(7, '2021_10_29_063133_create_tbl_product', 3),
(8, '2021_11_01_122212_create_tbl_customer', 4),
(9, '2021_11_01_123233_create_tbl_customers', 5),
(10, '2021_11_01_141141_create_tbl_shipping', 6),
(11, '2021_11_05_131733_tbl_payment', 7),
(12, '2021_11_07_124541_tbl_order', 7),
(13, '2021_11_07_152926_tbl_order_details', 7),
(14, '2021_12_07_065332_create_tbl_contact', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'LNCT', '0356474041', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Bánh crepe', 'abc', 0, NULL, NULL),
(2, 'Bánh rau câu', 'abc', 0, NULL, NULL),
(3, 'Bánh mochi', 'abc', 0, NULL, NULL),
(4, 'Bánh tiramisu', 'abc', 0, NULL, NULL),
(6, 'Bánh mousse', 'abc', 0, NULL, NULL),
(7, 'Bánh kem', 'abc', 0, NULL, NULL),
(8, 'Bánh bông lan trứng muối', 'abc', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_phone`, `customer_email`, `customer_password`, `created_at`, `updated_at`) VALUES
(5, 'LNCT', '0356474041', 'camtien20032002@gmail.com', 'camtien20032002', NULL, NULL),
(6, 'LNCT', '0356474041', 'lnctien20it6@vku.udn.vn', 'camtien20032002', NULL, NULL),
(7, 'Lê Nguyễn Cẩm Tiên', '0356474041', 'abc@gmail.com', 'abc', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_information`
--

CREATE TABLE `tbl_information` (
  `info_id` int(11) NOT NULL,
  `info_contact` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `info_map` text COLLATE utf8_unicode_ci NOT NULL,
  `info_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_fanpage` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_information`
--

INSERT INTO `tbl_information` (`info_id`, `info_contact`, `info_map`, `info_logo`, `info_fanpage`) VALUES
(1, '<p><strong>Trụ Sở Đ&agrave; nẵng</strong></p>\r\n\r\n<p><strong>Địa Chỉ: 172 Huỳnh Văn Nghệ, P.Ho&agrave; Qu&yacute;, Q.Ngũ H&agrave;nh Sơn, Tp.Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>Email: mimosa@gmail.com</strong></p>\r\n\r\n<p><strong>Số điện thoại: Hotline </strong>0356474041 / 0359404032<strong> - Mr Thin</strong></p>\r\n\r\n<p><strong>Fanpage:&nbsp;<a href=\"https://www.facebook.com/banhkemdanangxuka/?__cft__[0]=AZU6_Yeq9x5i1gpKelaOUo3QqCceD_9u1DIap81f1GFA4jB3i8BONmVJ79FWWBCLwyXxL7eJjzenfOpm2GW__JylEIRBdMtDqkKwUZXLpDyUZZLGvKbTeOVnaABxDkzO1hiP5iGMkd89XmOn6WC18wE7&amp;__tn__=kC%2CP-R\">BÁNH KEM ĐÀ NẴNG - TI&Ecirc;̣M BÁNH XUKA</a></strong></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.738810452337!2d108.25104871512472!3d15.975010588939192!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2sus!4v1638368774601!5m2!1svi!2sus\" width=\"1170\" height=\"350\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'logo46.png', '<div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0\" nonce=\"Ryo5TB9D\"></script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/banhkemdanangxuka/\" data-tabs=\"message\" data-width=\"\" data-height=\"\"  width=\"570\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/banhkemdanangxuka/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/banhkemdanangxuka/\">BÁNH KEM ĐÀ NẴNG - TIỆM BÁNH XUKA</a></blockquote></div></p>\r\n                                        </div>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_status`, `order_code`, `created_at`, `updated_at`) VALUES
(12, 5, 26, '1', 'ff4cd', NULL, NULL),
(13, 5, 27, '1', '0d503', NULL, NULL),
(14, 5, 28, '1', '4c774', NULL, NULL),
(15, 5, 29, '1', '2e9ae', NULL, NULL),
(16, 5, 30, '1', 'ea63c', NULL, NULL),
(17, 5, 31, '1', '682e8', NULL, NULL),
(18, 5, 32, '1', 'ac5b8', NULL, NULL),
(19, 5, 33, '1', '7e3d2', NULL, NULL),
(20, 5, 34, '1', '64d5e', NULL, NULL),
(21, 5, 35, '1', '03136', NULL, NULL),
(22, 5, 36, '1', 'c1afb', NULL, NULL),
(23, 5, 37, '1', '5f24b', NULL, NULL),
(24, 5, 38, '1', 'ed9d0', NULL, NULL),
(25, 5, 70, '1', '7fa16', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(19, '2e9ae', 43, 'Bánh kem', '150000', 1, NULL, NULL),
(20, 'ea63c', 43, 'Bánh kem', '150000', 1, NULL, NULL),
(21, 'ac5b8', 43, 'Bánh kem', '150000', 1, NULL, NULL),
(22, '7e3d2', 21, 'Bánh tiramisu cốt chanh', '60000', 1, NULL, NULL),
(23, '64d5e', 26, 'Bánh mousse xoài', '150000', 1, NULL, NULL),
(24, '03136', 21, 'Bánh tiramisu cốt chanh', '60000', 1, NULL, NULL),
(25, 'c1afb', 21, 'Bánh tiramisu cốt chanh', '60000', 1, NULL, NULL),
(26, '5f24b', 27, 'Bánh crepe chuối', '30000', 1, NULL, NULL),
(27, '5f24b', 21, 'Bánh tiramisu cốt chanh', '60000', 1, NULL, NULL),
(28, 'ed9d0', 43, 'Bánh kem', '150000', 1, NULL, NULL),
(29, '7fa16', 46, 'Bánh kem', '200000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `post_id` int(11) NOT NULL,
  `post_title` tinytext NOT NULL,
  `post_desc` text NOT NULL,
  `post_content` text NOT NULL,
  `post_meta_desc` text NOT NULL,
  `post_meta_keywords` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_posts`
--

INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_desc`, `post_content`, `post_meta_desc`, `post_meta_keywords`, `post_status`, `post_image`) VALUES
(1, 'hướng dẫn làm bánh của MIMOSA', '<p>Nguy&ecirc;n liệu: phải được nhập từ những nguồn c&oacute; chất lượng như: trứng g&agrave; ngon, bột m&igrave; phải đảm bảo chất lượng, sữa tươi phải đảm bảo vệ sinh an to&agrave;n thực phẩm, v&agrave; thời gian lưu kho cho c&aacute;c nguy&ecirc;n liệu đ&oacute; kh&ocirc;ng được qu&aacute; l&acirc;u v&agrave; phải được bảo quản trong m&ocirc;i trường đ&uacute;ng chuẩn quy định &hellip;. M&ocirc;i trường l&agrave;m b&aacute;nh: b&aacute;nh phải được l&agrave;m trong m&ocirc;i trường sạch sẽ, c&ocirc;ng cụ l&agrave;m b&aacute;nh phải l&agrave; những vật liệu kh&ocirc;ng g&acirc;y độc...</p>', 'hướng dẫn làm bánh', 'abc', 'abc', 0, '261582048_246956450863409_3077247975027118784_n (2)17.jpg'),
(2, 'Kinh Nghiệm Làm Bánh Kem', '<p>Người ta cho rằng b&aacute;nh sinh nhật đầu ti&ecirc;n xuất hiện ở Đức v&agrave;o thời Trung Cổ. Người Đức ăn mừng ng&agrave;y sinh của con trẻ bằng b&aacute;nh, gọi lễ Kinderfest.<br />\r\nban đầu chỉ l&agrave; một sản phẩm th&ocirc; sơ giống như b&aacute;nh m&igrave;, nhưng sau đ&oacute; dần trở n&ecirc;n phức tạp hơn, đẹp hơn, ngon hơn v&agrave; được gọi l&agrave; Geburtstagorten....</p>', 'Người ta cho rằng bánh sinh nhật đầu tiên xuất hiện ở Đức vào thời Trung Cổ. Người Đức ăn mừng ngày sinh của con trẻ bằng bánh, gọi lễ Kinderfest.\r\nban đầu chỉ là một sản phẩm thô sơ giống như bánh mì, nhưng sau đó dần trở nên phức tạp hơn, đẹp hơn, ngon hơn và được gọi là Geburtstagorten.', 'abcd', 'abcd', 0, '263157448_414728103505286_3093896335690003402_n (1)65.jpg'),
(3, 'Cách Làm Bánh Flan Thơm Ngon Béo Ngậy Tại Nhà - Món Ngon Mỗi Tuần', '<p>C&aacute;ch l&agrave;m b&aacute;nh Flan cũng rất đơn giản, chị em c&oacute; thể thực hiện được tại nh&agrave;. Nhưng để l&agrave;m b&aacute;nh Flan th&agrave;nh c&ocirc;ng, ngon đ&uacute;ng điệu th&igrave; chị em cần thực hiện với c&ocirc;ng thức chuẩn. H&ocirc;m nay Anh qu&acirc;n Bakery xin hướng dẫn chi tiết c&aacute;ch l&agrave;m b&aacute;nh flan thơm ngon b&eacute;o ngậy tại nh&agrave;. B&aacute;nh Flan hay c&ograve;n gọi l&agrave; b&aacute;nh lăng, l&agrave; một m&oacute;n ăn vặt, tr&aacute;ng miệng rất được phụ nữ v&agrave; đặc biệt l&agrave; trẻ em y&ecirc;u th&iacute;ch....</p>', 'abc', 'abc', 'plan', 0, '261648360_1054603405327840_1658379359055386760_n (1)28.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_hot_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `product_hot_status`, `created_at`, `updated_at`) VALUES
(11, 3, 'Bánh mochi giọt nước', 'Mizu Mochi xuất hiện ở Nhật Bản vào mùa hè năm 2013 và nhanh chóng trở thành trào lưu ẩm thực mới không chỉ ở Nhật mà còn ở nhiều nước trên thế giới. Sở hữu vẻ ngoài trong veo, sự thanh khiết đến tột cùng, bánh mochi giọt nước đã khiến nhiều người phải mê mẩn và khao khát được nếm thử', 'Mizu Mochi xuất hiện ở Nhật Bản vào mùa hè năm 2013 và nhanh chóng trở thành trào lưu ẩm thực mới không chỉ ở Nhật mà còn ở nhiều nước trên thế giới. Sở hữu vẻ ngoài trong veo, sự thanh khiết đến tột cùng, bánh mochi giọt nước đã khiến nhiều người phải mê mẩn và khao khát được nếm thử', '30000', 'mochi134.jpg', 0, 1, NULL, NULL),
(12, 3, 'Bánh mochi trà xanh', 'Mochi trà xanh có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp kem tươi trà xanh cực kì thơm sẽ làm hài lòng thực khách.', 'Mochi trà xanh có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp kem tươi trà xanh cực kì thơm sẽ làm hài lòng thực khách.', '25000', 'mochi370.jpg', 0, 1, NULL, NULL),
(13, 3, 'Bánh mochi đậu đỏ', 'Mochi đậu đỏ có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp nhân đậu đỏ bùi béo, thơm lừng sẽ làm hài lòng thực khách.', 'Mochi đậu đỏ có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp nhân đậu đỏ bùi béo, thơm lừng sẽ làm hài lòng thực khách.', '20000', 'mochi268.jpg', 0, 1, NULL, NULL),
(14, 3, 'Bánh mochi đào', 'Mochi đào có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp nhân đào thơm dịu, ngọt ngào sẽ làm hài lòng thực khách.', 'Mochi đào có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp nhân đào thơm dịu, ngọt ngào sẽ làm hài lòng thực khách.', '30000', 'mochi415.jpg', 0, 0, NULL, NULL),
(15, 3, 'Bánh mochi sầu riêng', 'Mochi sầu riêng có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp nhân sầu riêng thơm lừng, ngọt ngào và béo ngậy sẽ làm hài lòng thực khách', 'Mochi sầu riêng có vỏ bánh dẻo mịn, mềm mát và thơm mùi sữa còn bên trong là lớp nhân sầu riêng thơm lừng, ngọt ngào và béo ngậy sẽ làm hài lòng thực khách', '30000', 'mochi53.jpg', 0, 1, NULL, NULL),
(16, 3, 'Bánh mochi kem dâu tằm', 'Bánh mochi tròn xinh, mịn màng được làm từ bột gạo nếp với tạo hình dễ thương. Bánh có mùi thơm từ dâu tằm, có vị chua nhẹ cùng vị béo ngọt của nhân kem đem đến món bánh mát lạnh lý tưởng cho mùa hè', 'Bánh mochi tròn xinh, mịn màng được làm từ bột gạo nếp với tạo hình dễ thương. Bánh có mùi thơm từ dâu tằm, có vị chua nhẹ cùng vị béo ngọt của nhân kem đem đến món bánh mát lạnh lý tưởng cho mùa hè', '30000', 'mochi630.jpg', 0, 1, NULL, NULL),
(17, 4, 'Bánh tiramisu mix', 'Tiramisu là loại bánh hấp dẫn có nguồn gốc từ nước Ý thơ mộng. Là một fan của đồ ngọt, còn đắn đo gì mà không lựa chọn tiramisu mix để thưởng thức trọn vẹn các hương vị khác nhau của loại bánh hấp dẫn này.', 'Tiramisu là loại bánh hấp dẫn có nguồn gốc từ nước Ý thơ mộng. Là một fan của đồ ngọt, còn đắn đo gì mà không lựa chọn tiramisu mix để thưởng thức trọn vẹn các hương vị khác nhau của loại bánh hấp dẫn này.', '75000', 'tiramisu273.jpg', 0, 1, NULL, NULL),
(19, 4, 'Bánh tiramisu matcha', 'Thưởng thức một chút vị không lẫn vào đâu được của matcha kết hợp cùng bánh tiramisu ngầy ngậy sẽ khiến thực khách khó lòng quên được', 'Thưởng thức một chút vị không lẫn vào đâu được của matcha kết hợp cùng bánh tiramisu ngầy ngậy sẽ khiến thực khách khó lòng quên được', '150000', 'tiramisu539.jpg', 0, 1, NULL, NULL),
(20, 4, 'Bánh tiramisu hộp', 'Thưởng thức một chút vị không lẫn vào đâu được của matcha, socola, dâu kết hợp cùng bánh tiramisu ngầy ngậy sẽ khiến thực khách khó lòng quên được', 'Thưởng thức một chút vị không lẫn vào đâu được của matcha, socola, dâu kết hợp cùng bánh tiramisu ngầy ngậy sẽ khiến thực khách khó lòng quên được', '30000', 'tiramisu644.jpg', 0, 1, NULL, NULL),
(21, 4, 'Bánh tiramisu cốt chanh', '<p>Sự kết hợp của hương chanh thanh mát, rượu nồng nàn, kem ngậy béo với mềm xốp của bánh là một kiểu mùi vị tròn đầy và hoàn hảo tới mức không gì có thể hơn được và cũng không gì có thể phá vỡ nổi</p>', '<p>Sự kết hợp của hương chanh thanh mát, rượu nồng nàn, kem ngậy béo với mềm xốp của bánh là một kiểu mùi vị tròn đầy và hoàn hảo tới mức không gì có thể hơn được và cũng không gì có thể phá vỡ nổi</p>', '60000', 'tiramisu795.jpg', 0, 0, NULL, NULL),
(22, 4, 'Bánh tiramisu dừa', '<p>Sự kết hợp của hương dừa thơm béo, rượu nồng nàn, kem ngậy béo với mềm xốp của bánh là một kiểu mùi vị tròn đầy và hoàn hảo tới mức không gì có thể hơn được và cũng không gì có thể phá vỡ nổi</p>', '<p>Sự kết hợp của hương dừa thơm béo, rượu nồng nàn, kem ngậy béo với mềm xốp của bánh là một kiểu mùi vị tròn đầy và hoàn hảo tới mức không gì có thể hơn được và cũng không gì có thể phá vỡ nổi</p>', '30000', 'tiramisu922.jpg', 0, 1, NULL, NULL),
(23, 4, 'Bánh tiramisu mix 2 vị', '<p>Tiramisu là loại bánh hấp dẫn có nguồn gốc từ nước Ý thơ mộng. Là một fan của đồ ngọt, còn đắn đo gì mà không lựa chọn tiramisu mix để thưởng thức trọn vẹn các hương vị khác nhau của loại bánh hấp dẫn này.</p>', '<p>Tiramisu là loại bánh hấp dẫn có nguồn gốc từ nước Ý thơ mộng. Là một fan của đồ ngọt, còn đắn đo gì mà không lựa chọn tiramisu mix để thưởng thức trọn vẹn các hương vị khác nhau của loại bánh hấp dẫn này.</p>', '50000', 'tiramisu853.jpg', 0, 1, NULL, NULL),
(24, 6, 'Bánh mousse dâu', '<p>Mousse dâu tây là món bánh luôn chiếm được cảm tình của người thưởng thức nhờ vào vị ngọt ngào của cốt bánh, vị chua nhẹ của phần mousse dâu và lớp jelly phủ mặt, chắc chắn cũng sẽ làm gia đình bạn thích mê.</p>', '<p>Mousse dâu tây là món bánh luôn chiếm được cảm tình của người thưởng thức nhờ vào vị ngọt ngào của cốt bánh, vị chua nhẹ của phần mousse dâu và lớp jelly phủ mặt, chắc chắn cũng sẽ làm gia đình bạn thích mê.</p>', '150000', 'moussedau540.jpg', 0, 1, NULL, NULL),
(25, 6, 'Bánh mousse việt quất', '<p>Mousse việt quất chính là chiếc bánh có vẻ ngoài đẹp mắt với lớp bánh gato mỏng bên dưới, phía trên là kem mịn, cùng lớp jelly việt quất sẽ để lại sự vấn vương nơi đầu lưỡi thực khách</p>', '<p>Mousse việt quất chính là chiếc bánh có vẻ ngoài đẹp mắt với lớp bánh gato mỏng bên dưới, phía trên là kem mịn, cùng lớp jelly việt quất sẽ để lại sự vấn vương nơi đầu lưỡi thực khách</p>', '150000', 'moussevq420.jpg', 0, 1, NULL, NULL),
(26, 6, 'Bánh mousse xoài', '<p>Bánh mousse xoài có màu vàng tươi, vị chua thanh của lớp mousse và jelly hòa quyện cùng phần đế bánh xốp mềm, ngọt ngào sẽ là món tráng miệng tuyệt vời cho cả gia đình.</p>', '<p>Bánh mousse xoài có màu vàng tươi, vị chua thanh của lớp mousse và jelly hòa quyện cùng phần đế bánh xốp mềm, ngọt ngào sẽ là món tráng miệng tuyệt vời cho cả gia đình.</p>', '150000', 'moussexoai481.jpeg', 0, 0, NULL, NULL),
(27, 1, 'Bánh crepe chuối', '<p>Bánh crepe chuối mềm mịn, lớp vỏ bánh chín đều và có màu vàng nhẹ. Cắn một miếng bánh cùng với kem tươi béo ngậy, sốt socola ngọt ngào và chuối chín thơm lừng liền cảm nhận được hương vị thơm ngon khó cưỡng.</p>', '<p>Bánh crepe chuối mềm mịn, lớp vỏ bánh chín đều và có màu vàng nhẹ. Cắn một miếng bánh cùng với kem tươi béo ngậy, sốt socola ngọt ngào và chuối chín thơm lừng liền cảm nhận được hương vị thơm ngon khó cưỡng.</p>', '30000', 'bs278.jpg', 0, 0, NULL, NULL),
(28, 1, 'Bánh crepe trân châu ngàn lớp', '<p>Bánh crepe trân châu ngàn lớp là sự kết hợp độc đáo giữa bánh crepe và trà sữa trân châu. Từng lớp bánh mềm mịn, kem béo ngậy hòa quyện cùng trân châu dai dai hứa hẹn sẽ chinh phục được thực khách.</p>', '<p>Bánh crepe trân châu ngàn lớp là sự kết hợp độc đáo giữa bánh crepe và trà sữa trân châu. Từng lớp bánh mềm mịn, kem béo ngậy hòa quyện cùng trân châu dai dai hứa hẹn sẽ chinh phục được thực khách.</p>', '30000', 'crepe788.jpg', 0, 1, NULL, NULL),
(29, 1, 'Bánh crepe hoa đậu biếc ngàn lớp', '<p>Bánh crepe hoa đậu biếc ngàn lớp có màu xanh dương lạ mắt, từng lớp bánh mỏng mềm mịn, bùi vị hòa quyện cùng các lớp kem tươi béo ngọt, đem đến một món bánh thơm ngon, khó cưỡng.</p>', '<p>Bánh crepe hoa đậu biếc ngàn lớp có màu xanh dương lạ mắt, từng lớp bánh mỏng mềm mịn, bùi vị hòa quyện cùng các lớp kem tươi béo ngọt, đem đến một món bánh thơm ngon, khó cưỡng.</p>', '30000', 'crepe616.jpg', 0, 1, NULL, NULL),
(30, 1, 'Bánh crepe phô mai ngàn lớp', '<p>Bánh crepe ngàn lớp phô mai sở hữu từng lớp bánh mềm mịn ngọt bùi đan xen cùng lớp kem phô mai mát lạnh, béo ngậy hứa hẹn sẽ mang đến cho bạn những miếng bánh ngon ngất ngây.</p>', '<p>Bánh crepe ngàn lớp phô mai sở hữu từng lớp bánh mềm mịn ngọt bùi đan xen cùng lớp kem phô mai mát lạnh, béo ngậy hứa hẹn sẽ mang đến cho bạn những miếng bánh ngon ngất ngây.</p>', '150000', 'crepe852.jpg', 0, 1, NULL, NULL),
(31, 1, 'Bánh crepe dâu tây ngàn lớp', '<p>Bánh crepe dâu tây có cách tạo bắt mắt, từng lớp bánh đan xen cùng kem tươi mềm mịn, béo ngậy hòa quyện thêm sốt dâu tây chua chua ngọt ngọt, vô cùng thơm ngon</p>', '<p>Bánh crepe dâu tây có cách tạo bắt mắt, từng lớp bánh đan xen cùng kem tươi mềm mịn, béo ngậy hòa quyện thêm sốt dâu tây chua chua ngọt ngọt, vô cùng thơm ngon</p>', '30000', 'crepe585.jpg', 0, 1, NULL, NULL),
(32, 1, 'Bánh crepe cầu vồng ngàn lớp', '<p>Bề ngoài bánh vô cùng bắt mắt, lớp bánh dai mềm quyện cùng vị béo thơm của lớp kem tươi. Nhâm nhi bánh cùng một tách trà thì còn gì tuyệt hơn đúng không nào. Bánh sẽ ngon hơn khi để ngăn lạnh 1 tiếng đồng hồ đấy</p>', '<p>Bề ngoài bánh vô cùng bắt mắt, lớp bánh dai mềm quyện cùng vị béo thơm của lớp kem tươi. Nhâm nhi bánh cùng một tách trà thì còn gì tuyệt hơn đúng không nào. Bánh sẽ ngon hơn khi để ngăn lạnh 1 tiếng đồng hồ đấy</p>', '40000', 'crepe417.jpg', 0, 0, NULL, NULL),
(34, 8, 'Bánh bông lan trứng muối', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '250000', 'bltm114.jpg', 0, 1, NULL, NULL),
(35, 8, 'Bánh bông lan trứng muối', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '200000', 'bltm25.jpg', 0, 1, NULL, NULL),
(36, 8, 'Bánh bông lan trứng muối', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '300000', 'bltm328.jpg', 0, 1, NULL, NULL),
(37, 8, 'Bánh bông lan trứng muối', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '<p>Bánh bông lan trứng muối là sự kết hợp hoàn hảo đến không ngờ, là sự hoà quyện giữa vị ngọt dịu của vỏ bánh bông lan với vị mằn mặn của trứng muối. Cầm một chiếc bánh lên, hương thơm thoang thoảng kích thích sự thèm ăn, cắn một miếng, vị ngọt ngọt mặn mặn quấn quýt ngay đầu lưỡi khiến người ăn không kìm lòng được mà cắn thêm một miếng nữa.</p>', '250000', 'bltm516.jpg', 0, 1, NULL, NULL),
(38, 2, 'Bánh rau câu', '<p>Bánh sinh nhật rau câu cực kỳ đẹp mắt với nhiều màu sắc khác nhau. Rau câu thì giòn dẻo vừa phải cùng vị béo ngọt của nước cốt dừa quyện đều với trái cây tươi mọng nước ẩm bên trong với vị chua chua, ngọt ngọt vô cùng bắt miệng.</p>', '<p>Bánh sinh nhật rau câu cực kỳ đẹp mắt với nhiều màu sắc khác nhau. Rau câu thì giòn dẻo vừa phải cùng vị béo ngọt của nước cốt dừa quyện đều với trái cây tươi mọng nước ẩm bên trong với vị chua chua, ngọt ngọt vô cùng bắt miệng.</p>', '250000', 'raucau14.jpg', 0, 1, NULL, NULL),
(39, 2, 'Bánh rau câu', '<p>Bánh sinh nhật rau câu cực kỳ đẹp mắt với nhiều màu sắc khác nhau. Rau câu thì giòn dẻo vừa phải cùng vị béo ngọt của nước cốt dừa quyện đều với trái cây tươi mọng nước ẩm bên trong với vị chua chua, ngọt ngọt vô cùng bắt miệng.</p>', '<p>Bánh sinh nhật rau câu cực kỳ đẹp mắt với nhiều màu sắc khác nhau. Rau câu thì giòn dẻo vừa phải cùng vị béo ngọt của nước cốt dừa quyện đều với trái cây tươi mọng nước ẩm bên trong với vị chua chua, ngọt ngọt vô cùng bắt miệng.</p>', '250000', 'raucau656.jpg', 0, 1, NULL, NULL),
(40, 2, 'Bánh rau câu', '<p>Bánh sinh nhật rau câu cực kỳ đẹp mắt với nhiều màu sắc khác nhau. Rau câu thì giòn dẻo vừa phải cùng vị béo ngọt của nước cốt dừa quyện đều với trái cây tươi mọng nước ẩm bên trong với vị chua chua, ngọt ngọt vô cùng bắt miệng.</p>', '<p>Bánh sinh nhật rau câu cực kỳ đẹp mắt với nhiều màu sắc khác nhau. Rau câu thì giòn dẻo vừa phải cùng vị béo ngọt của nước cốt dừa quyện đều với trái cây tươi mọng nước ẩm bên trong với vị chua chua, ngọt ngọt vô cùng bắt miệng.</p>', '250000', 'raucau773.jpg', 0, 1, NULL, NULL),
(41, 7, 'Bánh kem', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '200000', 'banhkem333.jpg', 0, 1, NULL, NULL),
(42, 7, 'Bánh kem', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '300000', 'banhkem427.jpg', 0, 1, NULL, NULL),
(43, 7, 'Bánh kem', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '150000', 'banhkem1019.jpg', 0, 0, NULL, NULL),
(44, 7, 'Bánh kem', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '150000', 'banhkem1148.jpg', 0, 0, NULL, NULL),
(45, 7, 'Bánh kem', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '150000', 'banhkem123.jpg', 0, 1, NULL, NULL),
(46, 7, 'Bánh kem', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '<p>Bánh kem sinh nhật tuy trang trí đơn giản nhưng lại vô cùng đẹp mắt, cốt bánh thì mềm ẩm, béo bùi quyện đều với lớp kem bơ mịn mượt ngọt thơm, ngon hết chỗ chê!</p>', '200000', 'banhkem1496.jpg', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_note`, `shipping_method`, `shipping_address`, `shipping_phone`, `shipping_email`, `created_at`, `updated_at`) VALUES
(26, '123123', '123123213123123', '2', '123213123123123123', '123123', '123123123', NULL, NULL),
(27, 'tiên', '123123123213123', '1', 'qnam', '12312123123123', '123@gmail.com', NULL, NULL),
(28, '123123', '123123123123', '2', '123123', '123123123', '123123123123', NULL, NULL),
(29, '123123', '123123123123', '1', '123123', '123123123', '123123123', NULL, NULL),
(30, 'lnct', 'giao hàng nhanh', '2', 'qnam', '0356474041', 'camtien20032002@gmail.com', NULL, NULL),
(31, 'lnct', 'giao hàng nhanh', '2', 'qnam', '0356474041', 'camtien20032002@gmail.com', NULL, NULL),
(32, 'LNCT', 'giao hàng nhanh', '2', 'QNam', '0356474041', 'camtien20032002@gmail.com', NULL, NULL),
(33, 'lnct', 'giao hàng nhanh', '2', 'qnam', '0356474041', 'camtien20032002@gmail.com', NULL, NULL),
(34, 'CT', 'giao hàng sớm', '2', 'qnam', '0356474041', 'lnct', NULL, NULL),
(35, 'lnct', 'abc', '2', 'qnam', '0356474041', 'lnct@gmail.com', NULL, NULL),
(36, 'lnct', 'abc', '2', 'qnam', '0356474041', 'abc@gmail.com', NULL, NULL),
(37, 'LNCT', 'abc', '2', 'QUANG NAM', '0356474041', 'camtien20032002@gmail.com', NULL, NULL),
(38, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(39, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(40, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(41, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(42, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(43, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(44, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(45, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(46, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(47, 'lnct', 'BXc', '2', '123123', '0356474041', 'lnct', NULL, NULL),
(48, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(49, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(50, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(51, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(52, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(53, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(54, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(55, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(56, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(57, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(58, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(59, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(60, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(61, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(62, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(63, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(64, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(65, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(66, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(67, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(68, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(69, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL),
(70, 'lnct', 'abc', '1', 'qnam', '0356474041', 'lnct', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_image`, `slider_status`) VALUES
(7, 'Slider 1', 'slide398.jpg', 1),
(8, 'Slider 2', 'slide110.jpg', 1),
(9, 'Slider 3', 'slide44.jpg', 1),
(10, 'Slider 4', 'slide227.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
