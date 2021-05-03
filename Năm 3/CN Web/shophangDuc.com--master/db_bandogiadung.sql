-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 01, 2018 lúc 09:28 AM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_bandogiadung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_partner` int(10) DEFAULT NULL,
  `cate_note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `id_partner`, `cate_note`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Bếp điện', 1, 'Tốt', '0000-00-00', NULL, b'1'),
(2, 'Lò vi xong', 2, 'Oki', '0000-00-00', NULL, b'0'),
(3, 'Nồi từ cơm', 3, NULL, NULL, NULL, b'0'),
(4, 'Chảo', NULL, NULL, '2018-02-23', '2018-02-23', NULL),
(5, 'Ấm đun nước', NULL, NULL, '2018-03-05', '2018-03-05', NULL),
(7, 'Bát cao cấp', NULL, NULL, '2018-03-31', '2018-03-31', NULL),
(11, 'iuygtfdsxcvbhnjk', NULL, 'bnn', '2018-03-31', '2018-03-31', NULL),
(18, 'Ấm đun nước', NULL, NULL, '2018-03-31', '2018-03-31', NULL),
(19, 'Ấm đun nước', NULL, 'ds', '2018-03-31', '2018-03-31', NULL),
(20, 'Ấm đun nước', NULL, 'hihi', '2018-03-31', '2018-03-31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `overview` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `live_chat` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `overview`, `phone`, `email`, `address`, `live_chat`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Vũ Thị Hường', 'Giám đốc công ty cổ phần DHT', 971861496, 'huongvt52@gmail.com', 'Phù Ninh- Phú Thọ', 'huongvt20197', NULL, NULL, NULL),
(2, 'Trần Bá Cương', NULL, NULL, NULL, NULL, NULL, '2018-02-04', '2018-02-04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `overview` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone`, `overview`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Hường', 1, 'huongvt@gmail.com', 'HÀ Nội', 987658765, 'okiki', NULL, NULL, '1'),
(2, 'Hường', 1, 'huongvt201@gmail.com', 'HN', 971861496, NULL, NULL, '2018-04-01', NULL),
(3, 'Cam Văn Phương', 1, 'phuongnt@gmail.com', 'Hà Nội', 971861496, NULL, '2018-02-06', '2018-04-01', 'oki');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `comment` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `id_user`, `id_product`, `comment`) VALUES
(1, 1, 1, 'good');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `overview` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `id_category` int(10) DEFAULT NULL,
  `is_active` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `image`, `overview`, `content`, `created_at`, `updated_at`, `id_category`, `is_active`) VALUES
(3, 'Germany is hot...', 'hwup_mon5.jpg', 'Rất nổi tiếng được quốc tế ưu chuộng', NULL, '2018-04-01', '2018-04-01', NULL, NULL),
(4, 'Hiện nay hàng Đức xuất hiện khắp châu lục', '2VNK_mon1.jpg', 'oki i know that :v :v', NULL, '2018-04-01', '2018-04-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `qty` int(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `total` double DEFAULT NULL,
  `payment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `order_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `id_customer`, `total`, `payment`, `order_status`, `order_note`, `created_at`, `updated_at`) VALUES
