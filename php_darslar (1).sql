-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2024 at 01:20 AM
-- Server version: 8.0.39
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_darslar`
--

-- --------------------------------------------------------

--
-- Table structure for table `haridorlar`
--

CREATE TABLE `haridorlar` (
  `id` int DEFAULT NULL,
  `fio` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `buyurtma` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `batafsil` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `haridorlar`
--

INSERT INTO `haridorlar` (`id`, `fio`, `email`, `buyurtma`, `batafsil`) VALUES
(NULL, 'Muhammadnabi Xoliqulov', 'xoliqulovmuhammadnabi842@gmail.com', 'Telefon', 'Menga samsung A54 smartphoning qora ranglisidan va doimiy xotirasi 128 gb lisi kerak'),
(NULL, 'Abdulaziz Yusupov', 'abdulazizphpn2@gmail.com', 'notebook', 'I need a notebook which is name Asus Victus and RAM is 16gb and price 800$');

-- --------------------------------------------------------

--
-- Table structure for table `janr`
--

CREATE TABLE `janr` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `janr`
--

INSERT INTO `janr` (`id`, `name`) VALUES
(2, 'Fantaziya'),
(3, 'Hajviy adabiyotlar'),
(4, 'Sarguzasht janrlar'),
(5, 'Sherlar'),
(6, 'Mumtoz Adabiyot');

-- --------------------------------------------------------

--
-- Table structure for table `kitoblar`
--

CREATE TABLE `kitoblar` (
  `id` int NOT NULL,
  `nomi` varchar(2552) NOT NULL,
  `muallif_id` int NOT NULL,
  `janr_id` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rasm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `kitoblar`
--

INSERT INTO `kitoblar` (`id`, `nomi`, `muallif_id`, `janr_id`, `description`, `rasm`) VALUES
(1, 'kecha va kunduz', 1, 1, 'ewsdfsaf', '2024-10-11_00-12-18.jpg'),
(2, 'Sariq devni minib', 2, 4, 'Tuqima bulsa ham manoli', '2024-10-11_00-20-59.jpg'),
(3, 'Guzal Turkisto', 1, 1, 'here is description', '2024-10-11_00-23-38.jpg'),
(4, 'Xazina', 1, 2, 'here is description', '2024-10-11_00-24-03.jpg'),
(5, 'Yana oldim suzimni', 1, 2, 'here is description', '2024-10-11_00-25-07.jpg'),
(6, 'Shoshqaloq', 2, 1, 'here is description', '2024-10-11_00-26-03.jpg'),
(7, 'bookname', 4, 4, 'here is description', '2024-10-11_00-58-10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `muallif`
--

CREATE TABLE `muallif` (
  `id` int NOT NULL,
  `fio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `muallif`
--

