-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 04:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nextgen`
--

-- --------------------------------------------------------

--
-- Table structure for table `apple`
--

CREATE TABLE `apple` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apple`
--

INSERT INTO `apple` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Apple Iphone 16 Pro Max 512 GB', 699900.00, 'apple_uploads/iPhone-16-Pro-Max.png', 50, 20.00, 5.00),
(2, 'Apple Iphone 16 Pro    512 GB', 569900.00, 'apple_uploads/Apple-iPhone-16-Pro.png', 50, 20.00, 5.00),
(3, 'Apple Iphone 16 Plus    512 GB', 499900.00, 'apple_uploads/Apple-iPhone-16-Plus.png', 50, 20.00, 4.50),
(4, 'Apple Iphone 16 5G       256 GB', 399900.00, 'apple_uploads/Apple-iPhone-16.png', 50, 13.00, 4.50),
(5, 'Apple Iphone 15 Pro Max  512 GB', 449900.00, 'apple_uploads/Apple-iPhone-15-Pro-Max.jpg', 0, 10.00, 5.00),
(6, 'Apple Iphone 15 Pro  256 GB', 399900.00, 'apple_uploads/Apple-iPhone-15-Pro.jpg', 50, 5.00, 5.00),
(7, 'Apple Iphone 15 Plus  128 GB', 359900.00, 'apple_uploads/Apple-iPhone-15-plus.jpg', 0, 19.00, 4.50),
(8, 'Apple Iphone 15 5G  256 GB', 354900.00, 'apple_uploads/Apple-iPhone-15.jpg', 50, 23.00, 4.50),
(9, 'Apple Iphone 14 Pro Max   512 GB', 619900.00, 'apple_uploads/Apple-iPhone-14-Pro-Max.jpg', 0, 20.00, 5.00),
(10, 'Apple Iphone 14 Pro    512 GB', 509000.00, 'apple_uploads/Apple-iPhone-14-pro.jpg', 50, 24.00, 5.00),
(11, 'Apple Iphone 14 Plus   256 GB', 449900.00, 'apple_uploads/Apple-iPhone-14-Plus.jpg', 0, 10.00, 4.50),
(12, 'Apple Iphone 14 5G   128 GB', 359900.00, 'apple_uploads/iphone-14.jpg', 0, 37.00, 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `honor`
--

INSERT INTO `honor` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Honor Magic 6 Pro 5G 12GB RAM 512GB', 399900.00, 'honor_uploads/HON-MAGIC-6PRO.webp', 25, 4.00, 5.00),
(2, 'Honor Pad X9 4GB RAM 128GB', 89900.00, 'honor_uploads/HON-PAD-X9.webp', 25, 9.00, 4.50),
(3, 'Honor 90 5G 12GB RAM 512GB', 175900.00, 'honor_uploads/HON-H90.webp', 25, 6.00, 5.00),
(4, 'Honor 90 Lite 8GB RAM 256GB', 104900.00, 'honor_uploads/HON-H90LITE.webp', 0, 12.00, 3.50),
(5, 'Honor X9b 5G 12GB RAM 256GB', 134900.00, 'honor_uploads/HON-X9B.webp', 25, 5.00, 4.50),
(6, 'Honor X9a 5G 8GB RAM 256GB', 129900.00, 'honor_uploads/Honor X9a.jpg', 25, 8.00, 4.50),
(7, 'Honor X8b 4G 8GB RAM 512GB', 101900.00, 'honor_uploads/HON-X8B.webp', 25, 10.00, 4.50),
(8, 'Honor X8a 4G 8GB RAM 128GB', 86900.00, 'honor_uploads/Honor X8a.jpg', 0, 11.00, 3.50),
(9, 'Honor X7b 4G 8GB RAM 256GB', 79900.00, 'honor_uploads/HON-X7B.webp', 25, 16.00, 3.50),
(10, 'Honor X6b 4G 4GB RAM 128GB', 59900.00, 'honor_uploads/HON-X6B.webp', 25, 12.00, 3.50),
(11, 'Honor X6a 4G 4GB RAM 128GB', 56900.00, 'honor_uploads/HON-X6A-4.webp', 0, 10.00, 3.50),
(12, 'Honor x5 Plus 4GB RAM 64GB', 49900.00, 'honor_uploads/HON-X5PLUS.webp', 25, 18.00, 3.50);

-- --------------------------------------------------------

--
-- Table structure for table `huawei`
--

CREATE TABLE `huawei` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `huawei`
--

INSERT INTO `huawei` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Huawei Nova Y90 8GB RAM 128GB', 89900.00, 'huawei_uploads/Huawei nova Y90.jpg', 40, 14.00, 4.50),
(2, 'Huawei Nova Y71 8GB RAM 128GB', 69900.00, 'huawei_uploads/Huawei nova Y71.jpg', 40, 12.00, 4.50),
(3, 'Huawei Nova Y70 8GB RAM 128GB', 75900.00, 'huawei_uploads/Huawei nova Y70.jpg', 40, 6.00, 4.50),
(4, 'Huawei Nova Y61 6GB RAM 64GB', 53900.00, 'huawei_uploads/Huawei nova Y61.jpg', 0, 12.00, 3.50),
(5, 'Huawei Nova 9 SE 8GB RAM 128GB', 79900.00, 'huawei_uploads/Huawei nova 9 SE.jpg', 0, 5.00, 4.50),
(6, 'Huawei Nova 8i 8GB RAM 128GB', 89900.00, 'huawei_uploads/Huawei nova 8i.jpg', 0, 5.00, 4.50),
(7, 'Huawei Nova 11i 8GB RAM 256GB', 89900.00, 'huawei_uploads/Huawei nova 11i.jpg', 40, 12.00, 4.50),
(8, 'Huawei Nova 7i 8GB RAM 128GB', 89900.00, 'huawei_uploads/Huawei-nova-7i.jpg', 0, 13.00, 3.50),
(9, 'Huawei Nova 7 SE 8GB RAM 128GB', 72900.00, 'huawei_uploads/huawei-nova-7-se.jpg', 0, 16.00, 3.50),
(10, 'Huawei Nova 5T 8GB RAM 128GB', 69900.00, 'huawei_uploads/Huawei-nova-5T.jpg', 0, 10.00, 3.50),
(11, 'Huawei MatePad 11 6GB RAM 64GB', 189900.00, 'huawei_uploads/huawei-matepad-11.jpg', 40, 7.00, 4.50),
(12, 'Huawei P40 Pro 5G 8GB RAM 256GB', 275900.00, 'huawei_uploads/Huawei-P40-Pro-5G-8RAM-256GB.jpg', 0, 20.00, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `oneplus`
--

CREATE TABLE `oneplus` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oneplus`
--

INSERT INTO `oneplus` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'OnePlus 12 5G 16GB RAM 512GB', 319900.00, 'oneplus_uploads/OnePlus-12-5G.jpg', 30, 16.00, 5.00),
(2, 'OnePlus 12R 5G 16GB RAM 256GB', 204900.00, 'oneplus_uploads/OnePlus-12R.jpg', 30, 2.00, 4.50),
(3, 'OnePlus 11 5G 16GB RAM 256GB', 294900.00, 'oneplus_uploads/OnePlus-11-5G.jpg', 0, 19.00, 5.00),
(4, 'OnePlus 11R 5G 16GB RAM 256GB', 199900.00, 'oneplus_uploads/OnePlus-11R-5G.jpg', 0, 5.00, 4.50),
(5, 'OnePlus 10 Pro 12GB RAM 512GB', 239900.00, 'oneplus_uploads/OnePlus-10-Pro.jpg', 0, 4.00, 5.00),
(6, 'OnePlus 10T 5G 12GB RAM 256GB', 219900.00, 'oneplus_uploads/OnePlus-10T.jpg', 0, 5.00, 4.50),
(7, 'OnePlus Ace Pro 16GB RAM 512GB', 219900.00, 'oneplus_uploads/OnePlus-Ace-Pro.jpg', 0, 9.00, 4.50),
(8, 'OnePlus Nord 3 5G 16GB RAM 256GB', 189900.00, 'oneplus_uploads/OnePlus-Nord-3-5G.jpg', 30, 11.00, 4.50),
(9, 'OnePlus Nord CE 3 5G 12GB RAM 256GB', 149900.00, 'oneplus_uploads/OnePlus-Nord-CE-3-5G.jpg', 30, 10.00, 4.50),
(10, 'OnePlus Nord CE 3 Lite 5G 8GB RAM 256GB', 124900.00, 'oneplus_uploads/OnePlus-Nord-CE-3-Lite-5G.jpg', 30, 24.00, 3.50),
(11, 'OnePlus Nord CE 4 5G 8GB RAM 256GB', 129900.00, 'oneplus_uploads/OnePlus-Nord-CE4.jpg', 30, 10.00, 4.50),
(12, 'OnePlus Nord CE 4 Lite 5G 8GB RAM 256GB', 114900.00, 'oneplus_uploads/OnePlus-Nord-CE4-Lite-5G.jpg', 30, 10.00, 3.50);

-- --------------------------------------------------------

--
-- Table structure for table `oppo`
--

CREATE TABLE `oppo` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oppo`
--

INSERT INTO `oppo` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Oppo Reno 12F 8GB RAM 256GB', 105900.00, 'oppo_uploads/reno12F.webp', 30, 5.00, 5.00),
(2, 'Oppo A78 8GB RAM 256GB', 105900.00, 'oppo_uploads/oppo A78.webp', 30, 9.00, 4.50),
(3, 'Oppo A58 6GB RAM 128GB', 72900.00, 'oppo_uploads/oppo A58.webp', 30, 6.00, 4.50),
(4, 'Oppo A38 4GB RAM 128GB', 53900.00, 'oppo_uploads/oppo A38.jpg', 0, 11.00, 3.50),
(5, 'Oppo A18 4GB RAM 128GB', 49900.00, 'oppo_uploads/oppo A18.webp', 30, 10.00, 3.50),
(6, 'Oppo A17k 4GB RAM 128GB', 49900.00, 'oppo_uploads/Oppo A17k.jpg', 0, 10.00, 3.50),
(7, 'Oppo A17 4GB RAM 128GB', 49900.00, 'oppo_uploads/Oppo A17.jpg', 30, 12.00, 3.50),
(8, 'Oppo A94 5G 8GB RAM 128GB', 79900.00, 'oppo_uploads/Oppo A94 5G.jpg', 30, 12.00, 4.50),
(9, 'Oppo Find X5 Lite 8GB RAM 256GB', 79900.00, 'oppo_uploads/Oppo Find X5 Lite.jpg', 0, 4.00, 3.50),
(10, 'Oppo A77S 4GB RAM 128GB', 55900.00, 'oppo_uploads/Oppo A77s.jpg', 0, 14.00, 3.50),
(11, 'Oppo A54 4GB RAM 128GB', 55900.00, 'oppo_uploads/Oppo A54.jpg', 0, 16.00, 3.50),
(12, 'Oppo A76 6GB RAM 128GB', 65900.00, 'oppo_uploads/Oppo A76.jpg', 0, 7.00, 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `pixel`
--

CREATE TABLE `pixel` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pixel`
--

INSERT INTO `pixel` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Pixel 9 Pro Flod 16GB RAM 256GB', 649900.00, 'pixel_uploads/Google-Pixel-9-Pro-Fold.jpg', 20, 16.00, 5.00),
(2, 'Pixel 9 Pro XL16GB RAM 256GB', 379900.00, 'pixel_uploads/Google-Pixel-9-Pro.jpg', 20, 10.00, 5.00),
(3, 'Pixel 9 12GB RAM 256GB', 299900.00, 'pixel_uploads/Google-Pixel-9.jpg', 20, 11.00, 4.50),
(4, 'Pixel Flod 12GB RAM 256GB', 649900.00, 'pixel_uploads/Google-Pixel-Fold.jpg', 20, 15.00, 5.00),
(5, 'Pixel 8 Pro12GB RAM 256GB', 439900.00, 'pixel_uploads/Google-Pixel-8-Pro.jpg', 20, 34.00, 5.00),
(6, 'Pixel 8 12GB RAM 256GB', 319900.00, 'pixel_uploads/Google-Pixel-8.jpg', 20, 25.00, 5.00),
(7, 'Pixel 8a 8GB RAM 128GB', 159900.00, 'pixel_uploads/Google-Pixel-8a.jpg', 0, 9.00, 4.50),
(8, 'Pixel 7 Pro 12GB RAM 512GB', 329900.00, 'pixel_uploads/Google-Pixel-7-Pro-5G.jpg', 0, 9.00, 5.00),
(9, 'Pixel 7 5G 8GB RAM 256GB', 174900.00, 'pixel_uploads/Google-Pixel-7.jpg', 0, 10.00, 5.00),
(10, 'Pixel 7a 8GB RAM 128GB', 174900.00, 'pixel_uploads/Google-Pixel-7a.jpg', 20, 14.00, 4.50),
(11, 'Pixel 6 Pro 12GB RAM 256GB', 189900.00, 'pixel_uploads/Pixel-6-pro.jpg', 0, 10.00, 4.50),
(12, 'Pixel 6a 8GB RAM 128GB', 139900.00, 'pixel_uploads/Google-Pixel-6A.jpg', 0, 10.00, 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `samsung`
--

CREATE TABLE `samsung` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samsung`
--

INSERT INTO `samsung` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Samsung Galaxy S24 Ultra 12GB RAM 512GB', 459900.00, 'samsung_uploads/Samsung-S24-Ultra.jpg', 0, 22.00, 5.00),
(2, 'Samsung Galaxy Z Flod 6 12GB RAM 512GB', 599900.00, 'samsung_uploads/Samsung-Z-Fold-6.jpg', 20, 23.00, 5.00),
(3, 'Samsung Galaxy S24 Plus 12GB RAM 256GB', 269900.00, 'samsung_uploads/Samsung-S24.jpg', 0, 10.00, 4.50),
(4, 'Samsung Galaxy S24  FE 12GB RAM 512GB', 299900.00, 'samsung_uploads/Galaxy-S24-FE.jpg', 20, 10.00, 4.50),
(5, 'Samsung Galaxy Z Flip6 12GB RAM 512GB', 299900.00, 'samsung_uploads/Galaxy-Z-Flip.jpg', 20, 10.00, 5.00),
(6, 'Samsung Galaxy A55 12GB RAM 256GB', 149900.00, 'samsung_uploads/Galaxy-A55.jpg', 20, 10.00, 4.50),
(7, 'Samsung Galaxy A35 8GB RAM 256GB', 109900.00, 'samsung_uploads/Galaxy-A35.jpg', 0, 5.00, 4.50),
(8, 'Samsung Galaxy A25 8GB RAM 256GB', 89900.00, 'samsung_uploads/Galaxy-A25.jpg', 20, 8.00, 3.50),
(9, 'Samsung Galaxy A15 8GB RAM 128GB', 69900.00, 'samsung_uploads/Samsung-A15.jpg', 0, 12.00, 3.50),
(10, 'Samsung Galaxy M55 12GB RAM 256GB', 159900.00, 'samsung_uploads/Galaxy-M55.jpg', 20, 20.00, 4.50),
(11, 'Samsung Galaxy M35 8GB RAM 256GB', 119900.00, 'samsung_uploads/Galaxy-M35.jpg', 0, 15.00, 4.50),
(12, 'Samsung Galaxy A06 4GB RAM 128GB', 39900.00, 'samsung_uploads/Samsung-A06.jpg', 0, 5.00, 3.50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `phone`, `nic`, `username`, `password`) VALUES
(1, 'sahan', 'nirodha', 'sahannirodha20@gamil.com', '+94779659513', '200114903560', 'sahan', '1234'),
(2, 'vimukthi', 'lakshan', 'vimukthi@gmail.com', '+94760285295', '123456789879', 'vimukthi', '1234'),
(3, 'sajith', 'jayashan', 'sajith@gmail.com', '+94764329859', '200155996633', 'sajith', '1234'),
(4, 'levindu', 'tathsara', 'levindu@gmail.com', '+94754964780', '200245697865', 'levindu', '2002'),
(5, 'pramith', 'ranjan', 'pramith24@gmail.com', '+94768674823', '200012345678', 'pramith', '5522'),
(6, 'Dulan', 'Kavindu', 'dulan24@gmail.com', '+94752702513', '200012345678', 'dulan', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `xiaomi`
--

CREATE TABLE `xiaomi` (
  `product_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `xiaomi`
--

INSERT INTO `xiaomi` (`product_no`, `product_name`, `product_price`, `product_image`, `product_quantity`, `discount`, `rating`) VALUES
(1, 'Redmi Note 13 Pro plus 5G 12GB RAM 512GB', 144900.00, 'xiaomi_uploads/Xiaomi-Redmi-Note-13-Pro-Plus-5G.jpg', 50, 5.00, 5.00),
(2, 'Redmi Note 13 Pro 5G 8GB RAM 256GB', 104900.00, 'xiaomi_uploads/Redmi-Note-13-Pro-5G.jpg', 50, 5.00, 4.50),
(3, 'Redmi Note 13 Pro 4G 8GB RAM 256GB', 86900.00, 'xiaomi_uploads/Redmi-Note-13-Pro.jpg', 50, 8.00, 3.50),
(4, 'Redmi Note 13 4G 8GB RAM 256GB', 64900.00, 'xiaomi_uploads/Xiaomi-Redmi-Note-13-4G.jpg', 50, 5.00, 3.50),
(5, 'Redmi Note 13 5G 8GB RAM 256GB', 71900.00, 'xiaomi_uploads/Xiaomi-Redmi-Note-13.jpg', 50, 10.00, 3.50),
(6, 'Redmi 13 4G 8GB RAM 256GB', 59900.00, 'xiaomi_uploads/Redmi-13-4G-5.jpg', 50, 5.00, 3.50),
(7, 'Redmi 13C 4G 8GB RAM 256GB', 59900.00, 'xiaomi_uploads/Redmi-13C.jpg', 50, 17.00, 3.50),
(8, 'Redmi 14C 4G 8GB RAM 256GB', 64900.00, 'xiaomi_uploads/Xiaomi-Redmi-14C.jpg', 50, 11.00, 3.50),
(9, 'Redmi Note 12 Pro 4G 8GB RAM 256GB', 96900.00, 'xiaomi_uploads/Xiaomi-Redmi-Note-12-Pro.jpg', 50, 22.00, 3.50),
(10, 'Redmi Note 12 4G 8GB RAM 256GB', 68900.00, 'xiaomi_uploads/Redmi-Note-12-4G.jpg', 50, 6.00, 3.50),
(11, 'Redmi 12 4G 8GB RAM 256GB', 59900.00, 'xiaomi_uploads/Xiaomi-Redmi-12.jpg', 0, 17.00, 3.50),
(12, 'Redmi A3 4G 4GB RAM 128GB', 33900.00, 'xiaomi_uploads/Xiaomi-Redmi-A3.jpg', 50, 10.00, 3.50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apple`
--
ALTER TABLE `apple`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `huawei`
--
ALTER TABLE `huawei`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `oneplus`
--
ALTER TABLE `oneplus`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `oppo`
--
ALTER TABLE `oppo`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `pixel`
--
ALTER TABLE `pixel`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `samsung`
--
ALTER TABLE `samsung`
  ADD PRIMARY KEY (`product_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xiaomi`
--
ALTER TABLE `xiaomi`
  ADD PRIMARY KEY (`product_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apple`
--
ALTER TABLE `apple`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `honor`
--
ALTER TABLE `honor`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `huawei`
--
ALTER TABLE `huawei`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oneplus`
--
ALTER TABLE `oneplus`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oppo`
--
ALTER TABLE `oppo`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pixel`
--
ALTER TABLE `pixel`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `samsung`
--
ALTER TABLE `samsung`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xiaomi`
--
ALTER TABLE `xiaomi`
  MODIFY `product_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
