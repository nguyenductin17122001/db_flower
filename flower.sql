-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 20, 2022 lúc 02:08 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `flower`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg'),
(141, 17, 13, 'pink rose', 12, 5, 'pink roses.jpg'),
(142, 17, 15, 'cottage rose', 15, 4, 'cottage rose.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'shaikh anas', 'shaikh@gmail.com', '0987654321', 'hi, how are you?'),
(14, 17, 'ozi', 'ozin@gmail.com', '9057994656', 'ok hgvb  yhyb '),
(15, 17, 'ozi', 'ozin@gmail.com', '9057994656', 'szfsfsf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(17, 14, 'shaikh anas', '0987654321', 'shaikh@gmail.com', 'credit card', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', cottage rose (3) , pink bouquet (1) , yellow queen rose (1) ', 80, '11-Mar-2022', 'pending'),
(18, 14, 'shaikh anas', '1234567899', 'shaikh@gmail.com', 'paypal', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', yellow queen rose (1) , pink rose (2) ', 40, '11-Mar-2022', ''),
(19, 16, 'nguyen duc tin', '9057994656', 'nguyenduccay1234@gmail.com', 'cash on delivery', 'flat no. 12 ngo van so, 156 nguyen tat thanj, 156 nguyen tat thanj, da nang, Viá»‡t Nam - 123456789', ', cottage rose (7) , red tulipa (1) , pink bouquet (1) , pink queen rose (1) ', 155, '17-Mar-2022', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'pink rose', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque error earum quasi facere optio tenetur.', 12, 'pink roses.jpg'),
(15, 'cottage rose', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque error earum quasi facere optio tenetur.', 15, 'cottage rose.jpg'),
(16, 'lavendor rose', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Rem, nobis tenetur voluptatibus officiis odit minus fugit dolore accusantium fuga ipsa!', 13, 'lavendor rose.jpg'),
(17, 'yellow tulipa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque error earum quasi facere optio tenetur.', 14, 'yellow tulipa.jpg'),
(18, 'red tulipa', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Rem, nobis tenetur voluptatibus officiis odit minus fugit dolore accusantium fuga ipsa!', 11, 'red tulipa.jpg'),
(19, 'pink bouquet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque error earum quasi facere optio tenetur.', 15, 'pink bouquet.jpg'),
(20, 'pink queen rose', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque error earum quasi facere optio tenetur.', 24, 'pink queen rose.jpg'),
(21, 'hoa hong', 'Æ°ofjf Æ°iuuuuuuf  inf ', 25, 'about-img-2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'jack', 'jack@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(17, 'ozi', 'ozin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg'),
(63, 16, 16, 'lavendor rose', 13, 'lavendor rose.jpg'),
(64, 16, 17, 'yellow tulipa', 14, 'yellow tulipa.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