INSERT INTO `muallif` (`id`, `fio`) VALUES
(1, 'Chulpon'),
(2, 'Xudoyberdi Tuxtaboyev'),
(3, 'O\'lmas Umarbekov'),
(4, 'Abdulla Avloniy'),
(5, 'Sadiy Sheroziy'),
(6, 'Asxat Muxtor');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `file` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`title`, `description`, `text`, `file`, `image`) VALUES
('ttsdf', 'ttttt', 'ttttt', 'file', 'img');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `image`) VALUES
(22, 'Telefon', 7453, 50, 'image.jpg'),
(29, 'Notebook', 23, 23, 'image.jpg'),
(30, 'non', 343, 34, 'image.jpg'),
(31, 'Planshet', 23232, 34343, 'image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `talaba`
--

CREATE TABLE `talaba` (
  `id` int NOT NULL,
  `fio` varchar(200) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `manzil` varchar(200) NOT NULL,
  `rasm` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `talaba`
--

INSERT INTO `talaba` (`id`, `fio`, `tel`, `manzil`, `rasm`) VALUES
(3, 'Muhammadnabi Xoliqulov', '+998991655101', 'Toshkent', 'rasm/2024-09-29_17-32-59.jpg'),
(4, 'Abdulaziz Yusupov', '+99893446677', 'Andijon', 'rasm/2024-09-20_21-52-26.jpg'),
(7, 'Shamsiddin Eshchonov', '+998944443456', 'Xorazm', 'rasm/2024-09-20_22-23-08.jpg'),
(8, 'Sherdil Haydarov', '+998943114783', 'Surxandaryo', 'rasm/2024-09-20_23-18-21.jpg'),
(10, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(11, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(12, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(13, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(14, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(15, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(16, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(17, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(18, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(19, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(20, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(21, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(22, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(23, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(24, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(25, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(26, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(27, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(28, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(29, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(30, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(31, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(32, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(33, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(34, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(35, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(36, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(37, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(38, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(39, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(40, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(41, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(42, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(43, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(44, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(45, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(46, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(47, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(48, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(49, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(50, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(51, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(52, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(53, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(54, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(55, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(56, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(57, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(58, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(59, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(60, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(61, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(62, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(63, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(64, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(65, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(66, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(67, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(68, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(69, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(70, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(71, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(72, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(73, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(74, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(75, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(76, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(77, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(78, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(79, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(80, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(81, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(82, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(83, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(84, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(85, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(86, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(87, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(88, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(89, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(90, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(91, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(92, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(93, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(94, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(95, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(96, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(97, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(98, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(99, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(100, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(101, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(102, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(103, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(104, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(105, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(106, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(107, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(108, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-32.jpg'),
(109, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(110, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(111, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(112, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(113, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(114, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(115, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(116, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(117, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(118, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(119, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(120, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(121, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(122, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(123, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(124, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(125, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(126, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(127, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(128, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(129, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(130, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(131, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(132, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(133, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(134, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(135, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(136, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(137, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(138, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(139, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(140, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(141, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(142, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(143, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(144, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(145, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(146, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(147, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(148, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(149, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(150, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(151, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(152, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(153, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(154, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(155, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(156, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(157, 'Muhammadnabi Xoliqulov', '+998991655101', 'Toshkent', 'rasm/2024-09-23_13-36-33.jpeg'),
(158, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(159, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(160, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(161, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(162, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(163, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(164, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(165, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(166, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(167, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(168, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(169, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(170, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(171, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(172, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(173, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(174, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(175, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(176, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(177, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(178, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(179, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(180, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(181, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(182, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(183, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(184, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(185, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(186, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(187, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(188, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(189, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(190, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(191, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(192, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(193, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(194, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(195, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(196, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(197, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(198, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(199, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(200, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(201, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(202, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(203, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(204, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(205, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(206, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(207, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-34.jpg'),
(208, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(209, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(210, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(211, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(212, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(213, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(214, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(215, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(216, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(217, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(218, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(219, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(220, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(221, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(222, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(223, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(224, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(225, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(226, 'Muhammadnabi Xoliqulov', '+998991655101', 'Toshkent', 'rasm/2024-09-29_15-41-37.png'),
(227, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(228, 'Elburs Xoliqulov', '+99899165510133', 'Qashqadryo', 'rasm/2024-09-29_17-47-05.jpg'),
(229, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(230, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(231, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(232, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(233, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(234, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(235, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(236, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(237, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(238, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(239, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(240, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(241, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(242, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(243, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(244, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(245, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(246, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(247, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(248, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(249, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(250, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(251, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(252, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(253, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(254, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(255, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(256, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(257, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(258, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(259, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(260, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(261, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(262, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(263, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(264, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(265, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(266, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(267, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(268, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(269, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(270, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(271, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(272, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(273, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(274, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(275, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(276, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(277, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(278, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(279, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(280, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(281, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(282, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(283, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(284, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(285, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(286, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(287, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(288, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(289, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(290, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(291, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(292, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(293, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(294, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(295, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(296, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(297, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(298, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(299, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(300, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(301, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(302, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(303, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(304, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(305, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(306, 'Muhammadnabi Xoliqulov', '+998991655101', 'Qashqadryo', 'rasm/2024-09-23_12-44-35.jpg'),
(307, 'Muhammadnabi Xoliqulov', '+99899999999', 'Qashqadaryo', 'rasm.jpg'),
(308, '', '', '', 'rasm.jpg'),
(309, '', '', '', 'rasm.jpg'),
(310, '', '', '', 'rasm.jpg'),
(311, 'Muhammadnabi Xoliqulov', '+99899165510133', 'Qashqadaryo', 'rasm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `talabalar`
--

CREATE TABLE `talabalar` (
  `id` int NOT NULL,
  `fio` varchar(200) NOT NULL,
  `tel` varchar(200) NOT NULL,
  `kurs` varchar(200) NOT NULL,
  `manzil` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `talabalar`
--

INSERT INTO `talabalar` (`id`, `fio`, `tel`, `kurs`, `manzil`) VALUES
(1, 'sfdsdf', '113413', 'weqr', 'asddfasdf'),
(2, 'sfdsdf', '113413', 'weqr', 'asddfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` char(60) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Bekhruzbek Mirzaliev', 'mirzalievbekhruz664@gmail.com', '$2y$10$k1gMa29NU5aQo.NM5OnwdOxGDtIyJkTj8nW8FWaJBXR2vL0vV1O7C'),
(2, 'Bekhruzbek Mirzaliev', 'bekhruzbekmirzaliev744@gmail.com', '$2y$10$lGk7DWOoW.f/1CxwKV.xsOWDixvfRIl6sWTMOfUKoXnp7s5.laUS.'),
(3, 'Bekhruzbek Mirzaliev', 'mirzalievbekhruzjoon664@gmail.com', '$2y$10$myW26mJAImRLB3.P3oEHmuQO5VC9VLWiFHHlr6Ud7WLh0kaSBZ0F2'),
(4, 'Richard', 'richard@gmail.com', '$2y$10$YeWGVO2dBN0nQcHk1ZZUKemyvWgjTXj9Y7kREMfU22O5xssz5YAqa'),
(5, 'Rajabov R', 'bekhruzbekmirzalievsss744@gmail.com', '$2y$10$OAXT8N..40oaQrFZFKj71esCXyRzbWNrB3/2tXuBtXmdxLIb8gqwS'),
(6, 'Bekhruzbek', 'bekhruzbekmirzalievaaa744@gmail.com', '$2y$10$/0NbBot/Ax7lyl08zc5yG.qckhFfqXKers4d4VVMkDdk5GsCHqk1G'),
(7, 'Richard', 'richard100@gmail.com', '$2y$10$fmodVefKW/DctevzCFqExussy7.HUdtJb9yLrWT1UXMAt2Zs31RJ.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `janr`
--
ALTER TABLE `janr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitoblar`
--
ALTER TABLE `kitoblar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muallif`
--
ALTER TABLE `muallif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talaba`
--
ALTER TABLE `talaba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talabalar`
--
ALTER TABLE `talabalar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `janr`
--
ALTER TABLE `janr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kitoblar`
--
ALTER TABLE `kitoblar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `muallif`
--
ALTER TABLE `muallif`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `talaba`
--
ALTER TABLE `talaba`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `talabalar`
--
ALTER TABLE `talabalar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
