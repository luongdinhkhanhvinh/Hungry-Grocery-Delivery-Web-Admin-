-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 22, 2020 at 09:43 AM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u291070854_freshfast`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `hno` text NOT NULL,
  `society` text NOT NULL,
  `area` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `landmark` text DEFAULT NULL,
  `type` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `area_db`
--

CREATE TABLE `area_db` (
  `id` int(8) NOT NULL,
  `name` text NOT NULL,
  `dcharge` float NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_db`
--

INSERT INTO `area_db` (`id`, `name`, `dcharge`, `status`) VALUES
(1, 'Area 1', 10.05, '1'),
(2, 'Area 2', 20, '1'),
(3, 'Area 3', 30, '1'),
(4, 'Area 4', 40, '1'),
(5, 'Area 5', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(8) NOT NULL,
  `bimg` text NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `bimg`, `cid`) VALUES
(15, 'banner/5ec797c1230e0I86rTVl.jpg', 1),
(16, 'banner/5ec797d3f010eI86rTVl.jpg', 1),
(17, 'banner/5ec797ddbbea0I86rTVl.jpg', 6),
(18, 'banner/5ec797e805e97I86rTVl.jpg', 7),
(22, 'banner/5ec797f63da87I86rTVl.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` text NOT NULL,
  `catimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `catimg`) VALUES
(1, 'Vegetables', 'cat/thump_1589023663.png'),
(5, 'Drink', 'cat/thump_1589023819.png'),
(6, 'Food & Meals', 'cat/thump_1589023839.png'),
(7, 'Cake', 'cat/thump_1589023887.png'),
(8, 'Brochettes', 'cat/thump_1589023903.png'),
(10, 'Meat & Fish', 'cat/thump_1589023976.png');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `ccode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `ccode`, `status`) VALUES
(1, '+972', 1),
(2, '+93', 1),
(3, '+355', 1),
(4, '+213', 1),
(5, '+1 684', 1),
(6, '+376', 1),
(7, '+244', 1),
(8, '+1 264', 1),
(9, '+1268', 1),
(10, '+54', 1),
(11, '+374', 1),
(12, '+297', 1),
(13, '+61', 1),
(14, '+43', 1),
(15, '+994', 1),
(16, '+1 242', 1),
(17, '+973', 1),
(18, '+880', 1),
(19, '+1 246', 1),
(20, '+375', 1),
(21, '+32', 1),
(22, '+501', 1),
(23, '+229', 1),
(24, '+1 441', 1),
(25, '+975', 1),
(26, '+387', 1),
(27, '+267', 1),
(28, '+55', 1),
(29, '+246', 1),
(30, '+359', 1),
(31, '+226', 1),
(32, '+257', 1),
(33, '+855', 1),
(34, '+237', 1),
(35, '+1', 1),
(36, '+238', 1),
(37, '+ 345', 1),
(38, '+236', 1),
(39, '+235', 1),
(40, '+56', 1),
(41, '+86', 1),
(42, '+61', 1),
(43, '+57', 1),
(44, '+269', 1),
(45, '+242', 1),
(46, '+682', 1),
(47, '+506', 1),
(48, '+385', 1),
(49, '+53', 1),
(50, '+537', 1),
(51, '+420', 1),
(52, '+45', 1),
(53, '+253', 1),
(54, '+1 767', 1),
(55, '+1 849', 1),
(56, '+593', 1),
(57, '+20', 1),
(58, '+503', 1),
(59, '+240', 1),
(60, '+291', 1),
(61, '+372', 1),
(62, '+251', 1),
(63, '+298', 1),
(64, '+679', 1),
(65, '+358', 1),
(66, '+33', 1),
(67, '+594', 1),
(68, '+689', 1),
(69, '+241', 1),
(70, '+220', 1),
(71, '+995', 1),
(72, '+49', 1),
(73, '+233', 1),
(74, '+350', 1),
(75, '+30', 1),
(76, '+299', 1),
(77, '+1 473', 1),
(78, '+590', 1),
(79, '+1 671', 1),
(80, '+502', 1),
(81, '+224', 1),
(82, '+245', 1),
(83, '+595', 1),
(84, '+509', 1),
(85, '+504', 1),
(86, '+36', 1),
(87, '+354', 1),
(88, '+91', 1),
(89, '+62', 1),
(90, '+964', 1),
(91, '+353', 1),
(92, '+972', 1),
(93, '+39', 1),
(94, '+1 876', 1),
(95, '+81', 1),
(96, '+962', 1),
(97, '+7 7', 1),
(98, '+254', 1),
(99, '+686', 1),
(100, '+965', 1),
(101, '+996', 1),
(102, '+371', 1),
(103, '+961', 1),
(104, '+266', 1),
(105, '+231', 1),
(106, '+423', 1),
(107, '+370', 1),
(108, '+352', 1),
(109, '+261', 1),
(110, '+265', 1),
(111, '+60', 1),
(112, '+960', 1),
(113, '+223', 1),
(114, '+356', 1),
(115, '+692', 1),
(116, '+596', 1),
(117, '+222', 1),
(118, '+230', 1),
(119, '+262', 1),
(120, '+52', 1),
(121, '+377', 1),
(122, '+976', 1),
(123, '+382', 1),
(124, '+1664', 1),
(125, '+212', 1),
(126, '+95', 1),
(127, '+264', 1),
(128, '+674', 1),
(129, '+977', 1),
(130, '+31', 1),
(131, '+599', 1),
(132, '+687', 1),
(133, '+64', 1),
(134, '+505', 1),
(135, '+227', 1),
(136, '+234', 1),
(137, '+683', 1),
(138, '+672', 1),
(139, '+1 670', 1),
(140, '+47', 1),
(141, '+968', 1),
(143, '+680', 1),
(144, '+507', 1),
(145, '+675', 1),
(146, '+595', 1),
(147, '+51', 1),
(148, '+63', 1),
(149, '+48', 1),
(150, '+351', 1),
(151, '+1 939', 1),
(152, '+974', 1),
(153, '+40', 1),
(154, '+250', 1),
(155, '+685', 1),
(156, '+378', 1),
(157, '+966', 1),
(158, '+221', 1),
(159, '+381', 1),
(160, '+248', 1),
(161, '+232', 1),
(162, '+65', 1),
(163, '+421', 1),
(164, '+386', 1),
(165, '+677', 1),
(166, '+27', 1),
(167, '+500', 1),
(168, '+34', 1),
(169, '+94', 1),
(170, '+249', 1),
(171, '+597', 1),
(172, '+268', 1),
(173, '+46', 1),
(174, '+41', 1),
(175, '+992', 1),
(176, '+66', 1),
(177, '+228', 1),
(178, '+690', 1),
(179, '+676', 1),
(180, '+1 868', 1),
(181, '+216', 1),
(182, '+90', 1),
(183, '+993', 1),
(184, '+1 649', 1),
(185, '+688', 1),
(186, '+256', 1),
(187, '+380', 1),
(188, '+971', 1),
(189, '+44', 1),
(190, '+1', 1),
(191, '+598', 1),
(192, '+998', 1),
(193, '+678', 1),
(194, '+681', 1),
(195, '+967', 1),
(196, '+260', 1),
(197, '+263', 1),
(200, '+591', 1),
(201, '+673', 1),
(202, '+61', 1),
(203, '+243', 1),
(204, '+225', 1),
(205, '+500', 1),
(206, '+44', 1),
(207, '+379', 1),
(208, '+852', 1),
(209, '+98', 1),
(210, '+44', 1),
(211, '+44', 1),
(212, '+850', 1),
(213, '+82', 1),
(214, '+856', 1),
(215, '+218', 1),
(216, '+853', 1),
(217, '+389', 1),
(218, '+691', 1),
(219, '+373', 1),
(220, '+258', 1),
(221, '+970', 1),
(222, '+872', 1),
(223, '+262', 1),
(224, '+7', 1),
(225, '+590', 1),
(226, '+290', 1),
(227, '+1 869', 1),
(228, '+1 758', 1),
(229, '+590', 1),
(230, '+508', 1),
(231, '+1 784', 1),
(232, '+239', 1),
(233, '+252', 1),
(234, '+47', 1),
(235, '+963', 1),
(236, '+886', 1),
(237, '+255', 1),
(238, '+670', 1),
(239, '+58', 1),
(240, '+84', 1),
(241, '+1 284', 1),
(243, '+91', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(8) NOT NULL,
  `uid` int(11) NOT NULL,
  `rate` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `cid`, `sid`, `status`) VALUES
