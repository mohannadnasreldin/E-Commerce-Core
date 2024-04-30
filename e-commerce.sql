-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 05:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `title`) VALUES
(12, 'Computers & ', 'A distinguished group of Computers & Laptops that you can buy now', 'Computers & Laptops'),
(13, 'Smart Televisions', 'A distinguished group of smart television that you can buy now', 'smart television'),
(14, 'Clothes', 'A distinguished group of Clothes that you can buy now', 'Clothes'),
(15, 'Shoes', 'A distinguished group of shoes that you can buy now', 'shoes'),
(16, 'Accessories', 'A distinguished group of Accessories that you can buy now', 'Accessories'),
(17, 'Mobiles & Tablet', 'A distinguished group of Mobiles & Tablet  devices that you can buy now', 'Mobiles & Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `waiting` int(11) NOT NULL DEFAULT 0 COMMENT '0 => WITHING\r\n1 => ACCEPTED\r\n2 => Refused',
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `description`, `image`, `category_id`) VALUES
(57, 'Macbook Pro 14', '0001000', 'Macbook Pro 14\" Vertical Stand 2021 Black', 'image_1683131157945.jpg', 12),
(58, 'Apple MacBook Air', '20000', 'Apple MacBook Air laptop with M2 chip: 13.6-inch Liquid Retina display, 8GB RAM, 256GB SSD storage, 1080p FaceTime HD camera. Works with iPhone and iPad; Space Grey; English', 'image_1683131265284.jpg', 12),
(59, 'Samsung UHD Smart TV', '500', 'Samsung 50 Inch 4K UHD Smart LED TV with Built-in Receiver and Remote Control, Black', 'image_1683131412555.jpg', 13),
(60, 'LG LED Smart TV', '700', 'LG LED Smart TV 43 inch LM6370 Series Full HD HDR Smart LED TV - 43LM6370PVA', 'image_1683131467963.jpg', 13),
(61, 'Axelion Refresh ', '100', 'The Axelion Refresh is a fresh new running shoe that takes the Axelion design language to the next level. The upper features a molded saddle piece for added dimension and bold, exaggerated lacing. Plus, they\'re packed with support and will provide long-la', 'image_1683131616188.jpg', 15),
(62, 'Rolex Daytona', '50', 'The Daytona is equipped with calibre 4130, a self-winding mechanical chronograph movement developed and manufactured by Rolex', 'image_1683131736176.jpg', 16),
(64, 'Anker Soundcore Liberty Air 2 Pro', '80', 'Anker Soundcore Liberty Air 2 Pro True Wireless Earbuds, Targeted Active Noise Cancelling, PureNote Technology, LDAC, 6 Mics for Calls, 26H Playtime, HearID Personalized EQ, Wireless Charging', 'image_1683131980272.jpg', 16),
(65, 'Softride Enzo NXT ', '400', 'Softride Enzo NXT Running Shoes Men', 'image_1683132054881.jpg', 15),
(66, 'Samsung Galaxy S23 Ultra', '1600', 'Samsung Galaxy S23 Ultra, 256GB, 12 GB RAM, Mobile Phone, Dual SIM, Android Smartphone - Cream', 'image_1683132146947.jpg', 17),
(67, 'Apple iPhone 14', '1500', 'The iPhone 14 comes with 6.1-inch OLED display and Apple\'s improved Bionic A15 processor. On the back there is a Dual camera setup with 12MP main camera and 12MP Ultra-wide sensor. Prices start from 799$.', 'image_1683137265558.jpg', 17),
(68, 'T-Shirt', '30', 'A distinguished  T-Shirt that you can buy now', 'image_1683137919655.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `phonenumber` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `creditcard` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `email`, `password`, `type`, `phonenumber`, `status`, `token`, `creditcard`) VALUES
(20, 'mohannad', 'mohannd@email.com', '$2b$10$quIsjTps/Oi27VdV6npFl.YnWeeAHKdmgh5TJLh4twavIKUGvIedW', 0, 2147483647, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user-const-id` (`user_id`),
  ADD KEY `product-const-id` (`product_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user-order-id` (`user_id`),
  ADD KEY `product-order-id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `product-const-id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user-const-id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `product-order-id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user-order-id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
