-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2026 at 09:19 AM
-- Server version: 10.6.25-MariaDB-cll-lve
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kassafco_mannanplazahouse`
--
use `house_mannanplaza`;
-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `username` text DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `role`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Admin', 2, '$2y$12$qUALEPPeND2liKMrAs9UZ.wB3p85nxKnibt0sr7HO7A0iLYbE8mN2', 'public/uploads/admin_images/mtx_51067366335.php', 1, 'HftBsS0WaFhNaeki9GEnbTOdo99h14G9dS1WtBq9AJJkzUuSyNKsUxMufhEx', '2019-04-17 01:04:35', '2025-10-07 23:03:35'),
(20, 'House Admin', 'houseadmin@gmail.com', 'houseadmin@gmail.com', 3, '$2y$10$eLsvgsa1Tsy5gUy50T5kc.v3AzEyM68Dw/K2W9nduDp6xvV55dyOu', '', 1, NULL, '2026-06-06 10:17:04', '2026-06-06 10:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `collection_ebill`
--

CREATE TABLE `collection_ebill` (
  `id` int(11) NOT NULL,
  `Client_Code` text NOT NULL,
  `CMonth` text NOT NULL,
  `CYear` int(11) NOT NULL,
  `billing_month` date DEFAULT NULL,
  `PreviousUnit` int(11) NOT NULL,
  `LastUnit` int(11) NOT NULL,
  `LossUnit` int(11) NOT NULL DEFAULT 0,
  `UsesUnit` int(11) NOT NULL,
  `SerialNo` int(11) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `penalty` decimal(10,0) NOT NULL DEFAULT 0,
  `PaidDate` text DEFAULT NULL,
  `PositionNo` text DEFAULT NULL,
  `deposit_date` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `bank` text DEFAULT NULL,
  `cash` text DEFAULT NULL,
  `Project_ID` int(11) NOT NULL,
  `CreateBy` text NOT NULL,
  `CreateDate` text DEFAULT NULL,
  `UpdateBy` text NOT NULL,
  `Updatedate` datetime DEFAULT NULL,
  `ReceiveDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collection_rant`
--

CREATE TABLE `collection_rant` (
  `id` int(11) NOT NULL,
  `Client_Code` text NOT NULL,
  `CMonth` text NOT NULL,
  `CYear` int(11) DEFAULT NULL,
  `billing_month` date DEFAULT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `penalty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `SerialNo` text NOT NULL,
  `PaidDate` text DEFAULT NULL,
  `Project_ID` int(11) NOT NULL,
  `PositionNo` text DEFAULT NULL,
  `deposit_date` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `bank` text DEFAULT NULL,
  `cash` text DEFAULT NULL,
  `CreateBy` text NOT NULL,
  `Createdate` text DEFAULT NULL,
  `Updateby` text NOT NULL,
  `Updatedate` datetime DEFAULT NULL,
  `ReceiveDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collection_servicecharge`
--

