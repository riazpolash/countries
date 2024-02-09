-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2024 at 06:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) DEFAULT NULL,
  `iso` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `exchange_rate` decimal(16,2) DEFAULT NULL,
  `position` varchar(191) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1= Active, 0= Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `iso`, `name`, `symbol`, `exchange_rate`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'AL', 'Leke', 'Lek', NULL, '1', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(2, 'United States of America', 'US', 'Dollars', '$', NULL, '2', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(3, 'United Arab Emirates', 'AE', 'United Arab Emirates dirham', 'د.إ', NULL, '3', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(4, 'Afghanistan', 'AF', 'Afghanis', '؋', NULL, '4', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(5, 'Argentina', 'AR', 'Pesos', '$', NULL, '5', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(6, 'Aruba', 'AW', 'Guilders', 'ƒ', NULL, '6', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(7, 'Australia', 'AU', 'Dollars', '$', NULL, '7', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(8, 'Azerbaijan', 'AZ', 'New Manats', 'ман', NULL, '8', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(9, 'Bahamas', 'BS', 'Dollars', '$', NULL, '9', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(10, 'Barbados', 'BB', 'Dollars', '$', NULL, '10', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(11, 'Belarus', 'BY', 'Rubles', 'p.', NULL, '11', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(12, 'Belgium', 'BE', 'Euro', '€', NULL, '12', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(13, 'Belize', 'BZ', 'Dollars', 'BZ$', NULL, '13', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(14, 'Bermuda', 'BM', 'Dollars', '$', NULL, '14', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(15, 'Bolivia', 'BO', 'Bolivianos', '$b', NULL, '15', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(16, 'Bosnia and Herzegovina', 'BA', 'Convertible Marka', 'KM', NULL, '16', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(17, 'Botswana', 'BW', 'Pula\'s', 'P', NULL, '17', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(18, 'Bulgaria', 'BG', 'Leva', 'лв', NULL, '18', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(19, 'Brazil', 'BR', 'Reais', 'R$', NULL, '19', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(20, 'United Kingdom', 'GB', 'Pounds', '£', NULL, '20', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(21, 'Brunei Darussalam', 'BN', 'Dollars', '$', NULL, '21', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(22, 'Cambodia', 'KH', 'Riels', '៛', NULL, '22', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(23, 'Canada', 'CA', 'Dollars', '$', NULL, '23', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(24, 'Cayman Islands', 'KY', 'Dollars', '$', NULL, '24', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(25, 'Chile', 'CL', 'Pesos', '$', NULL, '25', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(26, 'China', 'CN', 'Yuan Renminbi', '¥', NULL, '26', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(27, 'Colombia', 'CO', 'Pesos', '$', NULL, '27', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(28, 'Costa Rica', 'CR', 'Colón', '₡', NULL, '28', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(29, 'Croatia', 'HR', 'Kuna', 'kn', NULL, '29', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(30, 'Cuba', 'CU', 'Pesos', '₱', NULL, '30', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(31, 'Cyprus', 'CY', 'Euro', '€', NULL, '31', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(32, 'Czech Republic', 'CZ', 'Koruny', 'Kč', NULL, '32', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(33, 'Denmark', 'DK', 'Kroner', 'kr', NULL, '33', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(34, 'Dominican Republic', 'DO', 'Pesos', 'RD$', NULL, '34', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(36, 'Egypt', 'EG', 'Pounds', '£', NULL, '36', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(37, 'El Salvador', 'SV', 'Colones', '$', NULL, '37', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(40, 'Falkland Islands', 'FK', 'Pounds', '£', NULL, '40', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(41, 'Fiji', 'FJ', 'Dollars', '$', NULL, '41', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(42, 'France', 'FR', 'Euro', '€', NULL, '42', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(43, 'Ghana', 'GH', 'Cedis', '¢', NULL, '43', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(44, 'Gibraltar', 'GI', 'Pounds', '£', NULL, '44', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(45, 'Greece', 'GR', 'Euro', '€', NULL, '45', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(46, 'Guatemala', 'GT', 'Quetzales', 'Q', NULL, '46', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(47, 'Guernsey', 'GG', 'Pounds', '£', NULL, '47', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(48, 'Guyana', 'GY', 'Dollars', '$', NULL, '48', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(50, 'Honduras', 'HN', 'Lempiras', 'L', NULL, '50', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(51, 'Hong Kong', 'HK', 'Dollars', '$', NULL, '51', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(52, 'Hungary', 'HU', 'Forint', 'Ft', NULL, '52', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(53, 'Iceland', 'IS', 'Kronur', 'kr', NULL, '53', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(54, 'India', 'IN', 'Rupees', '₹', NULL, '54', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(55, 'Indonesia', 'ID', 'Rupiahs', 'Rp', NULL, '55', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(56, 'Iran', NULL, 'Rials', '﷼', NULL, '56', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(57, 'Ireland', 'IE', 'Euro', '€', NULL, '57', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(58, 'Isle of Man', 'IM', 'Pounds', '£', NULL, '58', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(59, 'Israel', 'IL', 'New Shekels', '₪', NULL, '59', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(60, 'Italy', 'IT', 'Euro', '€', NULL, '60', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(61, 'Jamaica', 'JM', 'Dollars', 'J$', NULL, '61', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(62, 'Japan', 'JP', 'Yen', '¥', NULL, '62', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(63, 'Jersey', 'JE', 'Pounds', '£', NULL, '63', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(64, 'Kazakhstan', 'KZ', 'Tenge', 'лв', NULL, '64', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(67, 'Kyrgyzstan', 'KG', 'Soms', 'лв', NULL, '67', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(68, 'Laos', 'LA', 'Kips', '₭', NULL, '68', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(69, 'Latvia', 'LV', 'Lati', 'Ls', NULL, '69', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(70, 'Lebanon', 'LB', 'Pounds', '£', NULL, '70', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(71, 'Liberia', 'LR', 'Dollars', '$', NULL, '71', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(72, 'Liechtenstein', 'LI', 'Switzerland Francs', 'CHF', NULL, '72', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(73, 'Lithuania', 'LT', 'Litai', 'Lt', NULL, '73', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(74, 'Luxembourg', 'LU', 'Euro', '€', NULL, '74', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(75, 'Macedonia', 'MK', 'Denars', 'ден', NULL, '75', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(76, 'Malaysia', 'MY', 'Ringgits', 'RM', NULL, '76', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(77, 'Malta', 'MT', 'Euro', '€', NULL, '77', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(78, 'Mauritius', 'MU', 'Rupees', '₨', NULL, '78', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(79, 'Mexico', 'MX', 'Pesos', '$', NULL, '79', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(80, 'Mongolia', 'MN', 'Tugriks', '₮', NULL, '80', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(81, 'Mozambique', 'MZ', 'Meticais', 'MT', NULL, '81', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(82, 'Namibia', 'NA', 'Dollars', '$', NULL, '82', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(83, 'Nepal', 'NP', 'Rupees', '₨', NULL, '83', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(84, 'Netherlands Antilles', 'AN', 'Guilders', 'ƒ', NULL, '84', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(85, 'Netherlands', 'NL', 'Euro', '€', NULL, '85', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(86, 'New Zealand', 'NZ', 'Dollars', '$', NULL, '86', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(87, 'Nicaragua', 'NI', 'Cordobas', 'C$', NULL, '87', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(88, 'Nigeria', 'NG', 'Nairas', '₦', NULL, '88', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(89, 'North Korea', 'KP', 'Won', '₩', NULL, '89', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(90, 'Norway', 'NO', 'Krone', 'kr', NULL, '90', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(91, 'Oman', 'OM', 'Rials', '﷼', NULL, '91', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(92, 'Pakistan', 'PK', 'Rupees', '₨', NULL, '92', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(93, 'Panama', 'PA', 'Balboa', 'B/.', NULL, '93', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(94, 'Paraguay', 'PY', 'Guarani', 'Gs', NULL, '94', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(95, 'Peru', 'PE', 'Nuevos Soles', 'S/.', NULL, '95', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(96, 'Philippines', 'PH', 'Pesos', 'Php', NULL, '96', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(97, 'Poland', 'PL', 'Zlotych', 'zł', NULL, '97', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(98, 'Qatar', 'QA', 'Rials', '﷼', NULL, '98', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(99, 'Romania', 'RO', 'New Lei', 'lei', NULL, '99', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(100, 'Russia', 'RU', 'Rubles', 'руб', NULL, '100', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(101, 'Saint Helena', 'SH', 'Pounds', '£', NULL, '101', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(102, 'Saudi Arabia', 'SA', 'Riyals', '﷼', NULL, '102', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(103, 'Serbia', 'RS', 'Dinars', 'Дин.', NULL, '103', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(104, 'Seychelles', 'SC', 'Rupees', '₨', NULL, '104', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(105, 'Singapore', 'SG', 'Dollars', '$', NULL, '105', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(106, 'Slovenia', 'SI', 'Euro', '€', NULL, '106', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(107, 'Solomon Islands', 'SB', 'Dollars', '$', NULL, '107', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(108, 'Somalia', 'SO', 'Shillings', 'S', NULL, '108', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(109, 'South Africa', 'ZA', 'Rand', 'R', NULL, '109', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(110, 'South Korea', 'KR', 'Won', '₩', NULL, '110', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(111, 'Spain', 'ES', 'Euro', '€', NULL, '111', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(112, 'Sri Lanka', 'LK', 'Rupees', '₨', NULL, '112', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(113, 'Sweden', 'SE', 'Kronor', 'kr', NULL, '113', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(114, 'Switzerland', 'CH', 'Francs', 'CHF', NULL, '114', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(115, 'Suriname', 'SR', 'Dollars', '$', NULL, '115', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(116, 'Syria', 'SY', 'Pounds', '£', NULL, '116', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(117, 'Taiwan', 'TW', 'New Dollars', 'NT$', NULL, '117', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(118, 'Thailand', 'TH', 'Baht', '฿', NULL, '118', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(119, 'Trinidad and Tobago', 'TT', 'Dollars', 'TT$', NULL, '119', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(120, 'Turkey', 'TR', 'Lira', 'TL', NULL, '120', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(121, 'Turkey', 'TR', 'Liras', '£', NULL, '121', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(122, 'Tuvalu', 'TV', 'Dollars', '$', NULL, '122', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(123, 'Ukraine', 'UA', 'Hryvnia', '₴', NULL, '123', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(126, 'Uruguay', 'UY', 'Pesos', '$U', NULL, '126', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(127, 'Uzbekistan', 'UZ', 'Sums', 'лв', NULL, '127', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(128, 'Vatican City', 'VA', 'Euro', '€', NULL, '128', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(129, 'Venezuela', 'VE', 'Bolivares Fuertes', 'Bs', NULL, '129', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(130, 'Vietnam', 'VN', 'Dong', '₫', NULL, '130', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:29'),
(131, 'Yemen', 'YE', 'Rials', '﷼', NULL, '131', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:29'),
(132, 'Zimbabwe', 'ZW', 'Zimbabwe Dollars', 'Z$', NULL, '132', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:29'),
(133, 'Iraq', 'IQ', 'Iraqi dinar', 'د.ع', NULL, '133', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(134, 'Kenya', 'KE', 'Kenyan shilling', 'KSh', NULL, '134', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(135, 'Bangladesh', 'BD', 'Taka', '৳', NULL, '135', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(137, 'Uganda', 'UG', 'Uganda shillings', 'USh', NULL, '137', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(138, 'Tanzania', 'TZ', 'Tanzanian shilling', 'TSh', NULL, '138', 1, '2024-02-09 17:02:23', '2024-02-09 17:02:23'),
(139, 'Angola', 'AO', 'Kwanza', 'Kz', NULL, '139', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(140, 'Kuwait', 'KW', 'Kuwaiti dinar', 'KD', NULL, '140', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(141, 'Bahrain', 'BH', 'Bahraini dinar', 'BD', NULL, '141', 1, '2024-02-09 17:02:23', '2024-02-09 17:03:28'),
(142, 'Algeria', 'DZ', 'Algerian dinar', 'د.ج\"', '1.00', '1', 1, '2024-02-09 17:45:11', '2024-02-09 17:45:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
