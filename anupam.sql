-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 09:23 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anupam`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_us` longtext CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_us`, `image`) VALUES
(1, 'Established in 1998 as part of the Tata Group, Trent Ltd. operates Westside, one of Indias largest and fastest growing chains of retail stores.\r\nOur vision is to design and deliver fashion & lifestyle brands, while always keeping it fresh. We are young, agile, risk-takers who love including everyone in this exhilarating journey. With over 200 outlets across Westside, Zudio, Landmark and Star Bazaar -- bringing a modern retail experience to India is our beat.\r\n\r\nOur mission is to create value for all our stakeholders\r\nIn order to achieve this goal, we shall develop a comprehensive understanding of their needs, strive to win their confidence, and offer them best-in-class products and services at affordable prices.\r\n\r\nWe shall always be in the forefront of fashion and services by anticipating and exceeding the expectations of our customers.\r\n\r\nWe will continue to scale new heights of excellence through teamwork. Our leadership will be the product of our styling, quality and service consciousness. We will continue to scale new heights of excellence through teamwork, in an atmosphere that encourages creativity and innovativeness.\r\n\r\nIt is our policy to satisfy our customers with the range, quality and value of the products we offer. However, if they are dissatisfied with any item that they might have purchased we would take the necessary measures to assist them.\r\n\r\nWe expect our customers to return unused merchandise along with its receipt within 30 days; we would exchange the returned items or give our customers a complete refund. In the event that they do not have the receipt we would offer them an exchange or provide them a gift voucher to the current or last known selling price.\r\n\r\nOur vision is to Design and deliver fashion brands.\r\n\r\nWe have complete confidence in the quality of our merchandise however should our customers have any grievances, we would be happy to address them once they are brought to our attention.\r\n\r\nAt Trent we are excited about fashion, food, beauty, home and technology. We are about fast, clean and innovative retail that makes the little things we do seem so stylish yet so effortless. Being part of the TATA fold, our core values echo sustainability, compliance and engaging in mindful business.\r\n\r\nAbout our Brands\r\nWESTSIDE: Our lead fashion brand with over 22 labels all designed in-house, across womenâ€™s wear, menswear, kidswear, footwear, lingerie, cosmetic, perfumes, accessories and home furniture.\r\n\r\nZUDIO: Aggressively popping all over India, we bring to the fore irresistible fashion at unmatched prices. We create everything in-house and love cool-spirited people who are trend sussed. We enjoy forming tribes and creating amazing opportunities along the way.\r\n\r\nLANDMARK: Inspiring the child in all of us, we are a playground for books, toys, music, lifestyle accessories, technology, sporting goods and more. We collaborate and source around the world and trade our business with innovation.\r\n\r\nSTAR BAZAAR: Trent ventured into the hypermarket business in 2004 with Star Bazaar. Keeping things forever fresh, our clean and modern formats make daily grocery, food and shopping for your household easy. We are a bunch of foodies and traders who aspire to make everyday shopping a fun experience.', '9e571a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `added_on`) VALUES
(6, '2', '1', '1', '2022-02-22 01:07:12'),
(13, '3', '2', '1', '2022-03-05 11:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `service`, `category`) VALUES
(1, '1', 'Living Room'),
(2, '1', 'Dining Room'),
(3, '1', 'Bed Room'),
(4, '2', 'Garden Area'),
(5, '2', 'Balcony');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `email`, `address`, `image`) VALUES
(1, 'ShyamMetalics and Energy Limited', 7868698888, 'user@gmail.com', '812 A, Logix Office Tower, Sector 32, Noida, UP ï¿½ 201301, India', 'b008a2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `subcategory`, `name`, `price`, `detail`, `image`) VALUES
(1, '1', 'Sofa 1', '35999', 'If a single piece of furniture has the ability to define the style of a personal living space, that piece would be the sofa. Available in a range of styles -- with a variety of functions -- a sofa can be functional or whimsical, period or contemporary, single or sectional. In each instance the sofa, as a signature object, defines the space in which it sits.', 'b19706.jpg'),
(2, '1', 'Sofa 2', '29999', 'If a single piece of furniture has the ability to define the style of a personal living space, that piece would be the sofa. Available in a range of styles -- with a variety of functions -- a sofa can be functional or whimsical, period or contemporary, single or sectional. In each instance the sofa, as a signature object, defines the space in which it sits.', '0b3f6d.jpg'),
(3, '1', 'Sofa 3', '24999', 'If a single piece of furniture has the ability to define the style of a personal living space, that piece would be the sofa. Available in a range of styles -- with a variety of functions -- a sofa can be functional or whimsical, period or contemporary, single or sectional. In each instance the sofa, as a signature object, defines the space in which it sits.', '841d01.jpg'),
(4, '1', 'Sofa 4', '24999', 'If a single piece of furniture has the ability to define the style of a personal living space, that piece would be the sofa. Available in a range of styles -- with a variety of functions -- a sofa can be functional or whimsical, period or contemporary, single or sectional. In each instance the sofa, as a signature object, defines the space in which it sits.', 'de1e66.jpg'),
(5, '1', 'Sofa 5', '29999', 'If a single piece of furniture has the ability to define the style of a personal living space, that piece would be the sofa. Available in a range of styles -- with a variety of functions -- a sofa can be functional or whimsical, period or contemporary, single or sectional. In each instance the sofa, as a signature object, defines the space in which it sits.', '923113.jpg'),
(6, '2', 'Carpet 1', '9999', 'A carpet is a textile floor covering typically consisting of an upper layer of pile attached to a backing. The pile was traditionally made from wool, but since the 20th century, synthetic fibers such as polypropylene, nylon or polyester are often used, as these fibers are less expensive than wool. The pile usually consists of twisted tufts that are typically heat-treated to maintain their structure.', '67279d.jpg'),
(7, '2', 'Carpet 2', '14999', 'A carpet is a textile floor covering typically consisting of an upper layer of pile attached to a backing. The pile was traditionally made from wool, but since the 20th century, synthetic fibers such as polypropylene, nylon or polyester are often used, as these fibers are less expensive than wool. The pile usually consists of twisted tufts that are typically heat-treated to maintain their structure.', '835ad7.jpg'),
(8, '2', 'Carpet 3', '14999', 'A carpet is a textile floor covering typically consisting of an upper layer of pile attached to a backing. The pile was traditionally made from wool, but since the 20th century, synthetic fibers such as polypropylene, nylon or polyester are often used, as these fibers are less expensive than wool. The pile usually consists of twisted tufts that are typically heat-treated to maintain their structure.', 'ffcb70.jpg'),
(9, '2', 'Carpet 4', '4999', 'A carpet is a textile floor covering typically consisting of an upper layer of pile attached to a backing. The pile was traditionally made from wool, but since the 20th century, synthetic fibers such as polypropylene, nylon or polyester are often used, as these fibers are less expensive than wool. The pile usually consists of twisted tufts that are typically heat-treated to maintain their structure.', '38ced9.jpg'),
(10, '2', 'Carpet 5', '9999', 'A carpet is a textile floor covering typically consisting of an upper layer of pile attached to a backing. The pile was traditionally made from wool, but since the 20th century, synthetic fibers such as polypropylene, nylon or polyester are often used, as these fibers are less expensive than wool. The pile usually consists of twisted tufts that are typically heat-treated to maintain their structure.', '8b051f.jpg'),
(11, '3', 'Dining Table 1', '19999', 'Traditional. Ornate detailing, like turned legs and carvings, and dark solid wood are common features of traditional dining tables. Often considered formal furniture, traditional dining tables can come in a variety of shapes.', 'e61948.jpg'),
(12, '3', 'Dining Table 2', '24999', 'Traditional. Ornate detailing, like turned legs and carvings, and dark solid wood are common features of traditional dining tables. Often considered formal furniture, traditional dining tables can come in a variety of shapes.', 'af911d.jpg'),
(13, '3', 'Dining Table 3', '24999', 'Traditional. Ornate detailing, like turned legs and carvings, and dark solid wood are common features of traditional dining tables. Often considered formal furniture, traditional dining tables can come in a variety of shapes.', 'a30100.jpg'),
(14, '3', 'Dining Table 4', '14999', 'Traditional. Ornate detailing, like turned legs and carvings, and dark solid wood are common features of traditional dining tables. Often considered formal furniture, traditional dining tables can come in a variety of shapes.', '1d2e37.jpg'),
(15, '3', 'Dining Table 5', '29999', 'Traditional. Ornate detailing, like turned legs and carvings, and dark solid wood are common features of traditional dining tables. Often considered formal furniture, traditional dining tables can come in a variety of shapes.', 'eafcc3.jpg'),
(16, '4', 'Bed 1', '39999', 'A bed is a piece of furniture which is used as a place to sleep, rest, and relax. Most modern beds consist of a soft, cushioned mattress on a bed frame. The mattress rests either on a solid base, often wood slats, or a sprung base.', '1c83d6.jpg'),
(17, '4', 'Bed 2', '24999', 'A bed is a piece of furniture which is used as a place to sleep, rest, and relax. Most modern beds consist of a soft, cushioned mattress on a bed frame. The mattress rests either on a solid base, often wood slats, or a sprung base.', '3125d6.jpg'),
(18, '4', 'Bed 3', '19999', 'A bed is a piece of furniture which is used as a place to sleep, rest, and relax. Most modern beds consist of a soft, cushioned mattress on a bed frame. The mattress rests either on a solid base, often wood slats, or a sprung base.', '09482d.jpg'),
(19, '4', 'Bed 4', '49999', 'A bed is a piece of furniture which is used as a place to sleep, rest, and relax. Most modern beds consist of a soft, cushioned mattress on a bed frame. The mattress rests either on a solid base, often wood slats, or a sprung base.', '61a859.jpg'),
(20, '4', 'Bed 5', '34999', 'A bed is a piece of furniture which is used as a place to sleep, rest, and relax. Most modern beds consist of a soft, cushioned mattress on a bed frame. The mattress rests either on a solid base, often wood slats, or a sprung base.', '4105c4.jpg'),
(21, '5', 'Chair 1', '4999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '3d193b.jpg'),
(22, '5', 'Chair 2', '2999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', 'e4b6e1.jpg'),
(23, '5', 'Chair 3', '2999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '5554a6.jpg'),
(24, '5', 'Chair 4', '9999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', 'a5409c.jpg'),
(25, '5', 'Chair 5', '14999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '517236.jpg'),
(26, '6', 'Chair 1', '3999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '88eb67.jpg'),
(27, '6', 'Chair 2', '6999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '0d55a5.jpg'),
(29, '6', 'Chair 3', '1200', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '38ab25.jpg'),
(30, '6', 'Chair 4', '9999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', 'c463d5.jpg'),
(31, '6', 'Chair 5', '4999', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum eum dolores, sequi harum modi maiores amet aperiam veritatis ducimus consectetur tenetur mollitia eaque? Fugiat doloribus nobis voluptatibus, natus rem reiciendis eos eveniet aperiam magnam veritatis cum nesciunt ipsa, officia quis, quisquam maxime incidunt inventore facilis aut. Eius debitis veniam dolores.', '9782d9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, '0b3f6d.jpg'),
(2, 'de1e66.jpg'),
(3, '835ad7.jpg'),
(4, '67279d.jpg'),
(5, '4105c4.jpg'),
(6, 'e4b6e1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `get_in_touch`
--

CREATE TABLE `get_in_touch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `get_in_touch`
--

