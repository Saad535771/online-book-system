-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 09:59 AM
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
-- Database: `obsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `billingAddress` varchar(255) DEFAULT NULL,
  `biilingCity` varchar(150) DEFAULT NULL,
  `billingState` varchar(100) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `billingCountry` varchar(100) DEFAULT NULL,
  `shippingAddress` varchar(300) DEFAULT NULL,
  `shippingCity` varchar(150) DEFAULT NULL,
  `shippingState` varchar(100) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `shippingCountry` varchar(100) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `userId`, `billingAddress`, `biilingCity`, `billingState`, `billingPincode`, `billingCountry`, `shippingAddress`, `shippingCity`, `shippingState`, `shippingPincode`, `shippingCountry`, `postingDate`) VALUES
(5, 8, 'J-900, Konark Apartment', 'Ghaziabad', 'UP', 211118, 'India', 'J-900, Konark Apartment', 'Ghaziabad', 'UP', 211118, 'India', '2023-08-17 05:37:33'),
(6, 8, 'A-980,Rajdhani Apartment', 'Kanpur', 'UP', 201519, 'India', 'A-980,Rajdhani Apartment', 'Kanpur', 'UP', 201519, 'India', '2023-08-17 06:47:03'),
(7, 9, 'A 123 XYZ Street', 'Ghaziabad', 'UP', 201017, 'India', 'A 123 XYZ Street', 'Ghaziabad', 'UP', 201017, 'India', '2023-08-20 09:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productQty` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userID`, `productId`, `productQty`, `postingDate`) VALUES
(26, 8, 3, 1, '2023-08-19 17:01:09'),
(29, 9, 13, 1, '2023-08-20 09:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `createdBy`) VALUES
(1, 'Fiction', 'Fiction is any creative work, chiefly any narrative work, portraying individuals, events, or places that are imaginary, or in ways that are imaginary. Fictional portrayals are thus inconsistent with history, fact, or plausibility.', '2023-08-10 12:56:29', NULL, 1),
(2, 'Nonfiction', 'Non-fiction is any document or media content that attempts, in good faith, to convey information only about the real world, rather than being grounded in imagination. Non-fiction typically aims to present topics objectively based on historical, scientific, and empirical information', '2023-08-10 12:57:29', NULL, 1),
(3, 'Biography', 'Biography, commonly considered nonfictional, the subject of which is the life of an individual. One of the oldest forms of literary expression', '2023-08-10 12:58:47', NULL, 1),
(4, 'Historical Fiction', 'Historical fiction is a literary genre in which the plot takes place in a setting related to the past events, but is fictional', '2023-08-10 12:59:20', NULL, 1),
(5, 'History', 'History is the systematic study and documentation of the human past. The period of events before the invention of writing systems is considered prehistory. \"History\" is an umbrella term comprising past events as well as the memory, discovery, collection, organization, presentation, and interpretation of these events.', '2023-08-10 12:59:45', NULL, 1),
(6, 'Romance novel', 'A romance novel or romantic novel generally refers to a type of genre fiction novel which places its primary focus on the relationship and romantic love between two people, and usually has an \"emotionally satisfying and optimistic ending.', '2023-08-10 13:00:16', NULL, 1),
(7, 'Horror', 'Horror is a genre of fiction that is intended to disturb, frighten or scare. Horror is often divided into the sub-genres of psychological horror and supernatural horror, which are in the realm of speculative fiction.', '2023-08-10 13:00:46', NULL, 1),
(8, 'Short story', 'A short story, also known as a nouvelle, is a piece of prose fiction that can typically be read in a single sitting and focuses on a self-contained incident or series of linked incidents, with the intent of evoking a single effect or mood.', '2023-08-10 13:01:17', NULL, 1),
(9, 'Memoir', 'A memoir is any nonfiction narrative writing based on the authors personal memories. The assertions made in the work are thus understood to be factual', '2023-08-10 13:02:18', NULL, 1),
(10, 'Poetry', 'Poetry, also called verse, is a form of literature that uses aesthetic and often rhythmic qualities of language ? such as phonaesthetics, sound symbolism, and metre ? to evoke meanings in addition to, or in place of, a prosaic ostensible meaning.', '2023-08-10 13:02:49', NULL, 1),
(11, 'Science fiction', 'Science fiction is a genre of speculative fiction, which typically deals with imaginative and futuristic concepts such as advanced science and technology, space exploration, time travel, parallel universes, and extraterrestrial life. Science fiction can trace its roots to ancient mythology.', '2023-08-10 13:03:27', NULL, 1),
(13, 'Programming', 'Programming Languages', '2023-08-20 08:56:53', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderNumber` bigint(12) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `txnType` varchar(200) DEFAULT NULL,
  `txnNumber` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(120) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderNumber`, `userId`, `addressId`, `totalAmount`, `txnType`, `txnNumber`, `orderStatus`, `orderDate`) VALUES
(6, 146060168, 7, 4, 10999.00, 'e-Wallet', 'TGH728364', 'Dispatched', '2022-03-06 12:50:46'),
(7, 215795133, 8, 5, 4129.00, 'Internet Banking', '12456', 'Cancelled', '2023-08-17 05:51:33'),
(8, 973891182, 8, 6, 660.00, 'e-Wallet', '65656', 'Delivered', '2023-08-17 12:59:17'),
(9, 172212643, 8, 5, 660.00, 'e-Wallet', '45566', NULL, '2023-08-18 11:48:56'),
(10, 979401759, 8, 5, 2360.00, 'Cash on Delivery', '', NULL, '2023-08-19 16:30:38'),
(11, 552885447, 8, 5, 600.00, 'Cash on Delivery', '', NULL, '2023-08-19 16:33:05'),
(12, 914740142, 9, 7, 1650.00, 'Debit/Credit Card', 'TXN34828432HHB8832', 'Delivered', '2023-08-20 09:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetails`
--