CREATE TABLE `collection_servicecharge` (
  `id` int(11) NOT NULL,
  `Client_Code` text NOT NULL,
  `CMonth` text NOT NULL,
  `CYear` int(11) NOT NULL,
  `billing_month` date DEFAULT NULL,
  `Utility_ID` int(11) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `penalty` decimal(10,0) NOT NULL DEFAULT 0,
  `SerialNo` text NOT NULL,
  `PaidDate` text DEFAULT NULL,
  `PositionNo` text DEFAULT NULL,
  `deposit_date` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `bank` text DEFAULT NULL,
  `cash` text DEFAULT NULL,
  `Project_ID` int(11) NOT NULL,
  `CreateBy` text NOT NULL,
  `CreateDate` text DEFAULT NULL,
  `UpdateBy` text NOT NULL,
  `Updatedate` datetime DEFAULT NULL,
  `ReceiveDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collection_wbill`
--

CREATE TABLE `collection_wbill` (
  `id` int(11) NOT NULL,
  `Client_Code` text NOT NULL,
  `CMonth` text NOT NULL,
  `CYear` int(11) NOT NULL,
  `billing_month` date DEFAULT NULL,
  `PreviousUnit` int(11) NOT NULL,
  `LastUnit` int(11) NOT NULL,
  `UsesUnit` int(11) NOT NULL,
  `SerialNo` text NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `PaidDate` timestamp NULL DEFAULT NULL,
  `PositionNo` text NOT NULL,
  `Project_ID` int(11) NOT NULL,
  `CreateBy` text NOT NULL,
  `CreateDate` timestamp NULL DEFAULT NULL,
  `UpdateBy` text NOT NULL,
  `Updatedate` timestamp NULL DEFAULT NULL,
  `ReceiveDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saleposition`
--

CREATE TABLE `saleposition` (
  `ID` int(11) NOT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `MName` text DEFAULT NULL,
  `SName` text DEFAULT NULL,
  `Mobile` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `NationalID` text DEFAULT NULL,
  `TINNo` text DEFAULT NULL,
  `District` text DEFAULT NULL,
  `Thana` text DEFAULT NULL,
  `PO` text DEFAULT NULL,
  `House` text DEFAULT NULL,
  `Project` text DEFAULT NULL,
  `Unit` text DEFAULT NULL,
  `Floor` text DEFAULT NULL,
  `PositionNo` text DEFAULT NULL,
  `PositionSize` decimal(10,0) DEFAULT NULL,
  `ebill_meter_no` text DEFAULT NULL,
  `wbill_meter_no` text DEFAULT NULL,
  `tenant_image` text DEFAULT NULL,
  `DepositeAmount` decimal(10,0) DEFAULT NULL,
  `RentRate` float DEFAULT NULL,
  `EntryReson` text DEFAULT NULL,
  `Agg0ne` float DEFAULT NULL,
  `AggTwo` decimal(10,0) DEFAULT NULL,
  `incrRate` decimal(10,0) DEFAULT NULL,
  `IsRent` text DEFAULT NULL,
  `BusinessType` text DEFAULT NULL,
  `BusinessStart` timestamp NULL DEFAULT NULL,
  `RenterName` text DEFAULT NULL,
  `RenterMobile` text DEFAULT NULL,
  `EntryBy` text DEFAULT NULL,
  `EntryDate` timestamp NULL DEFAULT NULL,
  `UpdateBy` text DEFAULT NULL,
  `UpdateDate` timestamp NULL DEFAULT NULL,
  `MonthlyDeduct` decimal(10,0) DEFAULT NULL,
  `StampNo` text DEFAULT NULL,
  `PassportNo` text DEFAULT NULL,
  `BirthCertificateNo` text DEFAULT NULL,
  `DateofBirth` timestamp NULL DEFAULT NULL,
  `PShopName` text DEFAULT NULL,
  `IsActive` text DEFAULT NULL,
  `EndDate` timestamp NULL DEFAULT NULL,
  `LastSalesAmount` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `saleposition`
--

INSERT INTO `saleposition` (`ID`, `Code`, `Name`, `FName`, `MName`, `SName`, `Mobile`, `address`, `NationalID`, `TINNo`, `District`, `Thana`, `PO`, `House`, `Project`, `Unit`, `Floor`, `PositionNo`, `PositionSize`, `ebill_meter_no`, `wbill_meter_no`, `tenant_image`, `DepositeAmount`, `RentRate`, `EntryReson`, `Agg0ne`, `AggTwo`, `incrRate`, `IsRent`, `BusinessType`, `BusinessStart`, `RenterName`, `RenterMobile`, `EntryBy`, `EntryDate`, `UpdateBy`, `UpdateDate`, `MonthlyDeduct`, `StampNo`, `PassportNo`, `BirthCertificateNo`, `DateofBirth`, `PShopName`, `IsActive`, `EndDate`, `LastSalesAmount`, `status`, `created_at`, `updated_at`) VALUES
(7, 'G01', 'MD SUMON REJA', NULL, NULL, NULL, '01794832141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:19:41', '2026-06-06 12:31:43'),
(8, 'G02', 'MD ZAHURUL ISLAM', NULL, NULL, NULL, '01753809783', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:20:09', '2026-06-06 12:32:04'),
(9, 'G03', 'MD JOSIM UDDIN', NULL, NULL, NULL, '01710368231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:22:09', '2026-06-06 12:32:24'),
(10, 'G07', 'MD SOHEL RANA', NULL, NULL, NULL, '01865209636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:28:52', '2026-06-06 12:32:43'),
(11, 'G08', 'MD SUMON ALI', NULL, NULL, NULL, '01719476122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:31:13', '2026-06-06 12:31:13'),
(12, 'G09', 'MD JIAUL HAQE', NULL, NULL, NULL, '01851341892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:35:42', '2026-06-06 12:35:42'),
(13, 'G10', 'MD ARIFUL ISLAM', NULL, NULL, NULL, '01753464521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:38:40', '2026-06-06 12:38:40'),
(14, 'G11', 'MD ABDUL HALIM', NULL, NULL, NULL, '01913379525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', 'Ground Unit', 'Ground Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:40:47', '2026-06-06 12:41:11'),
(15, '1ST-01', 'MOHAMMD JAHANGIR ALAM', NULL, NULL, NULL, '01955593153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:47:26', '2026-06-06 12:47:26'),
(16, '1ST-02', 'MD OBIDURE ROHOMAN', NULL, NULL, NULL, '01303505426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:51:03', '2026-06-06 12:51:03'),
(17, '10ST-03', 'MD SHOWKAT CHOWDHURY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 12:55:29', '2026-06-06 12:55:50'),
(18, '1ST-04', 'MD MOSTAK AHAMMED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:00:56', '2026-06-06 13:00:56'),
(19, '1ST-05', 'MD SALAM UDDIN', NULL, NULL, NULL, '01675931221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:05:01', '2026-06-06 13:05:01'),
(20, '1ST-06', 'S M KAMRUL HASSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:09:07', '2026-06-06 13:09:07'),
(21, '1ST-07', 'SOL S M HABIDUL BASAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '1st Unit', '1st Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:11:37', '2026-06-06 13:12:00'),
(22, '2ND-01', 'MD JUMAN HUSSEN', NULL, NULL, NULL, '01626324656', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:17:17', '2026-06-06 13:17:17'),
(23, '2ND-02', 'MD ENAMUL HAQUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:19:33', '2026-06-06 13:19:33'),
(24, '2ND-03', 'MD UZZAL ALI TALUKDER', NULL, NULL, NULL, '01714261147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:23:19', '2026-06-06 13:23:19'),
(25, '2ND-04', 'MD SALIM MIAH', NULL, NULL, NULL, '01932856153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:32:25', '2026-06-06 13:32:25'),
(26, '2ND-05', 'MD ZAHURUL ISLAM', NULL, NULL, NULL, '01741721076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:33:56', '2026-06-06 13:33:56'),
(27, '2ND-06', 'MD RUBEL MIA', NULL, NULL, NULL, '01829296313', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:35:33', '2026-06-06 13:35:33'),
(28, '2ND-07', 'MD AHATESHAMUL HAQUE', NULL, NULL, NULL, '01615815223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:42:00', '2026-06-06 13:42:00'),
(29, '2ND-10', 'MD AMRAN HOSSAIN', NULL, NULL, NULL, '01613134524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '2nd Unit', '2nd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:45:02', '2026-06-06 13:45:02'),
(30, '136-01', 'MD ENAMUL HAQUE', NULL, NULL, NULL, '01816113966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'White House', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:50:38', '2026-06-06 13:50:38'),
(31, '136-02', 'MD NAZRUL ISLAM', NULL, NULL, NULL, '01729726377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:56:55', '2026-06-06 13:56:55'),
(32, '136-03', 'MD ANWAR HOSSEN KHAN', NULL, NULL, NULL, '01778755606', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 13:59:17', '2026-06-06 13:59:17'),
(33, '136-05', 'MD HALIM', NULL, NULL, NULL, '01729934983', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 14:02:17', '2026-06-06 14:02:17'),
(34, '136-06', 'MOHAMMAD AL MIZANUR RAHMAN', NULL, NULL, NULL, '01728128473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 14:07:03', '2026-06-06 14:07:03'),
(35, '136-04', 'MD ANAMUL HAQUE', NULL, NULL, NULL, '01724947447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 14:10:01', '2026-06-06 14:10:01'),
(36, '136-07', 'CPL MD MOSTOFA', NULL, NULL, NULL, '01719290498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 14:12:47', '2026-06-06 14:12:47'),
(37, '136-09', 'MD SORIFUL ISLAM KHAN', NULL, NULL, NULL, '01729681665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hossain Monjil', '3rd Unit', '3rd Floor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'House Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', '2026-06-06 06:00:00', NULL, 1, '2026-06-06 14:16:45', '2026-06-06 14:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_transactions`
--

CREATE TABLE `tbl_account_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `voucher_no` varchar(191) DEFAULT NULL,
  `voucher_type` varchar(191) DEFAULT NULL,
  `voucher_date` varchar(191) DEFAULT NULL,
  `coa_id` varchar(191) DEFAULT NULL,
  `coa_head_code` varchar(191) DEFAULT NULL,
  `unit_id` varchar(191) DEFAULT NULL,
  `narration` text DEFAULT NULL,
  `debit_amount` varchar(191) DEFAULT NULL,
  `credit_amount` varchar(191) DEFAULT NULL,
  `posted` varchar(191) DEFAULT NULL,
  `approve` tinyint(4) NOT NULL DEFAULT 0,
  `approve_by` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `delete` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coa`
--

CREATE TABLE `tbl_coa` (
  `id` int(10) UNSIGNED NOT NULL,
  `head_code` varchar(191) DEFAULT NULL,
  `head_name` varchar(191) DEFAULT NULL,
  `parent_head_name` varchar(191) DEFAULT NULL,
  `head_level` varchar(191) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `transaction` tinyint(4) NOT NULL DEFAULT 0,
  `general_ledger` tinyint(4) NOT NULL DEFAULT 0,
  `head_type` varchar(191) DEFAULT NULL,
  `budget_type` varchar(255) DEFAULT NULL,
  `budget` tinyint(4) NOT NULL,
  `depreciation` tinyint(4) NOT NULL,
  `depreciation_rate` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_coa`
--

INSERT INTO `tbl_coa` (`id`, `head_code`, `head_name`, `parent_head_name`, `head_level`, `active`, `transaction`, `general_ledger`, `head_type`, `budget_type`, `budget`, `depreciation`, `depreciation_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Assets', 'COA', '0', 1, 0, 0, 'A', NULL, 0, 0, '0.00', 1, NULL, NULL),
(32, '2', 'Liabilities', 'COA', '0', 1, 0, 0, 'L', NULL, 0, 0, '0.00', 1, NULL, NULL),
(50, '3', 'Income', 'COA', '0', 1, 0, 0, 'I', NULL, 0, 0, '0.00', 1, NULL, NULL),
(56, '4', 'Expence', 'COA', '0', 1, 0, 0, 'E', NULL, 0, 0, '0.00', 1, NULL, NULL),
(282, '101', 'Non-Current Assets', 'Assets', '1', 1, 0, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 07:03:36', '2025-02-20 08:53:11'),
(283, '102', 'Current Assets', 'Assets', '1', 1, 0, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 08:53:06', '2025-02-20 08:53:06'),
(284, '201', 'Shareholders Equity', 'Liabilities', '1', 1, 0, 1, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 08:54:09', '2025-02-20 11:13:00'),
(285, '202', 'Liabilities and Provisions', 'Liabilities', '1', 1, 0, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 08:54:24', '2025-02-20 08:54:24'),
(286, '10101', 'Property,Plant and Equipments', 'Non-Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:08:43', '2025-02-20 11:08:43'),
(287, '1010101', 'Furniture and Fixtures', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:08:57', '2025-02-20 11:08:57'),
(288, '1010102', 'Building', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:09:07', '2025-02-20 11:09:07'),
(289, '1010103', 'Land', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:09:15', '2025-02-20 11:09:15'),
(290, '1010104', 'IT Equepment', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:09:23', '2025-02-20 11:09:23'),
(291, '1010105', 'Computer & others', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:09:32', '2025-02-20 11:09:32'),
(292, '1010106', 'Software', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:09:39', '2025-02-20 11:09:39'),
(293, '1010107', 'Web site', 'Property,Plant and Equipments', '3', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:09:47', '2025-02-20 11:09:47'),
(294, '10102', 'Intangible assets', 'Non-Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:10:07', '2025-02-20 11:10:07'),
(295, '10103', 'Long-term investments', 'Non-Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:10:20', '2025-02-20 11:10:20'),
(296, '10204', 'All Advance & pre payments', 'Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:10:42', '2025-02-20 11:10:42'),
(297, '10205', 'Accounts Receivable', 'Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:10:54', '2025-02-20 11:10:54'),
(298, '10206', 'Cash and Cash Equivalents', 'Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:11:05', '2025-02-20 11:11:05'),
(299, '1020601', 'Cash at Bank', 'Cash and Cash Equivalents', '3', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:11:14', '2025-02-23 04:46:49'),
(300, '1020602', 'Cash in hand', 'Cash and Cash Equivalents', '3', 1, 1, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:11:42', '2025-02-23 04:46:43'),
(301, '10207', 'Others', 'Current Assets', '2', 1, 0, 1, 'A', NULL, 0, 0, NULL, 1, '2025-02-20 11:12:06', '2025-02-20 11:12:06'),
(302, '20101', 'Retained Earnings', 'Shareholders Equity', '2', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:13:21', '2025-02-20 11:13:21'),
(303, '20102', 'Net Income', 'Shareholders Equity', '2', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:13:33', '2025-02-20 11:13:33'),
(304, '20103', 'Drawings', 'Shareholders Equity', '2', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:13:42', '2025-02-20 11:13:42'),
(305, '20201', 'Non Curreent Liabilities', 'Liabilities and Provisions', '2', 1, 0, 1, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:14:03', '2025-02-20 11:14:03'),
(306, '2020101', 'Loan from Financial institute', 'Non Curreent Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:14:19', '2025-02-20 11:14:19'),
(307, '2020102', 'Deferred tax liabilities', 'Non Curreent Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:14:31', '2025-02-20 11:14:31'),
(308, '2020103', 'Long-term debt ( Mortgage)', 'Non Curreent Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:14:40', '2025-02-20 11:14:40'),
(309, '20202', 'Current Liabilities', 'Liabilities and Provisions', '2', 1, 0, 1, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:15:13', '2025-02-20 11:15:13'),
(310, '2020201', 'Loan from inter concern', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:15:25', '2025-02-20 11:15:25'),
(311, '2020202', 'personal loan from Honorable Chairman sir', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:15:34', '2025-02-20 11:15:34'),
(312, '2020203', 'MA Hasem & Yeatun Nesa Fundation', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:15:42', '2025-02-20 11:15:42'),
(313, '2020204', 'Accounts Payable', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:15:53', '2025-02-20 11:15:53'),
(314, '2020205', 'Accrued liabilities', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:16:04', '2025-02-20 11:16:04'),
(315, '2020206', 'Short-term loans', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:16:13', '2025-02-20 11:16:13'),
(316, '2020207', 'Unearned revenue', 'Current Liabilities', '3', 1, 1, 0, 'L', NULL, 0, 0, NULL, 1, '2025-02-20 11:16:21', '2025-02-20 11:16:21'),
(317, '301', 'Income from Service Revenue', 'Income', '1', 1, 0, 0, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:17:32', '2025-02-20 11:17:32'),
(318, '30101', 'Jamidary Bill', 'Income from Service Revenue', '2', 1, 0, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:18:01', '2025-02-20 11:18:01'),
(322, '30102', 'Electricity Bill', 'Income from Service Revenue', '2', 1, 0, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:21:08', '2025-02-20 11:21:08'),
(323, '30103', 'Service  Charge', 'Income from Service Revenue', '2', 1, 0, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:21:26', '2025-02-20 11:21:26'),
(324, '30104', '10% Requisition Premium Money', 'Income from Service Revenue', '2', 1, 0, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:21:48', '2025-02-20 11:21:48'),
(325, '30105', 'Rental Income', 'Income from Service Revenue', '2', 1, 0, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:22:33', '2025-02-20 11:22:33'),
(326, '30106', 'Income from Lift Instalation', 'Income from Service Revenue', '2', 1, 1, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:23:08', '2025-02-20 11:23:08'),
(327, '30107', 'Income from AC Instalation', 'Income from Service Revenue', '2', 1, 1, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:23:23', '2025-02-20 11:23:23'),
(328, '309', 'Income from Sales', 'Income', '1', 1, 0, 1, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:23:47', '2025-02-20 11:23:47'),
(329, '30901', 'Shop Sales', 'Income from Sales', '2', 1, 1, 0, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:23:57', '2025-02-20 11:23:57'),
(330, '30902', 'Sales from Others', 'Income from Sales', '2', 1, 1, 0, 'I', NULL, 0, 0, NULL, 1, '2025-02-20 11:24:06', '2025-02-20 11:24:06'),
(331, '401', 'Operating Expensess', 'Expence', '1', 1, 0, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:24:43', '2025-02-20 11:24:43'),
(332, '40101', 'Admistrative Expensess', 'Operating Expensess', '2', 1, 0, 1, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:25:01', '2025-02-20 11:25:01'),
(333, '40102', 'Selling Expensess', 'Operating Expensess', '2', 1, 0, 1, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:25:14', '2025-02-20 11:25:14'),
(334, '4010101', 'Salary & Allowance', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:25:29', '2025-02-20 11:25:29'),
(335, '4010102', 'Remmunaration', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:25:39', '2025-02-20 11:25:39'),
(336, '4010103', 'Electricity Bill', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:25:47', '2025-02-20 11:25:47'),
(337, '4010104', 'Electricity Bill (MA Hasem Bhaban)', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:25:56', '2025-02-20 11:25:56'),
(338, '4010105', 'Conveyance', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:26:07', '2025-02-20 11:26:07'),
(339, '4010106', 'Gas Bill (MA Hasem Bhaban)', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:26:27', '2025-02-20 11:26:27'),
(340, '4010107', 'Photocopy Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:26:47', '2025-02-20 11:26:47'),
(341, '4010108', 'Entertainment', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:26:55', '2025-02-20 11:26:55'),
(342, '4010109', 'Printing & Stationary', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:27:04', '2025-02-20 11:27:04'),
(343, '4010110', 'Mobile BIll', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:27:13', '2025-02-20 11:27:13'),
(344, '4010111', 'Repair & Maintanance', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:27:28', '2025-02-20 11:27:28'),
(345, '4010112', 'Electric Goods', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:27:34', '2025-02-20 11:27:34'),
(346, '4010113', 'Construction Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:27:46', '2025-02-20 11:27:46'),
(347, '4010114', 'Miscellaneous Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:04', '2025-02-20 11:28:04'),
(348, '4010115', 'Gift, Tips & Donation', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:11', '2025-02-20 11:28:11'),
(349, '4010116', 'Fine waived', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:18', '2025-02-20 11:28:18'),
(350, '4010117', 'Utility Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:26', '2025-02-20 11:28:26'),
(351, '4010118', 'Tours & Travel', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:33', '2025-02-20 11:28:33'),
(352, '4010119', 'Domin & Hosting', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:41', '2025-02-20 11:28:41'),
(353, '4010120', 'Software Bill', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:48', '2025-02-20 11:28:48'),
(354, '4010121', 'Security Bill', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:28:56', '2025-02-20 11:28:56'),
(355, '4010122', 'Internet Bill', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:29:04', '2025-02-20 11:29:04'),
(356, '4010123', 'Legal Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:29:11', '2025-02-20 11:29:11'),
(357, '4010124', 'Labour & Wages', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:29:21', '2025-02-20 11:29:21'),
(358, '4010125', 'IT Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:29:29', '2025-02-20 11:29:29'),
(359, '4010126', 'Bonus', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:29:37', '2025-02-20 11:29:37'),
(360, '4010127', 'Oil, Fuel & Gas', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:29:45', '2025-02-20 11:29:45'),
(361, '4010128', 'Rent', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:30:01', '2025-02-20 11:30:01'),
(362, '4010129', 'Depreciation Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:30:08', '2025-02-20 11:30:08'),
(363, '4010130', 'Cleaning Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:30:16', '2025-02-20 11:30:16'),
(364, '4010131', 'Office Exp.', 'Admistrative Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:30:23', '2025-02-20 11:30:23'),
(365, '4010201', 'Advertisement', 'Selling Expensess', '3', 1, 1, 0, 'E', NULL, 0, 0, NULL, 1, '2025-02-20 11:30:50', '2025-02-20 11:30:50'),
(366, '102060101', 'IBBL-AC/No-2996', 'Cash at Bank', '4', 1, 1, 0, 'A', NULL, 0, 0, NULL, 1, '2025-02-25 05:50:22', '2025-02-25 05:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menus`
--

CREATE TABLE `tbl_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_menu` varchar(100) DEFAULT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_link` text DEFAULT NULL,
  `menu_icon` varchar(100) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menus`
--

INSERT INTO `tbl_menus` (`id`, `parent_menu`, `menu_name`, `menu_link`, `menu_icon`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard', 'admin.index', 'fa fa-bars', 1, '1', '2020-07-08 23:22:23', '2021-01-05 04:02:48'),
(2, '13', 'Menu', 'menu.index', 'fa fa-caret', 1, '1', NULL, NULL),
(3, '13', 'Users Role', 'userRole.index', 'fa fa-bars', 4, '1', '2020-03-03 13:48:57', '2020-03-15 06:02:37'),
(4, '13', 'Menu Action Type', 'menuActionType.index', 'fa fa-bars', 2, '1', NULL, NULL),
(5, '13', 'User', 'user.index', 'fa fa-bars', 3, '1', '2020-03-14 02:06:15', '2020-03-15 06:02:33'),
(6, NULL, 'Front-End Management', 'admin.index', 'fa fa-bars', 100, '0', '2020-04-16 09:54:08', '2022-05-11 10:34:44'),
(7, '6', 'Website Information', 'websiteInformation.index', 'fa fa-caret', 1, '1', '2020-04-16 10:43:15', '2020-04-16 10:43:15'),
(8, '6', 'Menus', 'frontEndMenu.index', NULL, 2, '1', '2020-04-18 08:17:03', '2020-04-18 08:17:03'),
(10, '6', 'Social Links', 'socialLink.index', 'fa fa-caret', 3, '1', '2020-04-18 10:14:20', '2020-04-18 10:14:20'),
(11, '6', 'Sliders', 'sliders.index', 'fa fa-bars', 4, '1', '2020-04-19 08:19:58', '2020-04-19 08:19:58'),
(12, '6', 'Pages', 'page.index', 'fa fa-caret', 5, '1', '2020-05-10 05:09:10', '2020-05-10 05:09:10'),
(13, NULL, 'User Management', 'admin.index', 'fa fa-bars', 9, '1', NULL, '2022-05-11 02:48:40'),
(15, '13', 'Admin Information', 'adminPanelInformation.index', 'fa fa-bars', 5, '1', '2020-07-09 00:45:20', '2020-07-09 00:45:20'),
(16, NULL, 'System Setup', 'admin.index', NULL, 2, '1', '2020-09-07 05:27:51', '2022-05-11 02:48:12'),
(17, '16', 'Floor Setup', 'floorSetup.index', NULL, 1, '1', '2020-09-07 05:28:38', '2020-09-07 05:28:38'),
(18, '16', 'Unit Setup', 'unitSetup.index', NULL, 2, '1', '2020-09-07 06:17:49', '2020-09-07 06:17:49'),
(19, '16', 'Utility Setup', 'utilitySetup.index', NULL, 3, '1', '2020-09-07 06:18:11', '2020-09-07 06:18:11'),
(20, NULL, 'New Project', 'newProject.index', NULL, 97, '0', '2020-09-07 09:00:28', '2022-05-11 10:34:30'),
(21, NULL, 'Position Agreement', 'admin.index', NULL, 3, '1', '2020-12-30 01:22:30', '2022-05-11 05:40:12'),
(22, '21', 'Position Information', 'positionInformation.index', NULL, 1, '1', '2020-12-30 01:23:05', '2020-12-30 01:42:29'),
(23, '21', 'Client List', 'tenant.list.index', NULL, 3, '1', '2020-12-30 01:23:29', '2022-09-04 22:51:13'),
(24, NULL, 'Bill Prepare', 'admin.index', NULL, 3, '1', '2020-12-30 01:23:50', '2021-01-03 01:44:15'),
(25, '24', 'Jamidari Prepare', 'jamidari.prepare.index', NULL, 1, '1', '2020-12-30 01:24:53', '2020-12-30 01:24:53'),
(26, '24', 'Electricity Bill Prepare', 'ebill.prepare.index', NULL, 2, '1', '2020-12-30 01:30:54', '2021-01-02 00:22:29'),
(27, '24', 'Service Charge Prepare', 'service.charge.prepare', NULL, 3, '1', '2020-12-30 01:31:43', '2021-01-04 02:28:53'),
(28, NULL, 'Reports', 'admin.index', NULL, 6, '1', '2020-12-30 01:32:29', '2022-05-11 02:49:40'),
(30, '28', 'Collection Report', 'collection.report', NULL, 4, '1', '2020-12-30 01:33:24', '2021-01-05 04:05:39'),
(32, '52', 'Jamidari Register', 'jamidari.register.index', NULL, 1, '1', '2020-12-30 01:34:05', '2021-01-11 04:11:50'),
(33, '52', 'Electric Bill Register', 'electric.bill.register', NULL, 2, '1', '2020-12-30 01:34:30', '2021-01-11 04:12:03'),
(34, '52', 'Service Charge Register', 'service.charge.register', NULL, 3, '1', '2020-12-30 01:35:11', '2021-01-11 04:12:08'),
(43, '24', 'Water Bill Prepare', 'wbill.prepare.index', NULL, 2, '1', '2020-12-30 01:30:54', '2021-01-02 00:22:29'),
(44, NULL, 'Bill Collection', 'admin.index', NULL, 4, '1', '2021-01-03 01:43:10', '2022-05-11 02:49:39'),
(45, '44', 'By Code', 'collection.add.bycode', NULL, 1, '1', '2021-01-03 01:45:52', '2021-01-03 01:45:52'),
(46, '44', 'By BarCode', 'collection.add.bybarcode', NULL, 2, '1', '2021-01-03 01:46:32', '2021-01-03 01:46:32'),
(47, '28', 'Collection Demand', 'collection.summary.report', NULL, 5, '1', '2021-01-05 03:25:05', '2022-05-11 05:41:20'),
(48, '28', 'Jamidari Due Report', 'jamidari.due.report', NULL, 6, '1', '2021-01-05 04:13:33', '2021-01-05 04:13:33'),
(49, '28', 'Utility Due Report', 'service.due.report', NULL, 7, '1', '2021-01-05 04:13:54', '2021-01-05 04:13:54'),
(50, '28', 'EBill Reading Sheet', 'ebill.reading.sheet', NULL, 1, '1', '2021-01-07 00:32:32', '2022-05-11 05:42:45'),
(51, '52', 'Water Bill Register', 'water.bill.register', NULL, 4, '1', '2021-01-08 23:44:19', '2021-01-11 04:12:13'),
(52, NULL, 'Bill Register', 'admin.index', NULL, 5, '1', '2021-01-11 04:11:28', '2022-05-11 05:40:40'),
(53, NULL, 'Reprint', 'admin.index', NULL, 7, '1', '2021-01-21 00:16:23', '2021-01-21 00:18:03'),
(54, '53', 'Jamidari', 'jamidari.reprint.view', NULL, 1, '1', '2021-01-21 00:16:34', '2021-01-21 00:16:34'),
(55, '53', 'Utility', 'ebill.reprint.view', NULL, 2, '1', '2021-01-21 00:16:50', '2021-02-03 00:02:15'),
(56, NULL, 'General Accounting', 'admin.index', NULL, 8, '1', '2022-04-30 10:30:46', '2022-05-11 02:48:39'),
(57, '56', 'Transaction', 'admin.index', NULL, 1, '1', '2022-04-30 10:31:28', '2022-04-30 10:31:28'),
(58, '56', 'Reports', 'admin.index', NULL, 2, '1', '2022-04-30 10:31:39', '2022-04-30 10:31:39'),
(59, '57', 'Chart of Accounts', 'coaSetup.index', NULL, 1, '1', '2022-04-30 10:32:39', '2022-04-30 10:32:39'),
(60, '57', 'Debit Voucher Entry', 'debitEntry.index', NULL, 2, '1', '2022-04-30 10:33:21', '2022-04-30 10:33:21'),
(61, '57', 'Voucher Approve', 'voucherApprove.index', NULL, 5, '1', '2022-04-30 10:35:54', '2022-05-17 00:11:05'),
(62, '57', 'Credit Voucher Entry', 'creditEntry.index', NULL, 3, '1', '2022-04-30 10:36:10', '2022-05-17 00:10:37'),
(63, '57', 'Journal Voucher Entry', 'journalEntry.index', NULL, 4, '1', '2022-04-30 10:37:48', '2025-01-05 06:00:02'),
(66, '58', 'Daily Voucher List', 'voucherList.index', NULL, 1, '1', '2022-04-30 11:10:04', '2022-04-30 11:10:04'),
(67, '58', 'Daily Cash Book', 'cashBook.index', NULL, 2, '1', '2022-04-30 11:10:27', '2022-04-30 11:10:27'),
(68, '58', 'Daily Bank Book', 'bankBook.index', NULL, 3, '1', '2022-04-30 11:10:41', '2022-04-30 11:10:41'),
(69, '58', 'Transaction Ledger', 'transactionLedger.index', NULL, 4, '1', '2022-04-30 11:11:17', '2022-04-30 11:11:17'),
(70, '58', 'General Ledger', 'generalLedger.index', NULL, 5, '1', '2022-04-30 11:12:04', '2022-04-30 11:12:04'),
(71, '58', 'Income Statement', 'incomeStatement.index', NULL, 6, '1', '2022-04-30 11:12:25', '2022-04-30 11:12:25'),
(72, '58', 'Trial Balance', 'trialBalance.index', NULL, 7, '1', '2022-04-30 11:12:42', '2022-04-30 11:12:42'),
(73, '58', 'Balance Sheet', 'balanceSheet.index', NULL, 8, '1', '2022-04-30 11:12:57', '2022-04-30 11:12:57'),
(74, '44', 'Collection Deposit', 'collectionDeposit.index', NULL, 3, '1', '2022-05-07 11:27:05', '2022-05-11 02:42:59'),
(75, '28', 'Collection Status Report', 'collectionDeposit.report', NULL, 9, '1', '2022-05-08 09:30:08', '2022-05-11 02:41:37'),
(76, '28', 'Jamidari Increase Status', 'jamidariIncrease.report', NULL, 10, '1', '2022-05-10 06:55:52', '2022-05-11 05:43:11'),
(77, '21', 'Rent Increment', 'rent.increment', NULL, 2, '1', '2022-09-04 22:50:58', '2022-09-04 22:50:58'),
(78, '56', 'Daily Income Expense', 'daily.income.expense', NULL, 3, '1', '2022-11-27 12:21:56', '2022-11-27 12:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_actions`
--

CREATE TABLE `tbl_menu_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_menu_id` int(11) DEFAULT NULL,
  `menu_type` int(11) DEFAULT NULL,
  `action_name` varchar(100) DEFAULT NULL,
  `action_link` varchar(100) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu_actions`
--

INSERT INTO `tbl_menu_actions` (`id`, `parent_menu_id`, `menu_type`, `action_name`, `action_link`, `order_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Add', 'menu.add', 1, 1, NULL, NULL),
(3, 2, 2, 'Edit', 'menu.edit', 2, 1, NULL, NULL),
(4, 2, 3, 'Status', 'menu.status', 3, 1, NULL, NULL),
(5, 2, 8, 'View Menu Action', 'menuAction.index', 4, 1, NULL, NULL),
(6, 2, 4, 'Delete', 'menu.delete', 5, 1, NULL, NULL),
(7, 4, 1, 'Add', 'menuActionType.add', 1, 1, NULL, NULL),
(8, 4, 2, 'Edit', 'menuActionType.edit', 2, 1, NULL, NULL),
(9, 4, 3, 'Status', 'menuActionType.status', 3, 1, NULL, NULL),
(10, 4, 4, 'Delete', 'menuActionType.delete', 4, 1, NULL, NULL),
(11, 3, 1, 'Add', 'userRole.add', 1, 1, '2020-03-06 23:37:18', '2020-03-06 23:37:18'),
(12, 3, 2, 'Edit', 'userRole.edit', 2, 1, '2020-03-07 00:16:00', '2020-03-07 00:16:00'),
(13, 3, 5, 'Permission', 'userRole.permission', 3, 1, '2020-03-07 00:17:25', '2020-03-07 00:17:25'),
(14, 3, 3, 'Status', 'userRole.status', 4, 1, '2020-03-07 00:18:08', '2020-03-07 00:18:08'),
(15, 3, 4, 'Delete', 'userRole.delete', 5, 1, '2020-03-07 00:18:22', '2020-03-07 00:18:22'),
(21, 5, 1, 'Add', 'user.add', 1, 1, '2020-03-14 02:06:39', '2020-03-14 02:06:39'),
(22, 5, 2, 'Edit', 'user.edit', 2, 1, '2020-03-14 02:06:53', '2020-03-14 02:06:53'),
(23, 5, 8, 'View Profile', 'user.profile', 3, 1, '2020-03-14 02:07:32', '2020-03-14 02:07:32'),
(24, 5, 6, 'Change Password', 'user.changePassword', 4, 1, '2020-03-14 02:07:57', '2020-03-14 02:07:57'),
(25, 5, 3, 'Status', 'user.status', 5, 1, '2020-03-14 02:08:23', '2020-03-14 02:08:23'),
(26, 5, 4, 'Delete', 'user.delete', 6, 1, '2020-03-14 02:08:35', '2020-03-14 02:08:35'),
(28, 7, 1, 'Add', 'websiteInformation.add', 1, 1, '2020-04-16 11:50:12', '2020-04-16 11:50:12'),
(29, 7, 2, 'Edit', 'websiteInformation.edit', 2, 1, '2020-04-16 11:50:28', '2020-04-16 11:50:28'),
(30, 8, 1, 'Add', 'frontEndMenu.add', 1, 1, '2020-04-18 08:18:00', '2020-04-18 08:18:00'),
(31, 8, 2, 'Edit', 'frontEndMenu.edit', 2, 1, '2020-04-18 08:18:14', '2020-04-18 08:18:14'),
(32, 8, 3, 'Status', 'frontEndMenu.status', 3, 1, '2020-04-18 08:20:33', '2020-04-18 08:20:33'),
(33, 8, 4, 'Delete', 'frontEndMenu.delete', 4, 1, '2020-04-18 08:20:48', '2020-04-18 08:20:48'),
(39, 10, 1, 'Add', 'socialLink.add', 1, 1, '2020-04-18 10:14:43', '2020-04-18 10:14:43'),
(40, 10, 2, 'Edit', 'socialLink.edit', 2, 1, '2020-04-18 10:14:54', '2020-04-18 10:14:54'),
(41, 10, 3, 'Status', 'socialLink.status', 3, 1, '2020-04-18 10:15:15', '2020-04-18 10:15:15'),
(42, 10, 4, 'Delete', 'socialLink.delete', 4, 1, '2020-04-18 10:15:32', '2020-04-18 10:15:32'),
(43, 11, 1, 'Add', 'sliders.add', 1, 1, '2020-04-19 08:20:24', '2020-04-19 08:20:24'),
(44, 11, 2, 'Edit', 'sliders.edit', 2, 1, '2020-04-19 08:20:39', '2020-04-19 08:20:39'),
(45, 11, 3, 'Status', 'sliders.status', 3, 1, '2020-04-19 08:20:59', '2020-04-19 08:20:59'),
(46, 11, 4, 'Delete', 'sliders.delete', 4, 1, '2020-04-19 08:21:14', '2020-04-19 08:21:14'),
(47, 12, 1, 'Add', 'page.add', 1, 1, '2020-05-10 05:09:46', '2020-05-10 05:09:46'),
(48, 12, 2, 'Edit', 'page.edit', 2, 1, '2020-05-10 05:09:58', '2020-05-10 05:09:58'),
(49, 12, 3, 'Status', 'page.status', 3, 1, '2020-05-10 05:10:22', '2020-05-10 05:10:22'),
(50, 12, 8, 'View Posts', 'post.index', 4, 1, '2020-05-10 05:11:48', '2020-05-10 05:11:48'),
(51, 12, 4, 'Delete', 'page.delete', 5, 1, '2020-05-10 05:12:01', '2020-05-10 05:12:01'),
(52, 15, 1, 'Add', 'adminPanelInformation.add', 1, 1, '2020-07-09 00:45:42', '2020-07-09 00:45:42'),
(53, 15, 2, 'Edit', 'adminPanelInformation.edit', 2, 1, '2020-07-09 00:45:50', '2020-07-09 00:45:50'),
(54, 17, 1, 'Add', 'floorSetup.add', 1, 1, '2020-09-07 05:28:57', '2020-09-07 05:28:57'),
(55, 17, 2, 'Edit', 'floorSetup.edit', 2, 1, '2020-09-07 05:29:07', '2020-09-07 05:29:07'),
(56, 17, 3, 'Status', 'floorSetup.status', 3, 1, '2020-09-07 05:29:17', '2020-09-07 05:29:17'),
(57, 17, 4, 'Delete', 'floorSetup.delete', 4, 1, '2020-09-07 05:29:26', '2020-09-07 05:29:26'),
(58, 19, 1, 'Add', 'utilitySetup.add', 1, 1, '2020-09-07 06:18:30', '2020-09-07 06:18:30'),
(59, 19, 2, 'Edit', 'utilitySetup.edit', 2, 1, '2020-09-07 06:18:40', '2020-09-07 06:18:40'),
(60, 19, 3, 'Status', 'utilitySetup.status', 3, 1, '2020-09-07 06:18:48', '2020-09-07 06:18:48'),
(61, 19, 4, 'Delete', 'utilitySetup.delete', 4, 1, '2020-09-07 06:18:56', '2020-09-07 06:18:56'),
(62, 18, 1, 'Add', 'unitSetup.add', 1, 1, '2020-09-07 06:19:25', '2020-09-07 06:19:25'),
(63, 18, 2, 'Edit', 'unitSetup.edit', 2, 1, '2020-09-07 06:19:35', '2020-09-07 06:19:35'),
(64, 18, 3, 'Status', 'unitSetup.status', 3, 1, '2020-09-07 06:19:46', '2020-09-07 06:19:46'),
(65, 18, 4, 'Delete', 'unitSetup.delete', 4, 1, '2020-09-07 06:19:55', '2020-09-07 06:19:55'),
(66, 20, 1, 'Add', 'newProject.add', 1, 1, '2020-09-07 09:02:10', '2020-09-07 09:02:10'),
(67, 20, 2, 'Edit', 'newProject.edit', 2, 1, '2020-09-07 09:02:18', '2020-09-07 09:02:18'),
(68, 20, 3, 'Status', 'newProject.status', 3, 1, '2020-09-07 09:02:26', '2020-09-07 09:02:26'),
(69, 20, 4, 'Delete', 'newProject.delete', 4, 1, '2020-09-07 09:02:36', '2020-09-07 09:02:36'),
(70, 22, 1, 'Add', 'positionInformation.add', 1, 1, '2020-12-30 01:42:49', '2020-12-30 01:42:49'),
(71, 22, 2, 'Edit', 'positionInformation.edit', 2, 1, '2020-12-30 01:43:05', '2020-12-30 01:43:05'),
(72, 22, 4, 'Delete', 'positionInformation.delete', 5, 1, '2020-12-30 01:43:20', '2021-01-04 01:23:35'),
(73, 22, 3, 'Status', 'positionInformation.status', 4, 1, '2020-12-30 01:43:37', '2020-12-30 01:43:37'),
(74, 25, 1, 'Add', 'jamidari.prepare.add', 1, 1, '2020-12-31 06:54:15', '2020-12-31 06:54:15'),
(75, 25, 8, 'View', 'jamidari.prepare.view', 2, 1, '2020-12-31 06:55:11', '2020-12-31 06:55:11'),
(76, 25, 4, 'Delete', 'jamidari.prepare.delete', 4, 1, '2020-12-31 06:55:34', '2021-01-03 23:08:21'),
(77, 26, 1, 'Add', 'ebill.prepare.add', 1, 1, '2021-01-02 00:22:54', '2021-01-02 00:22:54'),
(78, 26, 8, 'View', 'ebill.prepare.view', 2, 1, '2021-01-02 00:23:10', '2021-01-02 00:23:10'),
(79, 26, 4, 'Delete', 'ebill.prepare.delete', 4, 1, '2021-01-02 00:23:21', '2021-01-04 03:36:24'),
(80, 43, 1, 'Add', 'wbill.prepare.add', 1, 1, '2021-01-02 00:22:54', '2021-01-02 00:22:54'),
(81, 43, 8, 'View', 'wbill.prepare.view', 2, 1, '2021-01-02 00:23:10', '2021-01-02 00:23:10'),
(82, 43, 4, 'Delete', 'wbill.prepare.delete', 4, 1, '2021-01-02 00:23:21', '2021-01-04 23:10:49'),
(83, 25, 11, 'Print', 'jamidari.prepare.print', 3, 1, '2021-01-03 23:07:30', '2021-01-03 23:08:23'),
(84, 22, 8, 'View', 'positionInformation.view', 3, 1, '2021-01-04 01:22:16', '2021-01-04 01:23:36'),
(85, 27, 4, 'Delete', 'service.charge.prepare.delete', 4, 1, '2021-01-04 02:33:25', '2021-01-04 23:13:08'),
(86, 27, 8, 'View', 'service.charge.prepare.view', 1, 1, '2021-01-04 02:53:32', '2021-01-04 02:53:32'),
(87, 26, 11, 'Print', 'ebill.prepare.print', 3, 1, '2021-01-04 03:32:00', '2021-01-04 03:36:26'),
(88, 43, 11, 'Print', 'wbill.prepare.print', 3, 1, '2021-01-04 23:09:34', '2021-01-04 23:10:48'),
(89, 27, 11, 'Print', 'service.prepare.print', 3, 1, '2021-01-04 23:12:52', '2021-01-04 23:13:09'),
(90, 60, 1, 'Add', 'debitEntry.add', 1, 1, '2022-04-30 10:33:55', '2022-04-30 10:33:55'),
(91, 60, 2, 'Edit', 'debitEntry.edit', 2, 1, '2022-04-30 10:34:03', '2022-04-30 10:34:03'),
(92, 60, 8, 'View Debit Entry', 'debitEntry.view', 3, 1, '2022-04-30 10:34:20', '2022-04-30 10:34:20'),
(93, 60, 11, 'Print Debit Voucher', 'journalEntry.printDebitVoucher', 4, 1, '2022-04-30 10:34:31', '2022-04-30 10:34:31'),
(94, 60, 4, 'Delete', 'debitEntry.delete', 5, 1, '2022-04-30 10:34:43', '2022-04-30 10:34:43'),
(95, 60, 3, 'Publish', 'debitEntry.publish', 6, 1, '2022-04-30 10:35:14', '2022-04-30 10:46:43'),
(96, 62, 1, 'Add', 'creditEntry.add', 1, 1, '2022-04-30 10:36:33', '2022-04-30 10:36:33'),
(97, 62, 2, 'Edit', 'creditEntry.edit', 2, 1, '2022-04-30 10:36:40', '2022-04-30 10:36:40'),
(98, 62, 8, 'View Credit Entry', 'creditEntry.view', 3, 1, '2022-04-30 10:36:58', '2022-04-30 10:36:58'),
(99, 62, 11, 'Print Credit Voucher', 'journalEntry.printCreditVoucher', 4, 1, '2022-04-30 10:37:08', '2022-04-30 10:37:08'),
(100, 62, 4, 'Delete', 'creditEntry.delete', 5, 1, '2022-04-30 10:37:17', '2022-04-30 10:37:17'),
(101, 62, 3, 'Status', 'creditEntry.publish', 6, 1, '2022-04-30 10:37:27', '2022-04-30 10:37:27'),
(102, 63, 1, 'Add', 'journalEntry.add', 1, 1, '2022-04-30 10:38:53', '2022-04-30 10:38:53'),
(103, 63, 2, 'Edit', 'journalEntry.edit', 2, 1, '2022-04-30 10:39:00', '2022-04-30 10:39:00'),
(104, 63, 8, 'View Journal Entry', 'journalEntry.view', 3, 1, '2022-04-30 10:39:15', '2022-04-30 10:39:47'),
(105, 63, 11, 'Print Journal Voucher', 'journalEntry.printJournalVoucher', 4, 1, '2022-04-30 10:39:23', '2022-04-30 10:39:56'),
(106, 63, 4, 'Delete', 'journalEntry.delete', 5, 1, '2022-04-30 10:40:10', '2022-04-30 10:40:10'),
(107, 63, 3, 'Publish', 'journalEntry.publish', 6, 1, '2022-04-30 10:40:20', '2022-04-30 10:40:20'),
(108, 65, 1, 'Add', 'reconciliationEntry.add', 1, 1, '2022-04-30 10:42:56', '2022-04-30 10:42:56'),
(109, 65, 2, 'Edit', 'reconciliationEntry.edit', 2, 1, '2022-04-30 10:43:05', '2022-04-30 10:43:05'),
(110, 65, 8, 'View', 'reconciliationEntry.view', 3, 1, '2022-04-30 10:43:15', '2022-04-30 10:43:15'),
(111, 65, 3, 'Publish', 'reconciliationEntry.publish', 4, 1, '2022-04-30 10:43:24', '2022-04-30 10:43:24'),
(112, 65, 4, 'Delete', 'reconciliationEntry.delete', 5, 1, '2022-04-30 10:43:32', '2022-04-30 10:43:32'),
(113, 65, 11, 'Print', 'reconciliationEntry.printJournalVoucher', 6, 1, '2022-04-30 10:43:46', '2022-04-30 10:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_action_type`
--

CREATE TABLE `tbl_menu_action_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu_action_type`
--

INSERT INTO `tbl_menu_action_type` (`id`, `name`, `action_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Add', 1, 1, '2020-03-05 13:42:26', '2020-03-05 13:42:26'),
(2, 'Edit', 2, 1, '2020-03-05 13:43:02', '2020-03-05 13:43:02'),
(3, 'Publication Status', 3, 1, '2020-03-05 13:49:41', '2020-03-05 13:49:41'),
(4, 'Delete', 4, 1, '2020-03-05 13:51:00', '2020-03-05 13:51:00'),
(6, 'Permission', 5, 1, '2020-03-06 02:11:00', '2020-03-06 02:11:00'),
(7, 'Change Password', 6, 1, '2020-03-06 02:11:38', '2020-03-06 02:12:58'),
(8, 'View PopUp', 7, 1, '2020-03-06 02:11:59', '2020-03-06 02:11:59'),
(9, 'View', 8, 1, '2020-03-06 02:12:09', '2020-03-06 02:12:09'),
(10, 'Shipping Status', 9, 1, '2020-03-06 02:12:20', '2020-03-06 02:12:20'),
(11, 'Product List', 10, 1, '2020-03-06 02:12:28', '2020-03-06 02:12:28'),
(12, 'View PDF', 11, 1, '2020-03-06 02:12:39', '2020-03-06 02:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_floor`
--

CREATE TABLE `tbl_setup_floor` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_setup_floor`
--

INSERT INTO `tbl_setup_floor` (`id`, `code`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'G03', 'Ground Floor', 1, 20, '2026-06-04 10:10:23', 1, '2026-06-06 09:14:11'),
(3, 'F01', '1st Floor', 1, 1, '2026-06-06 09:12:39', NULL, '2026-06-06 09:12:39'),
(4, 'F02', '2nd Floor', 1, 1, '2026-06-06 09:12:58', NULL, '2026-06-06 09:12:58'),
(5, 'F03', '3rd Floor', 1, 1, '2026-06-06 09:13:14', NULL, '2026-06-06 09:13:14'),
(6, 'F04', '4th Floor', 1, 1, '2026-06-06 09:13:27', NULL, '2026-06-06 09:13:27'),
(7, 'F05', '5th Floor', 1, 1, '2026-06-06 09:13:39', NULL, '2026-06-06 09:13:39'),
(8, 'F06', '6th Floor', 1, 1, '2026-06-06 09:14:48', NULL, '2026-06-06 09:14:48'),
(9, 'F07', '7th Floor', 1, 1, '2026-06-06 09:20:14', NULL, '2026-06-06 09:20:14'),
(10, 'F08', '8th Floor', 1, 1, '2026-06-06 09:20:42', NULL, '2026-06-06 09:20:42'),
(11, 'F09', '9th Floor', 1, 1, '2026-06-06 09:20:54', NULL, '2026-06-06 09:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_project`
--

CREATE TABLE `tbl_setup_project` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` text NOT NULL,
  `ebill_rate` double NOT NULL,
  `wbill_rate` double NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_setup_project`
--

INSERT INTO `tbl_setup_project` (`id`, `code`, `name`, `ebill_rate`, `wbill_rate`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'P01\r\n', 'Hossain Monjil', 12, 30, '', '01571705916, 01316246364,0155430765\r\n', '2020-12-30 05:54:54', '2020-12-30 05:55:02'),
(2, 'P02', 'White House', 12, 30, '', '', NULL, NULL),
(3, 'P03', 'Masjid Match', 12, 30, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_rate`
--

CREATE TABLE `tbl_setup_rate` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `rate` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_setup_rate`
--

INSERT INTO `tbl_setup_rate` (`id`, `project_id`, `type`, `rate`) VALUES
(1, 1, 'ebill', 22),
(2, 1, 'wbill', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_system`
--

CREATE TABLE `tbl_setup_system` (
  `id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `company_address` text NOT NULL,
  `company_utility` text NOT NULL,
  `report_footer` text NOT NULL,
  `ebill_serial` text NOT NULL,
  `space_rent_serial` text NOT NULL,
  `service_charge_serial` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_setup_system`
--

INSERT INTO `tbl_setup_system` (`id`, `company_name`, `company_address`, `company_utility`, `report_footer`, `ebill_serial`, `space_rent_serial`, `service_charge_serial`, `created_at`, `updated_at`) VALUES
(1, 'Mannan Plaza Shopping Center', 'Kassaf Tower, Mukti Shoroni, Chittagonj Road, Narayanjanj', '01571705916,01316246364,01554307665', '', '0', '0', '0', '2020-10-05 02:20:26', '2020-10-05 02:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_unit`
--

CREATE TABLE `tbl_setup_unit` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_setup_unit`
--

INSERT INTO `tbl_setup_unit` (`id`, `code`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'u02', '2nd Unit', 1, 4, '2020-09-07 06:32:22', 20, '2026-06-06 11:31:30'),
(2, 'U04', '4rd Unit', 1, 4, '2020-09-07 06:32:36', 20, '2026-06-06 11:32:39'),
(4, 'U03', '3rd Unit', 1, 1, '2024-08-18 13:04:41', 20, '2026-06-06 11:32:03'),
(6, 'U0', 'Ground Unit', 1, 20, '2026-06-04 10:46:46', 1, '2026-06-06 11:45:50'),
(7, 'U01', '1st Unit', 1, 20, '2026-06-04 10:48:25', 20, '2026-06-06 11:27:34'),
(8, 'U05', '5th Unit', 1, 20, '2026-06-06 11:39:04', NULL, '2026-06-06 11:39:04'),
(9, 'U06', '6th Unil', 1, 20, '2026-06-06 11:40:05', NULL, '2026-06-06 11:40:05'),
(10, 'U07', '7th Unit', 1, 20, '2026-06-06 11:40:43', NULL, '2026-06-06 11:40:43'),
(11, 'U08', '8th Unit', 1, 20, '2026-06-06 11:41:19', NULL, '2026-06-06 11:41:19'),
(12, 'U09', '9th Unit', 1, 20, '2026-06-06 11:41:58', NULL, '2026-06-06 11:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setup_utility`
--

CREATE TABLE `tbl_setup_utility` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_setup_utility`
--

INSERT INTO `tbl_setup_utility` (`id`, `code`, `name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '01', 'Generator Bill', 1, 4, '2020-09-07 06:44:10', NULL, '2020-09-07 06:44:10'),
(2, '02', 'Gas Bill', 1, 4, '2020-09-07 06:44:23', NULL, '2020-09-07 06:45:00'),
(3, '03', 'Signboard Bill', 1, 4, '2020-09-07 06:44:43', NULL, '2020-09-07 06:44:43'),
(4, '04', 'Passage Charge', 1, 4, '2020-09-07 06:44:50', 4, '2020-09-07 06:45:36'),
(6, '05', 'Water Bill', 1, NULL, NULL, NULL, NULL),
(7, '06', 'Service Charge', 1, NULL, NULL, NULL, NULL),
(8, '07', 'Meter Charge', 1, NULL, NULL, NULL, NULL),
(9, '08', 'VAT', 1, NULL, NULL, NULL, NULL),
(10, '10', 'Car Parking', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sliders`
--

CREATE TABLE `tbl_sliders` (
  `id` int(11) NOT NULL,
  `first_title` varchar(255) DEFAULT NULL,
  `second_title` varchar(255) DEFAULT NULL,
  `third_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_links`
--

CREATE TABLE `tbl_social_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_roles`
--

CREATE TABLE `tbl_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `parent_role` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `permission` text DEFAULT NULL,
  `action_permission` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user_roles`
--

INSERT INTO `tbl_user_roles` (`id`, `name`, `parent_role`, `level`, `status`, `permission`, `action_permission`, `created_at`, `updated_at`) VALUES
(2, 'Super User', NULL, 1, 1, '1,16,17,18,19,21,22,23,77,24,25,26,27,43,44,45,46,74,52,32,33,34,51,28,30,47,48,49,50,75,76,53,54,55,56,57,59,60,61,62,63,58,66,67,68,69,70,71,72,73,78,13,2,3,4,5,15', '54,55,56,57,62,63,64,65,58,59,60,61,70,71,84,73,72,74,75,83,76,77,78,87,79,86,89,85,80,81,88,82,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,2,3,4,5,6,11,12,13,14,15,7,8,9,10,21,22,23,24,25,26,52,53', '2019-04-17 00:50:05', '2022-11-27 12:22:59'),
(3, 'Admin', 2, 1, 1, '1,16,17,18,19,21,22,24,25,26,27,43,44,45,46,52,32,33,34,51,28,30,47,48,49,50,53,54,55', '54,55,56,57,62,63,64,65,58,59,60,61,70,71,84,73,72,74,75,83,76,77,78,87,79,86,85,80,81,82', '2019-04-17 00:52:54', '2026-06-06 11:40:46'),
(4, 'User', NULL, 1, 1, '1,21,22,23,77,24,25,26,27,43,44,45,46,74,52,32,33,34,51,28,30,47,48,49,50,75,76,53,54,55,56,57,59,60,61,62,63,58,66,67,68,69,70,71,72,73', '70,71,84,74,75,83,77,78,87,86,89,80,81,88,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,24', '2020-03-07 00:49:33', '2022-09-04 22:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_stamps`
--

CREATE TABLE `tenant_stamps` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `stamp_no` text DEFAULT NULL,
  `stamp_image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `collection_ebill`
--
ALTER TABLE `collection_ebill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_rant`
--
ALTER TABLE `collection_rant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_servicecharge`
--
ALTER TABLE `collection_servicecharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_wbill`
--
ALTER TABLE `collection_wbill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `saleposition`
--
ALTER TABLE `saleposition`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code` (`Code`) USING HASH;

--
-- Indexes for table `tbl_account_transactions`
--
ALTER TABLE `tbl_account_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coa`
--
ALTER TABLE `tbl_coa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_actions`
--
ALTER TABLE `tbl_menu_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_action_type`
--
ALTER TABLE `tbl_menu_action_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setup_floor`
--
ALTER TABLE `tbl_setup_floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setup_project`
--
ALTER TABLE `tbl_setup_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setup_rate`
--
ALTER TABLE `tbl_setup_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setup_system`
--
ALTER TABLE `tbl_setup_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setup_unit`
--
ALTER TABLE `tbl_setup_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setup_utility`
--
ALTER TABLE `tbl_setup_utility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_links`
--
ALTER TABLE `tbl_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_stamps`
--
ALTER TABLE `tenant_stamps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `collection_ebill`
--
ALTER TABLE `collection_ebill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_rant`
--
ALTER TABLE `collection_rant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_servicecharge`
--
ALTER TABLE `collection_servicecharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_wbill`
--
ALTER TABLE `collection_wbill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saleposition`
--
ALTER TABLE `saleposition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_account_transactions`
--
ALTER TABLE `tbl_account_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coa`
--
ALTER TABLE `tbl_coa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_menu_actions`
--
ALTER TABLE `tbl_menu_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_menu_action_type`
--
ALTER TABLE `tbl_menu_action_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_setup_floor`
--
ALTER TABLE `tbl_setup_floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_setup_project`
--
ALTER TABLE `tbl_setup_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_setup_rate`
--
ALTER TABLE `tbl_setup_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_setup_system`
--
ALTER TABLE `tbl_setup_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setup_unit`
--
ALTER TABLE `tbl_setup_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_setup_utility`
--
ALTER TABLE `tbl_setup_utility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sliders`
--
ALTER TABLE `tbl_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_social_links`
--
ALTER TABLE `tbl_social_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tenant_stamps`
--
ALTER TABLE `tenant_stamps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