(2, 1, 2098765432, 'Tiền mặt', 'Đã thanh toán', 'Rất thích', NULL, '2018-04-01 08:51:11'),
(3, 1, 2, 'Cart visit', '1', 'Rất hay nhé', '2018-04-01 08:48:39', '2018-04-01 08:48:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `image`, `name`, `description`, `email`, `address`, `phone`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'U63t_15397845_766287623522690_1152785354_o.jpg', 'Cong ty THHH bếp điện', NULL, 'huongvt201@gmail.com', 'Đoan Hùng- Phú Thọ', 971861496, '0000-00-00', '2018-03-30', 1),
(2, 'GUnd_Screenshot (32).png', 'Công ty cổ phần tập đoàn bếp từ', NULL, 'caoth42@gmail.com', 'Kiến Xương- Thái Bình', 979124941, NULL, '2018-03-30', NULL),
(3, 'PKwz_Screenshot (31).png', 'Tập đoàn nồi cơm điện', 'hihihi', 'hocgioi@gmail.com', 'Hà Nội', 987654, NULL, '2018-03-30', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`id`, `name`, `email`, `password`, `token`, `created_at`, `updated_at`) VALUES
(5, NULL, 'huongvt52@wru.vn', NULL, '$2y$10$lXdna3cIA8S/eTQh.mdXHuCrIgVYf3KYbenLKuWZhGiUr./qkCrmS', '2018-03-17 17:15:35', NULL),
(6, NULL, 'huongvt201@gmail.com', NULL, '$2y$10$HkiYMhMVD7DPa7t4qAqKJ.GguPE/NSKeK73doa11mppO5vbLb30bK', '2018-03-30 20:12:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_category` int(10) DEFAULT NULL,
  `overview` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `price` double DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `is_active` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `id_category`, `overview`, `content`, `price`, `qty`, `discount`, `image`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'BỘ NỒI SHULTE-UFER', 3, NULL, NULL, 3800000, 1, 10, 'Ngdc_noi1.jpg', NULL, '2018-03-31', 0),
(2, 'Nồi Áp suất điện TZS First Autralia', 4, NULL, NULL, 234567, 1, NULL, 'lcxu_chao4.jpg', '2018-02-04', '2018-03-31', NULL),
(3, 'Chảo \"Made in Germany\"', 4, NULL, NULL, 90709709, 2, 10, 'CYVa_chao1.jpg', '2018-02-04', '2018-03-31', NULL),
(4, 'Chảo anilay Kungali', 4, NULL, NULL, 9876543, 1, NULL, 'tFOg_chao2.jpg', '2018-02-13', '2018-03-31', NULL),
(5, 'Bếp lẩu và nướng', 3, NULL, NULL, 50000000, NULL, NULL, 'SnIw_noi2.jpg', '2018-02-13', '2018-03-31', NULL),
(8, 'Nồi áp suất điện Icock', 3, NULL, NULL, 3850000, NULL, NULL, 'XxUX_noi3.jpg', '2018-02-13', '2018-03-31', NULL),
(9, 'NỒI HẦM SILVERCREST', 5, NULL, NULL, 2400000, NULL, NULL, 'DsLh_am1.jpg', '2018-02-13', '2018-03-31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Bật'),
(2, 'Không bật'),
(3, 'Đã duyệt'),
(4, 'Đang chờ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vuthihuong', 'huongvt201@gmail.com', 'vuthihuong', '1', 'vuthihuong', NULL, NULL),
(2, 'huong', 'huongvt52@gmail.com', '$2y$10$qrE25j9ptgAkJugR1fZXQOwkvwBd1uCTDV07AgDuQDorPRXgMt4ca', NULL, 'ym9exbiZIDpqtj1CGqLYJgPh3ldH5UEoSgmRPu0m6H8LMIVMTnLTIMMYuMVT', '2018-03-03 13:08:32', '2018-03-04 06:47:14'),
(3, 'cuong', 'cuongtb52@wru.vn', '$2y$10$yrl3W0ZHebHaiyT/NRp8BeJlCKOMdeeSe45CD0sto2TGbm0fb37NC', NULL, 'rIaUixpfhfrA8FPvoDvGnFXFdkeYzVm9iY1YxUWX7SqLarOkCVEq8FULDXtC', '2018-03-03 13:26:36', '2018-03-04 07:07:24'),
(4, 'adminviva', 'huongvt52@wru.vn', '$2y$10$sWI1H9ig2fF.kshe6LSMnewkZ4vrP6zuFUttC9OsA3y0ZfGFiBwm.', NULL, 'VsCA1dej2bRREK41iOwSJuIDx2WKixOduQTG5SL9Fapcdw1DK6sEEiGcrx8S', '2018-03-03 13:45:41', '2018-03-03 13:45:41'),
(5, 'Lê Văn Hiếu chó', 'hieulv52@wru.vn', '$2y$10$MhVtAp/8UGQq3LE7tkGNZuxa11eo3wDixucjD8.DRwxsE/5A0iK4W', NULL, 'PSb7QQsyjHmp5q6z8kw7Q0THFQinehMg98ib4WXmsocx2XHMsJTsTgu2Eh58', '2018-03-30 12:30:05', '2018-03-30 12:30:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_partner` (`id_partner`),
  ADD KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_category`),
  ADD KEY `is_actvice` (`is_active`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_type` (`id_category`),
  ADD KEY `is_active` (`is_active`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_partner`) REFERENCES `partner` (`id`);

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`is_active`) REFERENCES `status` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order_product` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