INSERT INTO `get_in_touch` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(2, 'bhavik', 'bhavik@gmail.co', 7987987798, 'jhgjh ', '`jkhkjhk');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`) VALUES
(1, '1bb87d.png');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service`) VALUES
(1, 'Indoor Furniture'),
(2, 'Outdoor Furniture');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `text`) VALUES
(1, '5317d5.jpg', 'Living Room Furniture'),
(2, '82b6d2.jpg', 'New Arrivals'),
(3, '014c74.jpg', 'Outdoor Dining Furniture');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `subcategory`) VALUES
(1, '1', 'Sofa'),
(2, '1', 'Carpet'),
(3, '2', 'Dining Table'),
(4, '3', 'Bed'),
(5, '4', 'Garden Chair'),
(6, '5', 'Balcony Chair');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` bigint(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `number`, `password`, `token`, `expdate`) VALUES
(1, 'user', 'user@gmail.com', 9876543287, '123', '533040', '2022-03-03'),
(2, '', 'user24@gmail.com', 0, '123', NULL, '0000-00-00'),
(3, '', 'bhavikkalal17@gmail.com', 0, 'Bhavik', NULL, '0000-00-00'),
(6, 'ayush', 'ag260761@gmail.com', 7756837775, '123', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_in_touch`
--
ALTER TABLE `get_in_touch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `get_in_touch`
--
ALTER TABLE `get_in_touch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
