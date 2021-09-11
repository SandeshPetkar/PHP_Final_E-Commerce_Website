-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 11, 2021 at 03:55 PM
-- Server version: 10.4.14-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u456615084_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `incart`
--

CREATE TABLE `incart` (
  `user_id` int(50) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` double NOT NULL,
  `quantity` int(20) NOT NULL,
  `p_id` varchar(20) NOT NULL,
  `addedon` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incart`
--

INSERT INTO `incart` (`user_id`, `p_name`, `p_price`, `quantity`, `p_id`, `addedon`) VALUES
(16, 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB Storage)', 12499, 1, '13', '2021-05-31'),
(24, 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB Storage)', 12499, 1, '13', '2021-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_id` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` float NOT NULL,
  `quantity` int(50) NOT NULL,
  `addedon` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `user_id`, `p_id`, `p_name`, `p_price`, `quantity`, `addedon`) VALUES
('aadesh60a829484e7c6', '12', '12', 'Aadesh Cha Mobile', 15000, 3, '2021-05-21 21:42:32.321965'),
('aadesh60a829484e7c6', '12', '13', 'Sandesh Cha Mobile', 12000, 4, '2021-05-21 21:42:32.374002'),
('aadesh60a829484e7c6', '12', '15', 'dsfasf', 123456, 1, '2021-05-21 21:42:32.434268'),
('aadesh60a829484e7c6', '12', '16', 'Sandesh', 4567, 2, '2021-05-21 21:42:33.021160'),
('aadesh60a82ada75454', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-21 21:49:14.480810'),
('aadesh60a834c197c65', '12', '16', 'Sandesh', 4567, 4, '2021-05-21 22:31:29.622673'),
('aadesh60a9c1f094e88', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 02:46:08.610821'),
('aadesh60a9c5809eb31', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 03:01:20.650492'),
('aadesh60a9c5809eb31', '12', '13', 'Sandesh Cha Mobile', 12000, 1, '2021-05-23 03:01:20.720545'),
('aadesh60a9c5b9d98c6', '12', '12', 'Aadesh Cha Mobile', 15000, 3, '2021-05-23 03:02:17.891631'),
('aadesh60a9c5b9d98c6', '12', '13', 'Sandesh Cha Mobile', 12000, 3, '2021-05-23 03:02:17.934075'),
('aadesh60a9c5b9d98c6', '12', '15', 'dsfasf', 123456, 2, '2021-05-23 03:02:17.976116'),
('aadesh60a9c5b9d98c6', '12', '16', 'Sandesh', 4567, 5, '2021-05-23 03:02:18.089576'),
('aadesh60a9c5e8e5b03', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 03:03:04.941462'),
('aadesh60a9d2409a319', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 03:55:44.632106'),
('aadesh60a9d306a7525', '12', '13', 'Sandesh Cha Mobile', 12000, 1, '2021-05-23 03:59:02.685745'),
('aadesh60a9d4ed78e9b', '12', '16', 'Sandesh', 4567, 1, '2021-05-23 04:07:09.495686'),
('aadesh60a9dcbca85e3', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 04:40:28.690281'),
('aadesh60a9dd47ae772', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 04:42:47.715118'),
('aadesh60a9dd5ef233f', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 04:43:10.992462'),
('aadesh60a9dde51af2d', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 04:45:25.110895'),
('aadesh60a9e18e6b1a8', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 05:01:02.439270'),
('aadesh60a9e210541ac', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 05:03:12.344977'),
('aadesh60a9e25ccb53a', '12', '16', 'Sandesh', 4567, 1, '2021-05-23 05:04:28.833302'),
('aadesh60a9e367517cf', '12', '16', 'Sandesh', 4567, 1, '2021-05-23 05:08:55.334264'),
('aadesh60a9ea28ef408', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 05:37:44.980468'),
('aadesh60a9edcbc957c', '12', '12', 'Aadesh Cha Mobile', 15000, 4, '2021-05-23 05:53:15.825165'),
('aadesh60a9efab6dd5d', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 06:01:15.450433'),
('aadesh60a9fda9e6891', '12', '12', 'Aadesh Cha Mobile', 15000, 1, '2021-05-23 07:00:57.944798'),
('aadesh60a9fe55e7b7e', '12', '12', 'Aadesh Cha Mobile', 15000, 5, '2021-05-23 07:03:49.949682'),
('aadesh60a9fe55e7b7e', '12', '13', 'Sandesh Cha Mobile', 12000, 3, '2021-05-23 07:03:49.993954'),
('aadesh60a9fe55e7b7e', '12', '16', 'Sandesh', 4567, 11, '2021-05-23 07:03:50.036094'),
('aadesh60a9fe55e7b7e', '12', '16', 'Sandesh', 4567, 5, '2021-05-23 07:03:50.072169'),
('sandesh60af940e16086', '11', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-05-27 12:43:58.090882'),
('sandesh60af9505270d5', '11', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-05-27 12:48:05.160466'),
('yogiraj60afa2ced053b', '14', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 5, '2021-05-27 13:46:54.853765'),
('yogiraj60afa2ced053b', '14', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-05-27 13:46:54.897937'),
('yogiraj60afa2ced053b', '14', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-05-27 13:46:54.939929'),
('yogiraj60afa2ced053b', '14', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-05-27 13:46:55.002360'),
('sandesh60afd4a0209ef', '11', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 5, '2021-05-27 17:19:28.134466'),
('Aadesh60b1054f50d1e', '16', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-05-28 14:59:27.332092'),
('Aadesh60b1054f50d1e', '16', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-05-28 14:59:27.388126'),
('Aadesh60b1054f50d1e', '16', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-05-28 14:59:27.418545'),
('Aadesh60b1054f50d1e', '16', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-05-28 14:59:27.454610'),
('Aadesh60b1059751e8d', '16', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-05-28 15:00:39.335905'),
('Aadesh60b486fa1b323', '16', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-05-31 06:49:30.111725'),
('yogiraj60b48a27cc083', '15', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-05-31 07:03:03.836033'),
('sandesh60b6520775c11', '20', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-01 15:28:07.483100'),
('sandesh60b6520775c11', '20', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:28:07.484822'),
('sandesh60b6520775c11', '20', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:28:07.485090'),
('sandesh60b6520775c11', '20', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:28:07.485504'),
('sandesh60b653cb321b9', '20', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-01 15:35:39.205675'),
('sandesh60b653cb321b9', '20', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:35:39.206604'),
('sandesh60b653cb321b9', '20', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:35:39.206927'),
('sandesh60b653cb321b9', '20', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:35:39.207159'),
('sandesh60b6548c2b24f', '20', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-01 15:38:52.177278'),
('sandesh60b6548c2b24f', '20', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:38:52.178341'),
('sandesh60b6548c2b24f', '20', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:38:52.178794'),
('sandesh60b6548c2b24f', '20', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:38:52.179042'),
('sandesh60b655078fa3f', '20', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-01 15:40:55.588650'),
('sandesh60b655078fa3f', '20', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:40:55.589521'),
('sandesh60b655078fa3f', '20', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:40:55.589754'),
('sandesh60b655078fa3f', '20', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:40:55.589972'),
('sandesh60b656111fc6d', '20', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-01 15:45:21.130679'),
('sandesh60b656111fc6d', '20', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:45:21.132233'),
('sandesh60b656111fc6d', '20', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:45:21.132882'),
('sandesh60b656111fc6d', '20', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:45:21.133520'),
('sandesh60b6566fcf5e6', '20', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-01 15:46:55.849745'),
('sandesh60b6566fcf5e6', '20', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:46:55.850541'),
('sandesh60b6566fcf5e6', '20', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:46:55.850775'),
('sandesh60b6566fcf5e6', '20', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:46:55.851048'),
('Aadesh60b6596239349', '21', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 25, '2021-06-01 15:59:30.234936'),
('Aadesh60b6596239349', '21', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-01 15:59:30.290123'),
('Aadesh60b6596239349', '21', '15', 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB St', 11999, 1, '2021-06-01 15:59:30.347593'),
('Aadesh60b6596239349', '21', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-01 15:59:30.363089'),
('Harshad60b85c3694b41', '23', '12', 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 60', 10999, 1, '2021-06-03 04:36:06.609635'),
('Harshad60b85c593d08e', '23', '13', 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB S', 12499, 1, '2021-06-03 04:36:41.250334'),
('Harshad60b85c948db1c', '23', '16', 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) ', 4567, 1, '2021-06-03 04:37:40.580750');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `total_amount` float NOT NULL,
  `address` varchar(100) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `order_status` varchar(20) NOT NULL DEFAULT 'pending',
  `txnid` varchar(100) NOT NULL,
  `mihpayid` varchar(100) NOT NULL,
  `addedon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total_amount`, `address`, `payment_type`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `addedon`) VALUES
('aadesh60a9fda9e6891', '12', 15000, 'fsdgfgfgfd', 'payu', 'success', 'cancelled', 'aa2949b5e57767b80c9f', '403993715523148073', '2021-05-23 12:31:07'),
('aadesh60a9fe55e7b7e', '12', 184072, 'uhfhgfjfnglkfklbnkldbklkgfkdggs', 'payu', 'success', 'cancelled', 'd7e3a88e3dc6cc9a7afb', '403993715523148079', '2021-05-23 12:34:28'),
('sandesh60af940e16086', '11', 10999, 'Room no 201 Mandar Bldg Sarovar darshan society chandan wadi almeda road thane west 400602', 'payu', 'pending', 'cancelled', '517b8129d8b2a9bcb613', '', ''),
('sandesh60af9505270d5', '11', 12499, 'Room no 201 Mandar Bldg Sarovar darshan society chandan wadi almeda road thane west 400602', 'cod', 'pending', 'cancelled', '', '', ''),
('yogiraj60afa2ced053b', '14', 84060, 'hjjhhbhjhgvhgvhj', 'payu', 'pending', 'pending', 'e3760885d419dab7487d', '', ''),
('sandesh60afd4a0209ef', '11', 54995, 'fgdgfdfdgdg', 'cod', 'pending', 'cancelled', '', '', ''),
('Aadesh60b1054f50d1e', '16', 40064, 'dfdfdfvfgfds', 'payu', 'pending', 'cancelled', 'f79f4a91e7f2e5cb870a', '', ''),
('Aadesh60b1059751e8d', '16', 10999, 'dfassaffsafd', 'cod', 'pending', 'cancelled', '', '', ''),
('Aadesh60b486fa1b323', '16', 10999, 'Fdgffgff', 'payu', 'pending', 'pending', '', '', ''),
('Aadesh60b486fb04467', '16', 10999, 'Fdgffgff', 'payu', 'pending', 'pending', '', '', ''),
('Aadesh60b486fb2037e', '16', 10999, 'Fdgffgff', 'payu', 'pending', 'pending', '', '', ''),
('Aadesh60b486fc58996', '16', 10999, 'Fdgffgff', 'payu', 'pending', 'pending', '', '', ''),
('yogiraj60b48a27cc083', '15', 10999, '', 'payu', 'pending', 'pending', '', '', ''),
('sandesh60b6520775c11', '20', 40064, 'Room no 201 bldg no 1 mandar bldg sarovar darshan society raigad galli chandan wadi thane west 40060', 'payu', 'pending', 'cancelled', '', '', ''),
('sandesh60b653cb321b9', '20', 40064, 'Room no 201 bldg no 1 mandar bldg sarovar darshan society raigad galli chandan wadi thane west 40060', 'payu', 'pending', 'cancelled', '', '', ''),
('sandesh60b6548c2b24f', '20', 40064, 'Room no 201 bldg no 1 mandar bldg sarovar darshan society raigad galli chandan wadi thane west 40060', 'payu', 'pending', 'cancelled', '', '', ''),
('sandesh60b655078fa3f', '20', 40064, 'Room no 201 bldg no 1 mandar bldg sarovar darshan society raigad galli chandan wadi thane west 40060', 'cod', 'pending', 'cancelled', '', '', ''),
('sandesh60b656111fc6d', '20', 40064, 'Room no 201 bldg no 1 mandar bldg sarovar darshan society raigad galli chandan wadi thane west 40060', 'payu', 'pending', 'cancelled', '', '', ''),
('sandesh60b6566fcf5e6', '20', 40064, 'Room no 201 bldg no 1 mandar bldg sarovar darshan society raigad galli chandan wadi thane west 40060', 'payu', 'pending', 'cancelled', '', '', ''),
('Aadesh60b6596239349', '21', 304040, 'Hahsdvsbbssbhsahagag', 'payu', 'pending', 'cancelled', '', '', ''),
('Harshad60b85c3694b41', '23', 10999, 'Mumbai', 'cod', 'pending', 'pending', '', '', ''),
('Harshad60b85c593d08e', '23', 12499, 'Mumbai', 'payu', 'pending', 'cancelled', 'bff70f3649d9baef1c31', '', ''),
('Harshad60b85c948db1c', '23', 4567, 'Mumbai', 'cod', 'pending', 'pending', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `product_price` float NOT NULL,
  `product_description` varchar(10000) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_price`, `product_description`, `product_category`, `product_status`) VALUES
(12, 'Samsung Galaxy M12 (Blue,4GB RAM, 64GB Storage) 6000 mAh with 8nm Processor | True 48 MP Quad Camera | 90Hz Refresh Rate', 'https://dainiksandesh.co.in/images/pone.jpg', 10999, '48MP+5MP+2MP+2MP Quad camera setup- True 48MP (F 2.0) main camera + 5MP (F2.2) Ultra wide camera+ 2MP (F2.4) depth camera + 2MP (2.4) Macro Camera| 8MP (F2.2) front came\r\n6000mAH lithium-ion battery, 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nAndroid 11, v11.0 operating system,One UI 3.1, with 8nm Power Efficient Exynos850 (Octa Core 2.0GH\r\n16.55 centimeters (6.5-inch) HD+ TFT LCD - infinity v-cut display,90Hz screen refresh rate, HD+ resolution with 720 x 1600 pixels resolution, 269 PPI with 16M color\r\nMemory, Storage & SIM: 4GB RAM | 64GB internal memory expandable up to 1TB| Dual SIM (nano+nano) dual-standby (4G+4', 'Mobiles', 1),
(13, 'Samsung Galaxy M21 (Midnight Blue, 4GB RAM, 64GB Storage)', 'https://dainiksandesh.co.in/images/ptwo.jpg', 12499, 'Triple Camera Setup - 48MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera and 20MP (F2.2) front facing Punch Hole Camera\r\n6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support\r\nAndroid 10.0 operating system with Exynos 9611,2.3GHz,1.7GHz Octa-Core processor, 4GB RAM, 64GB internal memory expandable up to 512GB and dual SIM\r\n6000 mAh Battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', 'Mobiles', 1),
(15, 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB Storage)', 'https://dainiksandesh.co.in/images/pthree.jpg', 11999, 'Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera\r\n6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support\r\nAndroid v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 128GB internal memory expandable up to 512GB and dual SIM\r\n6000 mAh Battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nPlease contact Samsung helpline number 1800 407 267864 for any assistance related to device', 'Mobiles', 1),
(16, 'Samsung Galaxy M11 (Black, 4GB RAM, 64GB Storage) with No Cost EMI/Additional Exchange Offers', 'https://dainiksandesh.co.in/images/pfour.jpg', 4567, '13MP (F1.8) main camera + 5MP (F2.2) ultra wide camera + 2MP (F2.4) depth rear camera | 8MP (F2.0) front facing punch hole camera\r\n6.4-inch (16.24 centimeters) infinity-O display, HD+ capacitive multi-touch touchscreen with 720 x 1520 pixels resolution, 270 ppi | 16M color support\r\nMemory, Storage & SIM: 4GB RAM | 64GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v10.0 operating system with 1.8GHz Qualcomm | SDM450-F01 octa core processor\r\n5000mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nBox also includes: Travel adapter, USB cable and user manual. The box does not include earphones', 'Mobiles', 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `mobile`, `password`, `admin`) VALUES
(15, 'yogiraj', 'ommahadev07@gmail.com', '4567891231', '123456789', 0),
(20, 'sandesh', 'sandeshpetkar2@gmail.com', '9930504956', '123456', 0),
(21, 'Aadesh', 'petkarpawan123@gmail.com', '7045543359', 'aadesh123', 0),
(22, 'Sd', 'sarva.deshpande@outlook.com', '8169984523', 'Kingslaayer', 0),
(23, 'Harshad', 'harshadlukare@gmail.com', '9867308321', 'anitalukare', 0),
(24, 'Shahjahan', 'shahjahansari4u@gmail.com', '8169355078', 'sandesh123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
