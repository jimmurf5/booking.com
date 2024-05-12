-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 11:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomm`
--

CREATE TABLE `accomm` (
  `accomm_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `latitude` decimal(8,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `accomm_type_id` int(11) NOT NULL,
  `date_avail_from` date NOT NULL,
  `date_avail_to` date NOT NULL,
  `star_rating_id` int(11) NOT NULL,
  `accomm_address_id` int(11) NOT NULL,
  `propert_contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomm`
--

INSERT INTO `accomm` (`accomm_id`, `name`, `description`, `latitude`, `longitude`, `accomm_type_id`, `date_avail_from`, `date_avail_to`, `star_rating_id`, `accomm_address_id`, `propert_contact_id`) VALUES
(1, 'El Hotel Para Tu', 'The best hotel this side of the Pyrenees.', '41.888888', '1.666666', 3, '2023-11-07', '2024-02-29', 4, 1, 1),
(2, 'Barato Barato', 'We have cut a lot of corners here but its cheap.', '41.884588', '1.656666', 3, '2023-11-07', '2024-03-29', 2, 2, 2),
(3, 'Gran Hotel Barcelona', 'Very swanky and exclusive. We are at your beck and call 24/7', '41.595888', '1.644666', 3, '2023-11-07', '2024-03-29', 5, 3, 3),
(4, 'Belfast Ramada', 'Serious craic and good food at inflated prices', '23.888888', '6.666666', 3, '2023-10-07', '2024-06-29', 4, 4, 4),
(5, 'Gaudi Hotel', 'Iys got not one thing to do with Gaudi, we just borrowed his name', '41.888388', '1.666622', 3, '2023-11-07', '2024-05-02', 3, 5, 5),
(6, 'A Bed in a room', 'It aint the Ritz.', '41.123888', '1.123666', 3, '2023-11-07', '2024-11-29', 2, 6, 6),
(7, 'Ocean View Hotel', 'Opulence and elegance by the sea in Barcelona.', '31.888888', '3.666666', 3, '2023-11-07', '2024-12-15', 5, 7, 7),
(8, 'Sercotel Caspe', 'Old Catalonian charm in a modern setting', '31.888888', '8.666666', 3, '2023-11-07', '2024-10-03', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `accomm_accomm_facilities`
--

CREATE TABLE `accomm_accomm_facilities` (
  `accomm_accomm_facilities_id` int(11) NOT NULL,
  `accomm_id` int(11) NOT NULL,
  `accomm_facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomm_accomm_facilities`
--

INSERT INTO `accomm_accomm_facilities` (`accomm_accomm_facilities_id`, `accomm_id`, `accomm_facilities_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 8),
(6, 1, 10),
(7, 2, 2),
(8, 3, 1),
(9, 3, 3),
(10, 3, 4),
(11, 3, 5),
(12, 3, 6),
(13, 3, 7),
(14, 3, 10),
(15, 3, 11),
(16, 4, 1),
(17, 4, 3),
(18, 4, 10),
(19, 4, 7),
(20, 5, 10),
(21, 5, 3),
(22, 5, 8),
(23, 6, 2),
(24, 7, 1),
(25, 7, 3),
(26, 7, 4),
(27, 7, 5),
(28, 7, 6),
(29, 7, 7),
(30, 7, 11),
(31, 7, 10),
(32, 8, 1),
(33, 8, 11),
(34, 8, 10),
(35, 8, 7),
(36, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `accomm_accomm_image`
--

CREATE TABLE `accomm_accomm_image` (
  `accomm_accomm_image_id` int(11) NOT NULL,
  `accomm_id` int(11) NOT NULL,
  `accomm_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accomm_address`
--

CREATE TABLE `accomm_address` (
  `accomm_address_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `postcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomm_address`
--

INSERT INTO `accomm_address` (`accomm_address_id`, `address`, `city_id`, `country_id`, `postcode`) VALUES
(1, 'Caspe, 103, Eixample', 2, 3, '08013'),
(2, ' Pintor Fortuny, 9, Ciutat Vella', 2, 3, '08011'),
(3, 'Carretera Vallvidrera-Tibidabo, 83-93', 2, 3, '08035'),
(4, '1 Great Victoria Street', 5, 1, 'bt10gg'),
(5, '95 Carrer de Saragossa, Sarrià-St. Gervasi', 2, 3, '08011'),
(6, 'The Ghetto', 2, 3, '08008'),
(7, '21 La Calle de carro', 2, 3, '08013'),
(8, '56 avenue de Romantica', 2, 3, '08093');

-- --------------------------------------------------------

--
-- Table structure for table `accomm_facilities`
--

CREATE TABLE `accomm_facilities` (
  `accomm_facilities_id` int(11) NOT NULL,
  `facility_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomm_facilities`
--

INSERT INTO `accomm_facilities` (`accomm_facilities_id`, `facility_type`) VALUES
(1, 'Restaurant'),
(2, 'Pets allowed'),
(3, 'Free WiFi'),
(4, 'Parking'),
(5, 'Fitness centre'),
(6, 'Family rooms'),
(7, 'Swimming Pool'),
(8, 'Airport shuttle'),
(9, 'Electric vehicle charging station'),
(10, '24-hour front desk'),
(11, 'Spa and wellness centre');

-- --------------------------------------------------------

--
-- Table structure for table `accomm_image`
--

CREATE TABLE `accomm_image` (
  `accomm_image_id` int(11) NOT NULL,
  `accomm_image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accomm_poi`
--

CREATE TABLE `accomm_poi` (
  `accomm_poi_id` int(11) NOT NULL,
  `accomm_id` int(11) NOT NULL,
  `points_of_interest_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomm_poi`
--

INSERT INTO `accomm_poi` (`accomm_poi_id`, `accomm_id`, `points_of_interest_id`) VALUES
(1, 1, 7),
(2, 1, 8),
(3, 1, 9),
(4, 1, 10),
(5, 1, 12),
(6, 1, 13),
(7, 1, 11),
(8, 1, 14),
(9, 1, 15),
(10, 2, 7),
(11, 2, 8),
(12, 2, 9),
(13, 2, 10),
(14, 2, 12),
(15, 2, 13),
(16, 2, 11),
(17, 2, 14),
(18, 2, 15),
(19, 3, 7),
(20, 3, 8),
(21, 3, 9),
(22, 3, 10),
(23, 3, 12),
(24, 3, 13),
(25, 3, 11),
(26, 3, 14),
(27, 3, 15),
(28, 4, 7),
(29, 4, 8),
(30, 4, 9),
(31, 4, 10),
(32, 4, 12),
(33, 4, 13),
(34, 4, 11),
(35, 4, 14),
(36, 4, 15),
(37, 5, 7),
(38, 5, 8),
(39, 5, 9),
(40, 5, 10),
(41, 5, 12),
(42, 5, 13),
(43, 5, 11),
(44, 5, 14),
(45, 5, 15),
(46, 6, 7),
(47, 6, 8),
(48, 6, 9),
(49, 6, 10),
(50, 6, 12),
(51, 6, 13),
(52, 6, 11),
(53, 6, 14),
(54, 6, 15),
(55, 7, 7),
(56, 7, 8),
(57, 7, 9),
(58, 7, 10),
(59, 7, 12),
(60, 7, 13),
(61, 7, 11),
(62, 7, 14),
(63, 7, 15),
(64, 8, 7),
(65, 8, 8),
(66, 8, 9),
(67, 8, 10),
(68, 8, 12),
(69, 8, 13),
(70, 8, 11),
(71, 8, 14),
(72, 8, 15);

-- --------------------------------------------------------

--
-- Table structure for table `accomm_type`
--

CREATE TABLE `accomm_type` (
  `accomm_type_id` int(11) NOT NULL,
  `accomm_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomm_type`
--

INSERT INTO `accomm_type` (`accomm_type_id`, `accomm_type_name`) VALUES
(1, 'Entire homes & apartments'),
(2, 'Apartments'),
(3, 'Hotels'),
(4, 'Guest houses'),
(5, 'Hostels'),
(6, 'Boats'),
(7, 'Bed and breakfasts'),
(8, 'Holiday homes'),
(9, 'Homestays'),
(10, 'Villas'),
(11, 'Lodges'),
(12, 'Student accommodation'),
(13, 'Farms stays'),
(14, 'Love hotels');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `postcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address`, `country_id`, `city_id`, `postcode`) VALUES
(5, '560 ANTRIM ROAD', 1, 5, 'BT17 0ZZ'),
(6, '560 ANTRIM ROAD', 1, 5, 'BT17 0ZZ');

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

CREATE TABLE `bed_type` (
  `bed_type_id` int(11) NOT NULL,
  `bed_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`bed_type_id`, `bed_type_name`) VALUES
(1, 'single bed'),
(2, 'double bed'),
(4, 'Twin'),
(5, 'Large double'),
(6, 'extra-large double bed '),
(7, 'Queen'),
(8, 'King'),
(9, 'Sofa bed');

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `board_id` int(11) NOT NULL,
  `board_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`board_id`, `board_type`) VALUES
(1, 'Self catering'),
(2, 'Breakfast included'),
(3, 'All meals included'),
(4, 'Breakfast & dinner included'),
(5, 'No meals included');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `accomm_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_made_date` date NOT NULL,
  `check_in_date` date NOT NULL,
  `booking_duration_nights` int(11) NOT NULL,
  `main_guest_id` int(11) NOT NULL,
  `special_requests` text NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_detail_id` int(11) NOT NULL,
  `total_price_paid` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `confirmation_number` varchar(255) NOT NULL,
  `pin_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `accomm_id`, `user_id`, `booking_made_date`, `check_in_date`, `booking_duration_nights`, `main_guest_id`, `special_requests`, `payment_method_id`, `payment_detail_id`, `total_price_paid`, `currency_id`, `confirmation_number`, `pin_code`) VALUES
(7, 7, 5, '2023-10-29', '2024-01-05', 3, 1, 'fun please', 4, 6, '995.97', 1, '3740.310.506', 1844);

-- --------------------------------------------------------

--
-- Table structure for table `booking_guest`
--

CREATE TABLE `booking_guest` (
  `booking_guest_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `other_guest_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_guest`
--

INSERT INTO `booking_guest` (`booking_guest_id`, `booking_id`, `other_guest_details_id`) VALUES
(6, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `booking_line_item`
--

CREATE TABLE `booking_line_item` (
  `booking_line_item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `item_cost` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_line_item`
--

INSERT INTO `booking_line_item` (`booking_line_item_id`, `item_name`, `item_description`, `item_cost`, `currency_id`, `payment_type_id`, `booking_id`) VALUES
(12, '1unit/ 3 nights', 'some sort of suite, cant remember', '842.60', 1, 1, 7),
(13, '12.5% VAT', 'One of the 2 things that you can be sure of.', '120.37', 1, 1, 7),
(14, '3.50 City tax per person per night', 'more taxes, sorry', '33.00', 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `card_type_id` int(11) NOT NULL,
  `card_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`card_type_id`, `card_type_name`) VALUES
(1, 'American Express'),
(2, 'Mastercard'),
(3, 'Visa'),
(4, 'Diners Club'),
(5, 'JCB');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Madrid'),
(2, 'Barcelona'),
(3, 'Seville'),
(4, 'Cordoba'),
(5, 'Belfast'),
(6, 'Lisburn'),
(7, 'Dublin'),
(8, 'London'),
(9, 'Athens'),
(10, 'Zagreb'),
(11, 'Berlin'),
(12, 'Tokyo');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'United Kingdom'),
(2, 'Ireland'),
(3, 'Spain'),
(4, 'Germany'),
(5, 'Greece'),
(6, 'Croatia'),
(7, 'Brazil'),
(8, 'Argentina'),
(9, 'Mexico'),
(10, 'United States'),
(11, 'China'),
(12, 'France'),
(13, 'Japan'),
(14, 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`) VALUES
(1, 'GBP'),
(2, 'USD'),
(3, 'Euro'),
(4, 'Swiss Franc'),
(5, 'Brazilian Real'),
(6, 'Mexican Peso'),
(7, 'Chinese Yuan'),
(8, 'Japanese Yen');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `language_symbol` varchar(2550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`, `language_symbol`) VALUES
(1, 'English', '/common/flags/new/48-squared//gb.png'),
(2, 'Spanish', '/common/flags/new/48-squared//es.png'),
(3, 'Chinese', '/common/flags/new/48-squared//cn.png'),
(4, 'French', '/common/flags/new/48-squared//fr.png'),
(5, 'German', '/common/flags/new/48-squared//de.png'),
(6, 'Italian', '/common/flags/new/48-squared//il.png');

-- --------------------------------------------------------

--
-- Table structure for table `main_guest`
--

CREATE TABLE `main_guest` (
  `main_guest_id` int(11) NOT NULL,
  `main_guest_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_guest`
--

INSERT INTO `main_guest` (`main_guest_id`, `main_guest_status`) VALUES
(1, 'Main guest'),
(2, 'Booking for somebody else.');

-- --------------------------------------------------------

--
-- Table structure for table `other_guest_details`
--

CREATE TABLE `other_guest_details` (
  `other_guest_details_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_guest_details`
--

INSERT INTO `other_guest_details` (`other_guest_details_id`, `first_name`, `last_name`, `email`) VALUES
(6, 'jim', 'morrison', 'thedoor@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `payment_detail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_type_id` int(11) NOT NULL,
  `cardholder_name` varbinary(255) NOT NULL,
  `card_long_numb` varbinary(255) NOT NULL,
  `expiry_month` varbinary(255) NOT NULL,
  `expiry_year` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_detail`
--

INSERT INTO `payment_detail` (`payment_detail_id`, `user_id`, `card_type_id`, `cardholder_name`, `card_long_numb`, `expiry_month`, `expiry_year`) VALUES
(6, 6, 1, 0x41d281d8d04024f33ba9488dc7a41423020b8a64c7fbb74a68c77a180c9a031b, 0x3254d7a2c4fe7d9d64a8b51fbd155ca92f248beee2dea8953f50fa2e3d135137, 0xfa5f497dedc0be63513e9334c9744261, 0xd27e12ac1adeb600223080f91a19bc64);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method_type`) VALUES
(1, 'PayPal'),
(2, 'ApplePay'),
(3, 'GooglePay'),
(4, 'Card payment');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL,
  `payment_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_id`, `payment_type_name`) VALUES
(1, 'Debit'),
(2, 'Credit');

-- --------------------------------------------------------

--
-- Table structure for table `phone_code`
--

CREATE TABLE `phone_code` (
  `phone_code_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_code`
--

INSERT INTO `phone_code` (`phone_code_id`, `code`, `country`) VALUES
(1, 44, 'United Kingdom'),
(2, 353, 'Ireland'),
(3, 34, 'Spain'),
(4, 1, 'United States'),
(5, 49, 'Germany'),
(6, 86, 'China');

-- --------------------------------------------------------

--
-- Table structure for table `points_of_interest`
--

CREATE TABLE `points_of_interest` (
  `points_of_interest_id` int(11) NOT NULL,
  `type_of_poi_id` int(11) NOT NULL,
  `name_of_poi` varchar(255) NOT NULL,
  `latitude` decimal(8,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `points_of_interest`
--

INSERT INTO `points_of_interest` (`points_of_interest_id`, `type_of_poi_id`, `name_of_poi`, `latitude`, `longitude`) VALUES
(7, 4, 'Sagrada Familia', '41.123456', '1.145263'),
(8, 4, 'Park Guell', '40.789456', '1.258147'),
(9, 4, 'Picasso Museum', '41.258147', '1.235641'),
(10, 2, 'Barcelona airport', '41.251478', '1.235641'),
(11, 5, 'The best tapas in town', '41.956214', '1.754632'),
(12, 3, 'Costa de Barcelona', '42.253641', '1.789456'),
(13, 1, 'Metro Provença', '43.251478', '2.333333'),
(14, 5, 'Muchos comida ', '42.333333', '1.748596'),
(15, 4, 'Placa Catalunya', '41.777777', '1.444444');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `preferences_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`preferences_id`, `currency_id`, `language_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_contact`
--

CREATE TABLE `property_contact` (
  `propert_contact_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_code_id` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_contact`
--

INSERT INTO `property_contact` (`propert_contact_id`, `first_name`, `last_name`, `phone_code_id`, `phone_number`, `email`) VALUES
(1, 'Maria', 'Lopez', 3, 645678923, 'marialopez@theinternet.org'),
(2, 'Miguel', 'Ramos', 3, 645678123, 'mramos22@theinternet.org'),
(3, 'Pep', 'Fernandez', 3, 645678123, 'pffuntimes@theinternet.org'),
(4, 'Bobby', 'Boulders', 1, 2147483647, 'bbisthe best@theinternet.org'),
(5, 'Paco', 'Cortez', 3, 644528923, 'paco123456@theinternet.org'),
(6, 'Some', 'Guy', 3, 645678923, 'randomdude@theinternet.org'),
(7, 'Juan', 'Sheet', 3, 645678923, 'hellohello@theinternet.org'),
(8, 'David', 'Villa', 3, 645678923, 'daveyv@theinternet.org');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `review_title` varchar(255) NOT NULL,
  `review_rating_id` int(11) NOT NULL,
  `pro_comment` text NOT NULL,
  `con_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_photo`
--

CREATE TABLE `review_photo` (
  `review_photo_id` int(11) NOT NULL,
  `review_photo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_rating`
--

CREATE TABLE `review_rating` (
  `review_rating_id` int(11) NOT NULL,
  `staff_rating` int(11) NOT NULL,
  `facilities_rating` int(11) NOT NULL,
  `clean_rating` int(11) NOT NULL,
  `comfort_rating` int(11) NOT NULL,
  `value_rating` int(11) NOT NULL,
  `location_rating` int(11) NOT NULL,
  `free_wifi_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_review_photo`
--

CREATE TABLE `review_review_photo` (
  `review_review_photo_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `review_photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `accomm_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_sale_from` date NOT NULL,
  `date_sale_to` date NOT NULL,
  `board_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `accomm_id`, `room_type_id`, `price_per_night`, `currency_id`, `quantity`, `date_sale_from`, `date_sale_to`, `board_id`) VALUES
(1, 1, 1, '99.99', 1, 10, '2023-11-07', '2024-02-01', 2),
(2, 1, 2, '139.99', 1, 11, '2023-11-07', '2024-03-01', 2),
(3, 1, 10, '250.00', 1, 1, '2023-11-07', '2024-01-23', 2),
(4, 2, 1, '59.99', 1, 15, '2023-11-07', '2024-03-29', 5),
(5, 2, 2, '85.59', 1, 5, '2023-11-07', '2024-02-15', 5),
(6, 3, 9, '299.99', 1, 3, '2023-11-07', '2024-03-29', 2),
(7, 3, 12, '159.99', 1, 5, '2023-11-07', '2024-03-13', 2),
(8, 4, 3, '169.99', 1, 8, '2023-11-07', '2024-06-29', 5),
(9, 5, 1, '95.99', 1, 14, '2023-11-07', '2024-02-01', 5),
(10, 5, 2, '129.99', 1, 8, '2023-11-07', '2024-02-01', 5),
(11, 6, 1, '49.99', 1, 16, '2023-11-10', '2024-11-13', 5),
(12, 6, 2, '84.99', 1, 5, '2023-11-07', '2024-11-01', 5),
(13, 7, 2, '199.99', 1, 6, '2023-11-09', '2024-11-01', 2),
(14, 7, 7, '320.99', 1, 1, '2024-01-01', '2024-07-31', 2),
(15, 7, 6, '239.99', 1, 3, '2023-11-16', '2024-06-30', 2),
(16, 8, 1, '110.59', 1, 4, '2023-11-07', '2024-08-31', 2),
(17, 8, 8, '189.99', 1, 7, '2023-11-07', '2024-08-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_bed_type`
--

CREATE TABLE `room_bed_type` (
  `room_bed_type_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `bed_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_bed_type`
--

INSERT INTO `room_bed_type` (`room_bed_type_id`, `room_id`, `bed_type_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 8),
(4, 4, 1),
(5, 5, 2),
(6, 6, 7),
(7, 6, 1),
(8, 7, 1),
(9, 7, 1),
(10, 8, 1),
(11, 8, 2),
(12, 9, 1),
(13, 10, 2),
(14, 11, 1),
(15, 12, 2),
(16, 13, 7),
(17, 14, 8),
(18, 14, 4),
(19, 15, 6),
(20, 16, 4),
(21, 17, 5),
(22, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `numb_adults` int(11) NOT NULL,
  `numb_child` int(11) NOT NULL,
  `price_per_room` decimal(10,2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `quantity_booked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `booking_id`, `room_id`, `numb_adults`, `numb_child`, `price_per_room`, `currency_id`, `quantity_booked`) VALUES
(6, 7, 14, 2, 0, '320.99', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `room_facilities_id` int(11) NOT NULL,
  `facility_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`room_facilities_id`, `facility_type`) VALUES
(1, 'Roll-in shower'),
(2, 'Hot tub'),
(3, 'Private pool'),
(4, 'Private bathroom'),
(5, 'Terrace'),
(6, 'Lockers'),
(7, 'Sea view'),
(8, 'Air purifier'),
(9, 'Additional toilet'),
(10, 'Shower'),
(11, 'Pool with a view'),
(12, 'View'),
(13, 'Refrigerator'),
(14, 'Spa bath'),
(15, 'Upper floors accessible by elevator'),
(16, 'Towels'),
(17, 'Rooftop pool'),
(18, 'Coffee/tea maker'),
(19, 'Sofa bed'),
(20, 'TV'),
(21, 'Soundproofing'),
(22, 'Walk-in shower'),
(23, 'Hairdryer'),
(24, 'Heating'),
(25, 'Toilet paper');

-- --------------------------------------------------------

--
-- Table structure for table `room_image`
--

CREATE TABLE `room_image` (
  `room_image_id` int(11) NOT NULL,
  `room_image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_room_facilities`
--

CREATE TABLE `room_room_facilities` (
  `room_room_facilities_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_room_facilities`
--

INSERT INTO `room_room_facilities` (`room_room_facilities_id`, `room_id`, `room_facilities_id`) VALUES
(1, 1, 10),
(2, 1, 13),
(3, 1, 23),
(4, 1, 18),
(5, 1, 20),
(6, 1, 16),
(7, 1, 24),
(8, 2, 2),
(9, 2, 13),
(10, 2, 16),
(11, 2, 25),
(12, 2, 8),
(13, 2, 6),
(14, 3, 2),
(15, 3, 7),
(16, 3, 12),
(17, 3, 23),
(18, 3, 18),
(19, 3, 20),
(20, 4, 25),
(21, 4, 16),
(22, 5, 25),
(23, 5, 16),
(24, 6, 2),
(25, 6, 5),
(26, 6, 7),
(27, 6, 10),
(28, 6, 25),
(29, 6, 23),
(30, 6, 20),
(31, 6, 16),
(32, 6, 18),
(33, 7, 20),
(34, 7, 22),
(35, 7, 18),
(36, 7, 12),
(37, 7, 16),
(38, 8, 25),
(39, 8, 21),
(40, 8, 18),
(41, 8, 1),
(42, 8, 24),
(43, 8, 23),
(44, 9, 10),
(45, 9, 13),
(46, 9, 13),
(47, 9, 23),
(48, 10, 20),
(49, 10, 23),
(50, 10, 16),
(51, 10, 8),
(52, 11, 25),
(53, 12, 25),
(54, 13, 20),
(55, 13, 14),
(56, 13, 18),
(57, 13, 13),
(58, 14, 2),
(59, 14, 7),
(60, 14, 13),
(61, 14, 23),
(62, 14, 9),
(63, 14, 8),
(64, 15, 7),
(65, 15, 20),
(66, 15, 10),
(67, 15, 18),
(68, 15, 21),
(69, 15, 8),
(70, 16, 10),
(71, 16, 13),
(72, 16, 16),
(73, 16, 23),
(74, 16, 18),
(75, 16, 20),
(76, 17, 22),
(77, 17, 20),
(78, 17, 19),
(79, 17, 13),
(80, 17, 12),
(81, 17, 9),
(82, 17, 7),
(83, 16, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room_room_image`
--

CREATE TABLE `room_room_image` (
  `room_room_image_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type_name`) VALUES
(1, 'Single'),
(2, 'Double'),
(3, 'Triple Room'),
(4, 'Superior Double or Twin Room with Terrace '),
(5, 'Deluxe Double Room '),
(6, 'Superior Double Room '),
(7, 'Studio with Terrace '),
(8, 'Deluxe Triple Room '),
(9, 'Junior Suite with Terrace '),
(10, 'Honeymoon Suite'),
(11, 'Presidential Suite'),
(12, 'Deluxe Single Room');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `security_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`security_id`, `user_email`, `user_password`) VALUES
(5, 'myaddressonline.com', 0x34373938373134613237383031353161613366303638346164613738306236313236613366313730633466363131),
(7, 'bilbo@theshire.org', 0x64363562333864646632353462336630323333326266623335343664356163626530363562666431633465613564),
(8, 'myaddressonline.com', 0x64613266636531363333386264303833633335303032303333623264353732333961633338363632323037633431),
(9, 'myaddressonline.com', 0x39616330623432613066316363636539656330623866646233313231336136656536623430303466396333333062),
(10, 'myaddressonline.com', 0x31626562646437323535613864343163306234613162396434303035303836336237653162383734336163343939),
(11, 'myaddressonline.com', 0x65663962346162366232383738613936336464616566383062626239666263343063336432616538336361336263);

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `star_rating_id` int(11) NOT NULL,
  `star_numb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`star_rating_id`, `star_numb`) VALUES
(1, '1 star'),
(2, '2 stars'),
(3, '3 stars'),
(4, '4 stars'),
(5, '5 stars'),
(6, 'Unrated');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_poi`
--

CREATE TABLE `type_of_poi` (
  `type_of_poi_id` int(11) NOT NULL,
  `type_of_poi_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_of_poi`
--

INSERT INTO `type_of_poi` (`type_of_poi_id`, `type_of_poi_name`) VALUES
(1, 'Public transport'),
(2, 'Closest airports'),
(3, 'Natural beauty'),
(4, 'Top attractions'),
(5, 'Restaurants & cafes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_numb` varchar(20) NOT NULL,
  `phone_code_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `preferences_id` int(11) NOT NULL,
  `security_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `phone_numb`, `phone_code_id`, `address_id`, `preferences_id`, `security_id`) VALUES
(5, 'jim', 'murph', '2147483647', 4, 5, 5, 10),
(6, 'jim', 'murph', '07777777777', 4, 6, 6, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomm`
--
ALTER TABLE `accomm`
  ADD PRIMARY KEY (`accomm_id`),
  ADD KEY `FK_accomm_type_accomm_type_id` (`accomm_type_id`),
  ADD KEY `FK_accomm_address_accomm_address_id` (`accomm_address_id`),
  ADD KEY `FK_star_rating_star_rating_id` (`star_rating_id`),
  ADD KEY `FK_property_contact_property_contact_id` (`propert_contact_id`);

--
-- Indexes for table `accomm_accomm_facilities`
--
ALTER TABLE `accomm_accomm_facilities`
  ADD PRIMARY KEY (`accomm_accomm_facilities_id`),
  ADD KEY `FK_accomm_accomm_id2` (`accomm_id`),
  ADD KEY `FK_accomm_facilities_accomm_facilities_id` (`accomm_facilities_id`);

--
-- Indexes for table `accomm_accomm_image`
--
ALTER TABLE `accomm_accomm_image`
  ADD PRIMARY KEY (`accomm_accomm_image_id`),
  ADD KEY `FK_accomm_accomm_id_three` (`accomm_id`),
  ADD KEY `FK_accomm_image_accomm_image_id` (`accomm_image_id`);

--
-- Indexes for table `accomm_address`
--
ALTER TABLE `accomm_address`
  ADD PRIMARY KEY (`accomm_address_id`),
  ADD KEY `FK_city_city_id2` (`city_id`),
  ADD KEY `FK_country_country_id2` (`country_id`);

--
-- Indexes for table `accomm_facilities`
--
ALTER TABLE `accomm_facilities`
  ADD PRIMARY KEY (`accomm_facilities_id`);

--
-- Indexes for table `accomm_image`
--
ALTER TABLE `accomm_image`
  ADD PRIMARY KEY (`accomm_image_id`);

--
-- Indexes for table `accomm_poi`
--
ALTER TABLE `accomm_poi`
  ADD PRIMARY KEY (`accomm_poi_id`),
  ADD KEY `FK_accomm_accomm_id_four` (`accomm_id`),
  ADD KEY `FK_points_of_interest_points_of_interest_id` (`points_of_interest_id`);

--
-- Indexes for table `accomm_type`
--
ALTER TABLE `accomm_type`
  ADD PRIMARY KEY (`accomm_type_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_city_city_id` (`city_id`),
  ADD KEY `FK_country_country_id` (`country_id`);

--
-- Indexes for table `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`bed_type_id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`board_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_accomm_accomm_id_six` (`accomm_id`),
  ADD KEY `FK_payment_detail_payment_detail_id_two` (`payment_detail_id`),
  ADD KEY `FK_main_guest_main_guest_id` (`main_guest_id`),
  ADD KEY `FK_payment_method_payment_method_id` (`payment_method_id`),
  ADD KEY `FK_user_user_id` (`user_id`),
  ADD KEY `FK_currency_currency_id_five` (`currency_id`);

--
-- Indexes for table `booking_guest`
--
ALTER TABLE `booking_guest`
  ADD PRIMARY KEY (`booking_guest_id`),
  ADD KEY `FK_other_guest_details_other_guest_details_id` (`other_guest_details_id`),
  ADD KEY `FK_booking_booking_id_four` (`booking_id`);

--
-- Indexes for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD PRIMARY KEY (`booking_line_item_id`),
  ADD KEY `FK_currency_currency_id_two` (`currency_id`),
  ADD KEY `FK_payment_type_payment_type_id` (`payment_type_id`),
  ADD KEY `FK_booking_booking_id_two` (`booking_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`card_type_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `main_guest`
--
ALTER TABLE `main_guest`
  ADD PRIMARY KEY (`main_guest_id`);

--
-- Indexes for table `other_guest_details`
--
ALTER TABLE `other_guest_details`
  ADD PRIMARY KEY (`other_guest_details_id`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`payment_detail_id`),
  ADD KEY `FK_card_type_card_type_id` (`card_type_id`),
  ADD KEY `FK_user_user_id_two` (`user_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `phone_code`
--
ALTER TABLE `phone_code`
  ADD PRIMARY KEY (`phone_code_id`);

--
-- Indexes for table `points_of_interest`
--
ALTER TABLE `points_of_interest`
  ADD PRIMARY KEY (`points_of_interest_id`),
  ADD KEY `FK_type_of_poi_type_of_poi_id` (`type_of_poi_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`preferences_id`),
  ADD KEY `FK_currency_currency_id` (`currency_id`),
  ADD KEY `FK_language_language_id` (`language_id`);

--
-- Indexes for table `property_contact`
--
ALTER TABLE `property_contact`
  ADD PRIMARY KEY (`propert_contact_id`),
  ADD KEY `FK_phone_code_phone_code_id_two` (`phone_code_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_review_rating_review_rating_id` (`review_rating_id`),
  ADD KEY `FK_booking_booking_id` (`booking_id`);

--
-- Indexes for table `review_photo`
--
ALTER TABLE `review_photo`
  ADD PRIMARY KEY (`review_photo_id`);

--
-- Indexes for table `review_rating`
--
ALTER TABLE `review_rating`
  ADD PRIMARY KEY (`review_rating_id`);

--
-- Indexes for table `review_review_photo`
--
ALTER TABLE `review_review_photo`
  ADD PRIMARY KEY (`review_review_photo_id`),
  ADD KEY `FK_review_review_id` (`review_id`),
  ADD KEY `FK_review_photo_review_photo_id` (`review_photo_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_accomm_accomm_id_five` (`accomm_id`),
  ADD KEY `FK_room_type_room_type_id` (`room_type_id`),
  ADD KEY `FK_currency_currency_id_three` (`currency_id`),
  ADD KEY `FK_board_board_id` (`board_id`);

--
-- Indexes for table `room_bed_type`
--
ALTER TABLE `room_bed_type`
  ADD PRIMARY KEY (`room_bed_type_id`),
  ADD KEY `FK_room_room_id` (`room_id`),
  ADD KEY `FK_bed_type_bed_type_id` (`bed_type_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`),
  ADD KEY `FK_currency_currency_id_four` (`currency_id`),
  ADD KEY `FK_room_room_id_four` (`room_id`),
  ADD KEY `FK_booking_booking_id_three` (`booking_id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`room_facilities_id`);

--
-- Indexes for table `room_image`
--
ALTER TABLE `room_image`
  ADD PRIMARY KEY (`room_image_id`);

--
-- Indexes for table `room_room_facilities`
--
ALTER TABLE `room_room_facilities`
  ADD PRIMARY KEY (`room_room_facilities_id`),
  ADD KEY `FK_room_facilities_room_facilities_id` (`room_facilities_id`),
  ADD KEY `FK_room_room_id_two` (`room_id`);

--
-- Indexes for table `room_room_image`
--
ALTER TABLE `room_room_image`
  ADD PRIMARY KEY (`room_room_image_id`),
  ADD KEY `FK_room_room_id_three` (`room_id`),
  ADD KEY `FK_room_image_room_image_id` (`room_image_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`security_id`);

--
-- Indexes for table `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`star_rating_id`);

--
-- Indexes for table `type_of_poi`
--
ALTER TABLE `type_of_poi`
  ADD PRIMARY KEY (`type_of_poi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_address_address_id` (`address_id`),
  ADD KEY `FK_preferences_preferences_id` (`preferences_id`),
  ADD KEY `FK_security_security_id` (`security_id`),
  ADD KEY `FK_phone_code_phone_code_id` (`phone_code_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomm`
--
ALTER TABLE `accomm`
  MODIFY `accomm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accomm_accomm_facilities`
--
ALTER TABLE `accomm_accomm_facilities`
  MODIFY `accomm_accomm_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `accomm_accomm_image`
--
ALTER TABLE `accomm_accomm_image`
  MODIFY `accomm_accomm_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accomm_address`
--
ALTER TABLE `accomm_address`
  MODIFY `accomm_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accomm_facilities`
--
ALTER TABLE `accomm_facilities`
  MODIFY `accomm_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `accomm_image`
--
ALTER TABLE `accomm_image`
  MODIFY `accomm_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accomm_poi`
--
ALTER TABLE `accomm_poi`
  MODIFY `accomm_poi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `accomm_type`
--
ALTER TABLE `accomm_type`
  MODIFY `accomm_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `bed_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_guest`
--
ALTER TABLE `booking_guest`
  MODIFY `booking_guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  MODIFY `booking_line_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `card_type`
--
ALTER TABLE `card_type`
  MODIFY `card_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_guest`
--
ALTER TABLE `main_guest`
  MODIFY `main_guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `other_guest_details`
--
ALTER TABLE `other_guest_details`
  MODIFY `other_guest_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `payment_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phone_code`
--
ALTER TABLE `phone_code`
  MODIFY `phone_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `points_of_interest`
--
ALTER TABLE `points_of_interest`
  MODIFY `points_of_interest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `preferences_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_contact`
--
ALTER TABLE `property_contact`
  MODIFY `propert_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_photo`
--
ALTER TABLE `review_photo`
  MODIFY `review_photo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_rating`
--
ALTER TABLE `review_rating`
  MODIFY `review_rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_review_photo`
--
ALTER TABLE `review_review_photo`
  MODIFY `review_review_photo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `room_bed_type`
--
ALTER TABLE `room_bed_type`
  MODIFY `room_bed_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `room_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `room_image`
--
ALTER TABLE `room_image`
  MODIFY `room_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_room_facilities`
--
ALTER TABLE `room_room_facilities`
  MODIFY `room_room_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `room_room_image`
--
ALTER TABLE `room_room_image`
  MODIFY `room_room_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `security_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_of_poi`
--
ALTER TABLE `type_of_poi`
  MODIFY `type_of_poi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accomm`
--
ALTER TABLE `accomm`
  ADD CONSTRAINT `FK_accomm_address_accomm_address_id` FOREIGN KEY (`accomm_address_id`) REFERENCES `accomm_address` (`accomm_address_id`),
  ADD CONSTRAINT `FK_accomm_type_accomm_type_id` FOREIGN KEY (`accomm_type_id`) REFERENCES `accomm_type` (`accomm_type_id`),
  ADD CONSTRAINT `FK_property_contact_property_contact_id` FOREIGN KEY (`propert_contact_id`) REFERENCES `property_contact` (`propert_contact_id`),
  ADD CONSTRAINT `FK_star_rating_star_rating_id` FOREIGN KEY (`star_rating_id`) REFERENCES `star_rating` (`star_rating_id`);

--
-- Constraints for table `accomm_accomm_facilities`
--
ALTER TABLE `accomm_accomm_facilities`
  ADD CONSTRAINT `FK_accomm_accomm_id2` FOREIGN KEY (`accomm_id`) REFERENCES `accomm` (`accomm_id`),
  ADD CONSTRAINT `FK_accomm_facilities_accomm_facilities_id` FOREIGN KEY (`accomm_facilities_id`) REFERENCES `accomm_facilities` (`accomm_facilities_id`);

--
-- Constraints for table `accomm_accomm_image`
--
ALTER TABLE `accomm_accomm_image`
  ADD CONSTRAINT `FK_accomm_accomm_id_three` FOREIGN KEY (`accomm_id`) REFERENCES `accomm` (`accomm_id`),
  ADD CONSTRAINT `FK_accomm_image_accomm_image_id` FOREIGN KEY (`accomm_image_id`) REFERENCES `accomm_image` (`accomm_image_id`);

--
-- Constraints for table `accomm_address`
--
ALTER TABLE `accomm_address`
  ADD CONSTRAINT `FK_city_city_id2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_country_country_id2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `accomm_poi`
--
ALTER TABLE `accomm_poi`
  ADD CONSTRAINT `FK_accomm_accomm_id_four` FOREIGN KEY (`accomm_id`) REFERENCES `accomm` (`accomm_id`),
  ADD CONSTRAINT `FK_points_of_interest_points_of_interest_id` FOREIGN KEY (`points_of_interest_id`) REFERENCES `points_of_interest` (`points_of_interest_id`);

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `FK_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_accomm_accomm_id_six` FOREIGN KEY (`accomm_id`) REFERENCES `accomm` (`accomm_id`),
  ADD CONSTRAINT `FK_currency_currency_id_five` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_main_guest_main_guest_id` FOREIGN KEY (`main_guest_id`) REFERENCES `main_guest` (`main_guest_id`),
  ADD CONSTRAINT `FK_payment_detail_payment_detail_id_two` FOREIGN KEY (`payment_detail_id`) REFERENCES `payment_detail` (`payment_detail_id`),
  ADD CONSTRAINT `FK_payment_method_payment_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`),
  ADD CONSTRAINT `FK_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `booking_guest`
--
ALTER TABLE `booking_guest`
  ADD CONSTRAINT `FK_booking_booking_id_four` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_other_guest_details_other_guest_details_id` FOREIGN KEY (`other_guest_details_id`) REFERENCES `other_guest_details` (`other_guest_details_id`);

--
-- Constraints for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD CONSTRAINT `FK_booking_booking_id_two` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_currency_currency_id_two` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_payment_type_payment_type_id` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`);

--
-- Constraints for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD CONSTRAINT `FK_card_type_card_type_id` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`card_type_id`),
  ADD CONSTRAINT `FK_user_user_id_two` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `points_of_interest`
--
ALTER TABLE `points_of_interest`
  ADD CONSTRAINT `FK_type_of_poi_type_of_poi_id` FOREIGN KEY (`type_of_poi_id`) REFERENCES `type_of_poi` (`type_of_poi_id`);

--
-- Constraints for table `preferences`
--
ALTER TABLE `preferences`
  ADD CONSTRAINT `FK_currency_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_language_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `property_contact`
--
ALTER TABLE `property_contact`
  ADD CONSTRAINT `FK_phone_code_phone_code_id_two` FOREIGN KEY (`phone_code_id`) REFERENCES `phone_code` (`phone_code_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_review_rating_review_rating_id` FOREIGN KEY (`review_rating_id`) REFERENCES `review_rating` (`review_rating_id`);

--
-- Constraints for table `review_review_photo`
--
ALTER TABLE `review_review_photo`
  ADD CONSTRAINT `FK_review_photo_review_photo_id` FOREIGN KEY (`review_photo_id`) REFERENCES `review_photo` (`review_photo_id`),
  ADD CONSTRAINT `FK_review_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_accomm_accomm_id_five` FOREIGN KEY (`accomm_id`) REFERENCES `accomm` (`accomm_id`),
  ADD CONSTRAINT `FK_board_board_id` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`),
  ADD CONSTRAINT `FK_currency_currency_id_three` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_bed_type`
--
ALTER TABLE `room_bed_type`
  ADD CONSTRAINT `FK_bed_type_bed_type_id` FOREIGN KEY (`bed_type_id`) REFERENCES `bed_type` (`bed_type_id`),
  ADD CONSTRAINT `FK_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FK_booking_booking_id_three` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_currency_currency_id_four` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_room_room_id_four` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_room_facilities`
--
ALTER TABLE `room_room_facilities`
  ADD CONSTRAINT `FK_room_facilities_room_facilities_id` FOREIGN KEY (`room_facilities_id`) REFERENCES `room_facilities` (`room_facilities_id`),
  ADD CONSTRAINT `FK_room_room_id_two` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_room_image`
--
ALTER TABLE `room_room_image`
  ADD CONSTRAINT `FK_room_image_room_image_id` FOREIGN KEY (`room_image_id`) REFERENCES `room_image` (`room_image_id`),
  ADD CONSTRAINT `FK_room_room_id_three` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_phone_code_phone_code_id` FOREIGN KEY (`phone_code_id`) REFERENCES `phone_code` (`phone_code_id`),
  ADD CONSTRAINT `FK_preferences_preferences_id` FOREIGN KEY (`preferences_id`) REFERENCES `preferences` (`preferences_id`),
  ADD CONSTRAINT `FK_security_security_id` FOREIGN KEY (`security_id`) REFERENCES `security` (`security_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