CREATE TABLE `ordersdetails` (
  `id` int(11) NOT NULL,
  `orderNumber` bigint(12) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordersdetails`
--

INSERT INTO `ordersdetails` (`id`, `orderNumber`, `userId`, `productId`, `quantity`, `orderDate`, `orderStatus`) VALUES
(11, 215795133, 8, 3, 2, '2023-08-17 05:51:33', NULL),
(12, 215795133, 8, 6, 1, '2023-08-17 05:51:33', NULL),
(14, 973891182, 8, 2, 1, '2023-08-17 12:59:17', NULL),
(15, 172212643, 8, 13, 1, '2023-08-18 11:48:56', NULL),
(16, 979401759, 8, 13, 1, '2023-08-19 16:30:38', NULL),
(17, 979401759, 8, 8, 2, '2023-08-19 16:30:38', NULL),
(19, 552885447, 8, 12, 1, '2023-08-19 16:33:05', NULL),
(20, 914740142, 9, 14, 1, '2023-08-20 09:10:45', NULL),
(21, 914740142, 9, 9, 1, '2023-08-20 09:10:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `actionBy` int(3) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `canceledBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `actionBy`, `postingDate`, `canceledBy`) VALUES
(14, 8, 'Packed', 'Packed', 1, '2023-08-18 05:56:33', NULL),
(15, 8, 'Dispatched', 'Dispatched', 1, '2023-08-18 05:59:06', NULL),
(16, 8, 'In Transit', 'In transit', 1, '2023-08-18 06:00:27', NULL),
(17, 8, 'Out For Delivery', 'Out For Deliver', 1, '2023-08-18 06:01:36', NULL),
(18, 8, 'Delivered', 'Delivered', 1, '2023-08-18 06:02:46', NULL),
(19, 7, 'Cancelled', 'Due to late dilevry', NULL, '2023-08-18 12:00:14', 'User'),
(20, 12, 'Packed', 'Item is packed', 1, '2023-08-20 09:11:24', NULL),
(21, 12, 'Dispatched', 'Books Dispatched', 1, '2023-08-20 09:11:45', NULL),
(22, 12, 'Out For Delivery', 'Books  out for delivery ', 1, '2023-08-20 09:12:07', NULL),
(23, 12, 'Delivered', 'Delivered to customer.', 1, '2023-08-20 09:12:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryName` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategoryName`, `creationDate`, `updationDate`, `createdBy`) VALUES
(1, 1, 'Historical Fiction', '2023-08-10 13:04:03', NULL, 1),
(2, 1, 'Science fiction', '2023-08-10 13:04:25', NULL, 1),
(3, 1, 'Mystery', '2023-08-10 13:04:46', NULL, 1),
(4, 1, 'Fantasy', '2023-08-10 13:05:22', NULL, 1),
(5, 2, 'History', '2023-08-10 13:07:12', NULL, 1),
(6, 2, 'Philosophy', '2023-08-10 13:07:26', NULL, 1),
(7, 2, 'Journalism', '2023-08-10 13:07:39', NULL, 1),
(8, 2, 'Science', '2023-08-10 13:07:55', NULL, 1),
(9, 3, 'historical', '2023-08-10 13:08:33', NULL, 1),
(10, 3, 'academic', '2023-08-10 13:08:46', NULL, 1),
(11, 3, 'fictional academic', '2023-08-10 13:09:04', NULL, 1),
(12, 3, 'prophetic biography', '2023-08-10 13:09:21', NULL, 1),
(13, 4, 'romance', '2023-08-10 13:10:19', NULL, 1),
(14, 4, 'Biographical', '2023-08-10 13:10:59', NULL, 1),
(16, 13, 'PHP', '2023-08-20 09:01:54', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactNumber` bigint(12) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `username`, `password`, `contactNumber`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 45231025890, '2023-08-19 16:21:18', '2023-08-20 08:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `AuthorName` varchar(255) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL,
  `TENISBN` varchar(20) DEFAULT NULL,
  `THIRTEENISBN` varchar(20) DEFAULT NULL,
  `BookLanguage` varchar(255) DEFAULT NULL,
  `BookPriceAfterDiscount` decimal(10,2) DEFAULT NULL,
  `BookPriceBeforeDiscount` decimal(10,2) DEFAULT NULL,
  `BookDescription` longtext DEFAULT NULL,
  `BookImage1` varchar(255) DEFAULT NULL,
  `BookImage2` varchar(255) DEFAULT NULL,
  `BookImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` decimal(10,2) DEFAULT NULL,
  `BookAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `addedBy` int(11) DEFAULT NULL,
  `lastUpdatedBy` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `category`, `subCategory`, `BookName`, `AuthorName`, `Publisher`, `TENISBN`, `THIRTEENISBN`, `BookLanguage`, `BookPriceAfterDiscount`, `BookPriceBeforeDiscount`, `BookDescription`, `BookImage1`, `BookImage2`, `BookImage3`, `shippingCharge`, `BookAvailability`, `postingDate`, `updationDate`, `addedBy`, `lastUpdatedBy`) VALUES
(1, 1, 3, 'The Housemaid', 'Freida McFadden', 'Grand Central Publishing (August 23, 2022)', '1538741849', '978-1538742570', 'English', 800.00, 900.00, '', 'b982798ac42e1dd77e2f0b80b6c7de87.jpg', 'b982798ac42e1dd77e2f0b80b6c7de87.jpg', 'b982798ac42e1dd77e2f0b80b6c7de87.jpg', 99.00, 'In Stock', '2023-08-11 07:22:23', NULL, 1, NULL),
(2, 1, 4, 'The Midnight Library: A Novel', 'Matt Haig', 'Penguin Books (May 9, 2023)', '0525557644', '978-0525557647', 'English', 660.00, 700.00, 'tghrtfuhyr', '74649a05435e1ec191287a2d6611cbd6.jpg', '74649a05435e1ec191287a2d6611cbd6.jpg', '74649a05435e1ec191287a2d6611cbd6.jpg', 120.00, 'In Stock', '2023-08-11 07:29:45', NULL, 1, NULL),
(3, 4, 14, 'The Hidden Hindu Book', 'Akshat Gupta', 'Mariner Books; Reprint edition (October 2, 2018)', '1528505685', '958-1328505682', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '5b89d2d6b97ff1a9b48024060efe2f0d.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:16:12', 1, 1),
(4, 1, 4, 'The Midnight Library: A Novel', 'Matt Haig', 'Penguin Books (May 9, 2023)', '0525557644', '978-0525557647', 'English', 660.00, 700.00, 'tghrtfuhyr', '74649a05435e1ec191287a2d6611cbd6.jpg', '74649a05435e1ec191287a2d6611cbd6.jpg', '74649a05435e1ec191287a2d6611cbd6.jpg', 120.00, 'In Stock', '2023-08-11 07:29:45', NULL, 1, NULL),
(5, 1, 3, 'The Housemaid', 'Freida McFadden', 'Grand Central Publishing (August 23, 2022)', '1538741849', '978-1538742570', 'English', 800.00, 900.00, '', 'b982798ac42e1dd77e2f0b80b6c7de87.jpg', 'b982798ac42e1dd77e2f0b80b6c7de87.jpg', 'b982798ac42e1dd77e2f0b80b6c7de87.jpg', 99.00, 'In Stock', '2023-08-11 07:22:23', NULL, 1, NULL),
(6, 2, 5, 'Half-Blood Prince', 'J.K. Rowling', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505684', '978-1328505687', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '256968b5af0cb7b718497dcdc613ce6c.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:14:20', 1, 1),
(7, 2, 5, 'Energize Your Mind', 'A. J. Baime', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505686', '978-1328505687', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', 'e4aed6b421cba7efac86a41edc72c86a.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:12:17', 1, 1),
(8, 4, 13, 'Master Your Motivation', 'thibaut meurisse (Author), Kerry J Donovan (Editor) ', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505685', '978-1328505682', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '598a076f6cc6629efe2b91ab736cdd42.jpg', 'ceee9f0e2400c76a79971642a0de1a32.jpg', '63cec7f2dfe86416ad816ab8f0c7a267.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:07:50', 1, 1),
(9, 3, 10, 'Master Your Emotions', 'thibaut meurisse (Author), Kerry J Donovan (Editor)', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505685', '978-1328505682', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', 'a4d13517e620c8e94b8b3d96ba99ef4f.jpg', '01a77c4186fbacb3e09987db4e2fab8c.jpg', '8edbb9b9ffc2e1f2351cd068498d03dc.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:06:03', 1, 1),
(10, 2, 8, 'Lifes Amazing Secrets', 'A. J. Baime', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505685', '978-1328505682', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '36a01236bb5e9c064d2b86971df9f129.jpg', '41144f7c87a475b2edd12adf0f129425.jpg', 'e718798149c18e9cf6e66083729df317.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:04:17', 1, 1),
(11, 2, 5, 'Metamorphosis', 'A. J. Baime', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505685', '978-1328505682', 'English', 850.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '451abddce246c162f9c11e45878de9bf.jpg', '8a1d998d30fde3c74238137d394e21fc.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 06:00:59', 1, 1),
(12, 3, 10, 'Making of a Superhuman', 'A. J. Baime', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505683', '978-1328505683', 'English', 600.00, 700.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '9977588804935e32f6dfc74eb9ac7246.jpg', '871add0dc619ba38fdfe832f34c0d737.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 05:59:04', 1, 1),
(13, 1, 4, 'The Midnight Library', 'Matt Haig', 'Penguin Books (May 9, 2023)', '0525557644', '978-0525557647', 'English', 660.00, 700.00, 'tghrtfuhyr', '74649a05435e1ec191287a2d6611cbd6.jpg', '74649a05435e1ec191287a2d6611cbd6.jpg', '74649a05435e1ec191287a2d6611cbd6.jpg', 120.00, 'In Stock', '2023-08-11 07:29:45', '2023-08-16 05:47:14', 1, 1),
(14, 2, 5, 'The Accidental President', 'A. J. Baime', 'Mariner Books; Reprint edition (October 2, 2018)', '1328505685', '978-1328505682', 'English', 800.00, 900.00, 'The Accidental President escorts readers into the situation room with Truman during a tumultuous, history-making 120 days, when the stakes were high and the challenges even higher', '7e95fab40ae7f318561b551f1e3a7624.jpg', 'fe1b260cb1dd0668aff4baf44adc0253.jpg', '327fecd2be8a9ffcfcc6bfb391bb7dc5.jpg', 120.00, 'In Stock', '2023-08-11 07:35:20', '2023-08-16 05:46:48', 1, 1),
(15, 13, 16, 'PHP and MYSQL', 'ABC', 'Shroff/Murach', '9789350234', '9789350234655', 'Language', 1500.00, 2000.00, 'This book teaches developers how to build database-driven web applications using two of today\'s most popular open-source software tools, PHP and MySQL.To get you off to a fast start, the first 6 chapters teach you how to develop, test, and debug your first PHP applications. That includes getting data from MySQL databases and structuring your PHP applications the right way, using the MVC pattern.\r\n\r\nThen, Section 2 takes you deeper into PHP, moving from the simple to the complex as it covers the professional skills you\'ll use every day in coding your applications...skills like how to work with form data, dates, arrays, sessions, cookies, functions, objects, and regular expressions, and how to handle exceptions in a way that makes sense to your site visitors. Section 3 then dives into MySQL, teaching you how to design and create a database, as well as giving you more skills for accessing and maintaining database data like a pro. Finally, Section 4 teaches you the specialized web skills you need for certain web sites, like how to secure web pages, send email, upload files, process images, and access content (like YouTube videos) from other web sites to incorporate into your own. Full coding examples and chapter exercises provide training support throughout. A great read for any developer who wants to master PHP.', '12ee68c173d29c11e62e18da88b9a62e.jpg', '4070e3420d1cfe79e927fd91d73a2536.jpg', '12ee68c173d29c11e62e18da88b9a62e.jpg', 0.00, 'In Stock', '2023-08-20 09:06:36', '2023-08-20 09:07:19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '\r\nWelcome to Online Bookstore, your one-stop shop for all things books! We are an online bookstore that offers a wide variety of books, from fiction to nonfiction, for all ages and interests. We also have a wide selection of audiobooks, ebooks, and magazines.\r\n\r\nWe believe that everyone should have access to books. We also offer a 100% satisfaction guarantee, so you can be sure that you are getting the best possible value for your money.\r\n\r\nOur team of book experts is always on hand to help you find the perfect book for you. We can recommend books based on your interests, or we can help you find a book for a specific occasion.\r\n\r\nWe are committed to providing our customers with the best possible shopping experience. We offer a variety of payment options, and we make it easy to return or exchange books.\r\n\r\nWe hope you will visit Online Bookstore today and find the perfect book for you!\r\n\r\n', NULL, NULL, '2023-08-19 18:29:29'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India.', 'bookstoreinfo@test.com', 1234567890, '2023-08-18 06:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Rakesh Mishra', 'rak@gmail.com', 1234567899, '202cb962ac59075b964b07152d234b70', '2023-08-14 12:46:38', '2023-08-14 13:16:08'),
(9, 'John Doe', 'jhndoe@t.com', 4141414141, 'f925916e2754e5e03f75dd58a5733251', '2023-08-20 09:08:27', '2023-08-20 09:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(11, 8, 12, '2023-08-19 12:42:41'),
(12, 9, 12, '2023-08-20 09:09:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userrrid` (`userId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uiid` (`userID`),
  ADD KEY `piddd` (`productId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uidddd` (`userId`),
  ADD KEY `addressid` (`addressId`),
  ADD KEY `orderNumber` (`orderNumber`);

--
-- Indexes for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderidd` (`orderNumber`),
  ADD KEY `useridd` (`userId`),
  ADD KEY `productiddd` (`productId`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderidddddd` (`orderId`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`categoryid`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catidddd` (`category`),
  ADD KEY `subCategory` (`subCategory`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usseridddd` (`userId`),
  ADD KEY `ppiidd` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