(1, 'Popular\'s Product', 1, 17, 1),
(2, 'Best of Home', 5, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE `noti` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `img` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(8) NOT NULL,
  `oid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `pid` text NOT NULL,
  `ptype` text NOT NULL,
  `pprice` text NOT NULL,
  `ddate` text NOT NULL,
  `timesloat` text NOT NULL,
  `order_date` date NOT NULL,
  `status` text NOT NULL,
  `qty` text NOT NULL,
  `total` int(11) NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `p_method` text DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 0,
  `photo` longtext DEFAULT NULL,
  `s_photo` longtext DEFAULT NULL,
  `r_status` text DEFAULT 'Not Assigned',
  `pickup` text DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `tid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_list`
--

CREATE TABLE `payment_list` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_list`
--

INSERT INTO `payment_list` (`id`, `img`, `title`, `cred_title`, `cred_value`, `status`) VALUES
(1, 'payment/thump_1589451371.png', 'Razorpay', 'RAZORPAY_API_KEY', 'xxxxxxxxxxxx', 1),
(2, 'payment/thump_1589451385.png', 'Paypal', 'Sendbox', 'xxxxxxxxxxxxx', 1),
(3, 'payment/thump_1589451400.png', 'Cash On Delivery', '-', '-', 1),
(4, 'payment/thump_1589451416.png', 'Pickup Myself', '-', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `sname` text NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `psdesc` text NOT NULL,
  `pgms` text NOT NULL,
  `pprice` text NOT NULL,
  `status` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pimg` text NOT NULL,
  `prel` longtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `popular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `prel`, `date`, `discount`, `popular`) VALUES
(9, 'Banana', 'Ambika Niketan', 1, 17, 'A banana is an elongated, edible fruit botanically a berry. produced by several kinds of large herbaceous flowering plants in the genus Musa.', '12 PCS$;18 PCS', '60$;100', 1, 1, 'product/thump_1586929730.png', '', '2020-04-11 18:59:09', 0, 0),
(11, 'Strawberry', 'KMS', 1, 4, 'The garden strawberry is a widely grown hybrid species of the genus Fragaria', '1 KG', '200', 1, 1, 'product/thump_1586930721.png', '', '2020-04-15 11:35:21', 5, 1),
(12, 'Brinjal', 'KMS', 1, 17, 'Eggplant, aubergine or brinjal is a plant species in the nightshade family Solanaceae', '2 KG', '80', 1, 1, 'product/thump_1586934385.png', '', '2020-04-15 12:18:40', 0, 0),
(13, 'Broccoli', 'KMS', 1, 17, 'Broccoli is an edible green plant in the cabbage family whose large flowering head and stalk is eaten as a vegetable.', '1 KG', '40', 1, 1, 'product/thump_1586938942.png', '', '2020-04-15 13:52:22', 0, 0),
(14, 'Corn', 'KMS', 1, 17, 'Maize, also known as corn, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago', '2 KG', '60', 1, 1, 'product/thump_1586939067.png', '', '2020-04-15 13:54:27', 0, 0),
(15, 'Tomato', 'KMS', 1, 17, 'The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant.', '500GMS$;1KG', '80$;120', 1, 1, 'product/thump_1586939525.png', '', '2020-04-15 14:02:05', 6, 0),
(16, 'Cherry', 'Ambika Niketan', 1, 17, 'A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe. ', '1 KG', '100', 1, 1, 'product/thump_1586939873.png', '', '2020-04-15 14:07:53', 0, 1),
(17, 'Pineapple Juice', 'KMS', 5, 12, 'Pineapple juice is a liquid made from pressing the natural liquid from the pulp of the pineapple tropical plant.', '1LTR', '300', 1, 1, 'product/thump_1586940788.png', '', '2020-04-15 14:23:08', 0, 0),
(18, 'Pomegranate Juice', 'KMS', 5, 12, 'Pomegranate juice is made from the fruit of the pomegranate. It is used in cooking both as a fresh juice and as a concentrated syrup.', '2LTR', '120', 1, 1, 'product/thump_1586940999.png', '', '2020-04-15 14:26:39', 0, 0),
(19, 'Almond Cookie', 'KMS', 7, 16, 'An almond lover\'s cookie!', '20 PCS', '300', 1, 1, 'product/thump_1586941679.png', '', '2020-04-15 14:37:59', 0, 0),
(20, 'Doughnut', 'KMS', 7, 16, 'A doughnut or donut is a type of fried dough confection or dessert food', '3 PCS', '500', 1, 1, 'product/thump_1586942246.png', '', '2020-04-15 14:47:26', 0, 0),
(21, 'Ice Cream Jar', 'KMS', 5, 12, 'Pour cream, sugar, vanilla and salt into a 16 ounce mason jar and secure tightly with a lid', '500 ML', '100', 1, 1, 'product/thump_1586943051.png', '', '2020-04-15 15:00:51', 0, 0),
(22, 'Aperol Spritz', 'Ambika Niketan', 5, 12, 'A Spritz Veneziano, also called just Spritz, is an Italian wine-based cocktail', '800 ML', '80', 1, 1, 'product/thump_1586943234.png', '', '2020-04-15 15:03:54', 0, 1),
(23, 'Margarita', 'Ambika Niketan', 5, 12, 'A margarita is a cocktail consisting of tequila, orange liqueur, and lime juice often served with salt on the rim of the glass.', '300 ML', '20', 1, 1, 'product/thump_1586943383.png', '', '2020-04-15 15:06:23', 0, 0),
(24, 'Pizza Margherita', 'KMS', 6, 13, 'Pizza Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt and extra-virgin olive oil. ', '9 PCS$;12 PCS', '100$;130', 1, 1, 'product/thump_1586943621.png', '', '2020-04-15 15:10:21', 0, 0),
(25, 'New York-Style Pizza', 'KMS', 6, 13, 'New York-style pizza is pizza made with a characteristically large hand-tossed thick crust', '9 PCS$;12 PCS', '80$;120', 1, 1, 'product/thump_1586944032.png', '', '2020-04-15 15:17:12', 0, 0),
(26, 'Fruitcake', 'KMS', 7, 15, 'Fruitcake is a cake made with candied or dried fruit, nuts, and spices, and optionally soaked in spirits', '1 KG', '500', 1, 1, 'product/thump_1586944255.png', '', '2020-04-15 15:20:55', 0, 0),
(27, 'Pastry Cake', 'KMS', 7, 16, 'Fruit Pastry Cake - yummy, juicy fruits on top of a rich and sweet cake', '1 KG', '80', 1, 1, 'product/thump_1586944376.png', '', '2020-04-15 15:22:56', 5, 0),
(28, 'Brochette', 'Ambika Niketan', 8, 19, 'A skewer is a thin metal or wood stick used to hold pieces of food together.', '9 PCS$;12 PCS', '80$;120', 1, 1, 'product/thump_1586944814.png', '', '2020-04-15 15:30:14', 0, 0),
(34, 'Daily Milk', 'Ambika Niketan', 5, 12, 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. ', '2 LTR', '500', 1, 1, 'product/thump_1588158399.png', 'product/0milk2.jpg', '2020-04-29 16:36:39', 20, 1),
(36, 'Pineapples', 'KMS', 1, 17, 'The pineapple (Ananas comosus) is a tropical plant with an edible fruit, also called a pineapple, and the most economically significant plant in the family Bromeliaceae. The pineapple is indigenous to South America, where it has been cultivated for many centuries.', '5 PCS$;10 PCS$;12 PCS', '200$;300$;330', 1, 1, 'product/thump_5ec2751b1a99c1589802267.jpg', 'product/0p2.jpg', '2020-05-13 17:03:08', 5, 1),
(38, 'Garlic', 'KMS', 1, 24, 'Garlic is a species in the onion genus, Allium. Its close relatives include the onion, shallot, leek, chive, and Chinese onion. It is native to Central Asia and northeastern Iran, and has long been a common seasoning worldwide, with a history of several thousand years of human consumption and use', '200 GMS$;1 KG', '300$;500', 1, 1, 'product/thump_5ec275717f7911589802353.jpg', '', '2020-05-18 17:11:05', 0, 0),
(39, 'Capsicum Green', 'KMS', 1, 4, 'Green capsicums are harvested before they are fully ripe. They are less ripe versions of the yellow and red ones. They have a crunchy texture and are slightly bitter. Yellow capsicums are more mature than green ones and have a fruiter taste whereas the red ones are the most mature and are usually sweeter', '250 gms', '50', 1, 1, 'product/thump_5ec276aa0a3e21589802666.jpg', 'product/thump_1589802616.jpg', '2020-05-18 17:20:16', 0, 1),
(40, 'Palak', 'KMS', 1, 24, 'Palak is an Indian term for Spinach. ... Indian Spinach or palak is not genetically modified and is a lot softer and tender with smaller leaves. While in North America especially, spinach leaves are big and very thick, almost impossible to eat raw', '200 GMS$;500 GMS$;1 KG', '30$;50$;80', 1, 1, 'product/thump_1589802919.jpg', '', '2020-05-18 17:25:19', 0, 1),
(41, 'Fruit Power Mixed Fruit Juice', 'KMS', 5, 12, 'Discover the tangy-sweet taste and the goodness of fruits in every sip of Real Mixed Fruit Juice. A wholesome beverage packed with energy, rich in taste and with no added colour or preservatives.', '1 LTR$;2 LTR', '80$;150', 1, 1, 'product/thump_5ec2924257cfb1589809730.jpg', 'product/0f2.jpg', '2020-05-18 19:18:10', 0, 1),
(42, 'Beans', 'KMS', 5, 11, 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. Once ripe, coffee berries are picked, processed, and dried. Dried coffee seeds are roasted to varying degrees, depending on the desired flavor.', '250 GMS$;1 KG$;2 KG', '80$;200$;300', 1, 1, 'product/thump_5ec2961e9ddcb1589810718.jpg', 'product/0coffe-mug-2.jpg,product/1coffe-mug-3.jpg,product/2coffe-mug-4.jpg', '2020-05-18 19:29:35', 0, 1),
(43, 'Hakka Noodles', 'KMS', 8, 18, 'My perception of Chinese food was very different when I was a kid. Almost similar to the perception of Indian food in the western world, quite far from reality. You get the drift, right? Anything with soy sauce and vinegar added to it would be considered Chinese, I guess that’s the long and short of it.\r\n\r\nIn India, Chinese food meant noodles, paneer manchurian, sweet corn soup, chili potatoes! It also meant this super flavorful street food which was readily available on roadside stalls and vans and was a part of every kid’s birthday menu!', '1 PCS$;3 PCS', '100$;200', 1, 1, 'product/thump_1589811093.jpg', 'product/0nuddl1.jpg', '2020-05-18 19:41:33', 0, 0),
(44, 'Burger', 'KMS', 6, 14, 'A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chiles; condiments such as ketchup, mustard, mayonnaise, relish, or \"special sauce\"; and are frequently placed on sesame seed buns. A hamburger topped with cheese is called a cheeseburger.', '1 PCS$;2 PCS$;5 PCS$;6 PCS', '30$;50$;80$;150', 1, 1, 'product/thump_1589812766.jpg', '', '2020-05-18 20:09:26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rate_order`
--

CREATE TABLE `rate_order` (
  `id` int(8) NOT NULL,
  `oid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1234',
  `reject` int(11) NOT NULL DEFAULT 0,
  `accept` int(11) NOT NULL DEFAULT 0,
  `complete` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`id`, `name`, `mobile`, `email`, `aid`, `address`, `status`, `password`, `reject`, `accept`, `complete`, `a_status`) VALUES
(1, 'Gopal', '7878787878', 'gopal@gmail.com', 4, '56, Reena Colony, CA, 50042', 1, '1234', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rnoti`
--

CREATE TABLE `rnoti` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rnoti`
--

INSERT INTO `rnoti` (`id`, `rid`, `msg`, `date`) VALUES
(1, 1, 'You have an order assigned to you.', '2020-05-19 14:57:36'),
(2, 1, 'You have an order assigned to you.', '2020-05-19 15:27:27'),
(3, 1, 'You have an order assigned to you.', '2020-05-19 15:35:43'),
(4, 1, 'You have an order assigned to you.', '2020-05-19 16:02:24'),
(5, 1, 'You have an order assigned to you.', '2020-05-19 17:03:33'),
(6, 1, 'You have an order assigned to you.', '2020-05-19 17:15:08'),
(7, 1, 'You have an order assigned to you.', '2020-05-19 17:38:27'),
(8, 1, 'You have an order assigned to you.', '2020-05-19 17:40:52'),
(9, 1, 'You have an order assigned to you.', '2020-05-19 17:46:54'),
(10, 1, 'You have an order assigned to you.', '2020-05-19 18:31:08'),
(11, 1, 'You have an order assigned to you.', '2020-05-20 15:28:52'),
(12, 1, 'You have an order assigned to you.', '2020-05-20 15:38:39'),
(13, 1, 'You have an order assigned to you.', '2020-05-20 16:04:19'),
(14, 1, 'You have an order assigned to you.', '2020-05-20 19:47:49'),
(15, 1, 'You have an order assigned to you.', '2020-05-20 19:48:12'),
(16, 1, 'You have an order assigned to you.', '2020-05-20 19:48:19'),
(17, 1, 'You have an order assigned to you.', '2020-05-21 16:50:44'),
(18, 1, 'You have an order assigned to you.', '2020-05-21 17:07:50'),
(19, 1, 'You have an order assigned to you.', '2020-05-21 17:11:36'),
(20, 1, 'You have an order assigned to you.', '2020-05-21 17:17:46'),
(21, 1, 'You have an order assigned to you.', '2020-05-21 18:32:57'),
(22, 1, 'You have an order assigned to you.', '2020-05-21 19:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `one_key` text NOT NULL,
  `one_hash` text NOT NULL,
  `r_key` text NOT NULL,
  `r_hash` text NOT NULL,
  `currency` text CHARACTER SET utf8 NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `about_us` longtext NOT NULL,
  `contact_us` longtext NOT NULL,
  `o_min` int(11) NOT NULL,
  `timezone` text NOT NULL,
  `tax` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `title` text NOT NULL,
  `terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `one_key`, `one_hash`, `r_key`, `r_hash`, `currency`, `privacy_policy`, `about_us`, `contact_us`, `o_min`, `timezone`, `tax`, `logo`, `favicon`, `title`, `terms`) VALUES
(1, 'xxxxxxxxxxxx', 'xxxxxxxxxxxx', 'xxxxxxxxxxxx', 'xxxxxxxxxxxx', '$', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>cscodetech built the Hungry Grocery Delivery App app as a Free app. This SERVICE is provided by cscodetech at no cost and is intended for use as is.</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Hungry Grocery Delivery App unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/support/privacy/\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n	<li><a href=\"https://onesignal.com/privacy_policy\" target=\"_blank\">One Signal</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2020-05-21</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at [+917276465975].</p>\r\n', '<p><strong>About Hungry Grocery Delivery App </strong></p>\r\n\r\n<p>is the firm belives to delivered fresh Veggies, Fruits &amp; Heathy Juices to the consumers. As it has observed that to buy vegetables &amp; Fruits from the Local Vendor is very expensive. So we provide a platform for you to buy Quality products at a best price.Be it the freshest fruits &amp; vegetables, the finest meats, wide array of cheese, irresistible bakery products and more, for us, our customers&rsquo; needs come first and to serve them better and offer the best in terms of quality, benefits, flavour and taste we have grown and nurtured our own brands over the years.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Whether you want to order at the last minute or are looking for fresh, handpicked fruits and vegetables or want free delivery for household items - we are your daily online convenience store.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>App Features for easy Online Grocery Shopping</strong></p>\r\n\r\n<p><br />\r\n- Simplified design with easy navigation<br />\r\n- Appealing and persuasive user interface<br />\r\n- Faster browsing with just a click!<br />\r\n- Instant confirmation of receipt of your order<br />\r\n- Quick search and quicker check-outs<br />\r\n- Anywhere, anytime shopping convenience<br />\r\n- Innovative technology ensuring best-in-class customer experience<br />\r\n- Regular updates and notifications</p>\r\n', '<p>Address Shop Number 67 68 69 Ground Floor Apple World Shopping Center, CA, 988852</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WhatsApp or Call: +917276465975</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Skype: cscodetech</p>\r\n', 300, 'Asia/Kolkata', 6, 'website/thump_1589874137.png', 'website/thump_1589874137.png', 'Hungry Grocery', '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p>By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to cscodetech.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>cscodetech is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you&rsquo;re paying for.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Hungry Grocery Delivery App app stores and processes personal data that you have provided to us, in order to provide my Service. It&rsquo;s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone&rsquo;s security features and it could mean that the Hungry Grocery Delivery App app won&rsquo;t work properly or at all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/crashlytics\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n	<li><a href=\"https://onesignal.com/tos\" target=\"_blank\">One Signal</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You should be aware that there are certain things that cscodetech will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but cscodetech cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&rsquo;re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you&rsquo;re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you&rsquo;re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Along the same lines, cscodetech cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged &ndash; if it runs out of battery and you can&rsquo;t turn it on to avail the Service, cscodetech cannot accept responsibility.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>With respect to cscodetech&rsquo;s responsibility for your use of the app, when you&rsquo;re using the app, it&rsquo;s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. cscodetech accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android &ndash; the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you&rsquo;ll need to download the updates if you want to keep using the app. cscodetech does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n\r\n<p>I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2020-05-21</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at [+917276465975].</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `cat_id`, `name`, `img`) VALUES
(4, 1, 'Salad', 'cat/thump_1589792075.jpg'),
(11, 5, 'Coffe', 'cat/thump_1589795207.jpg'),
(12, 5, 'Soft Drink', 'cat/thump_1589795297.jpg'),
(13, 6, 'Pizza', 'cat/thump_1589795794.jpg'),
(14, 6, 'Fast food', 'cat/thump_1589795998.jpg'),
(15, 7, 'Fruits Cake', 'cat/thump_1589796482.jpg'),
(16, 7, 'Muffin', 'cat/thump_1589796579.jpg'),
(17, 1, 'Mix', 'cat/thump_1589792361.jpg'),
(18, 8, 'Noodles', 'cat/thump_1589796836.jpg'),
(19, 8, 'Chiken', 'cat/thump_1589797042.jpg'),
(21, 10, 'Eggs', 'cat/thump_1589797268.jpg'),
(22, 10, 'Fish', 'cat/thump_1589797483.jpg'),
(24, 1, 'Leafy', 'cat/thump_1589792582.jpg'),
(27, 6, 'Baby Food', 'product/thump_1589798075.png');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `title`, `message`, `url`) VALUES
(10, 'New sanitizer available ', 'Hello ! We\'re lunch new product', 'no_url'),
(11, 'Shop now ! Limited Stock ', 'Hurry ! New Product Available ', 'no_url'),
(12, 'Sweet sale alert! All Product are a half off, this Friday only! Order today and we\'ll take care of shipping costs.', 'Grab now our latest product. ', 'cat/thump_1589874137.png'),
(13, 'Daily deal: Order any Grocery Product and we\'ll toss in a free side of Garlic and Biscuit! Valid till 4pm.', 'Hurry !!! Buy now', 'cat/thump_1589874137.png');

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `id` int(11) NOT NULL,
  `mintime` text NOT NULL,
  `maxtime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`id`, `mintime`, `maxtime`) VALUES
(2, '09:00', '10:30'),
(3, '10:00', '11:00'),
(4, '12:00', '13:00'),
(5, '14:00', '16:00');

-- --------------------------------------------------------

--
-- Table structure for table `uread`
--

CREATE TABLE `uread` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `imei` text NOT NULL,
  `email` text NOT NULL,
  `ccode` text NOT NULL,
  `mobile` text NOT NULL,
  `rdate` datetime NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `pin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_db`
--
ALTER TABLE `area_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_list`
--
ALTER TABLE `payment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_order`
--
ALTER TABLE `rate_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rnoti`
--
ALTER TABLE `rnoti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uread`
--
ALTER TABLE `uread`
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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area_db`
--
ALTER TABLE `area_db`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_list`
--
ALTER TABLE `payment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `rate_order`
--
ALTER TABLE `rate_order`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rnoti`
--
ALTER TABLE `rnoti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uread`
--
ALTER TABLE `uread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
