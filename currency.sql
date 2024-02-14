-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 12:33 AM
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
-- Database: `currency`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

create database currency;
use currency;

CREATE TABLE `currency` (
  `name` varchar(20) NOT NULL,
  `code` varchar(5) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`name`, `code`, `rate`) VALUES
('United States Dollar', 'USD', 1),
('UAE Dirham', 'AED', 3.6725),
('Afghan Afghani', 'AFN', 85.8813),
('Albanian Lek', 'ALL', 97.4583),
('Armenian Dram', 'AMD', 386.7473),
('Netherlands Antillea', 'ANG', 1.79),
('Angolan Kwanza', 'AOA', 793.3655),
('Argentine Peso', 'ARS', 251.1792),
('Australian Dollar', 'AUD', 1.4963),
('Aruban Florin', 'AWG', 1.79),
('Azerbaijani Manat', 'AZN', 1.7003),
('Bosnia-Herzegovina C', 'BAM', 1.7965),
('Barbadian Dollar', 'BBD', 2),
('Bangladeshi Taka', 'BDT', 108.1444),
('Bulgarian Lev', 'BGN', 1.7966),
('Bahraini Dinar', 'BHD', 0.376),
('Burundian Franc', 'BIF', 2809.608),
('Bermudan Dollar', 'BMD', 1),
('Brunei Dollar', 'BND', 1.3503),
('Bolivian Boliviano', 'BOB', 6.9257),
('Brazilian Real', 'BRL', 4.7743),
('Bahamian Dollar', 'BSD', 1),
('Bhutanese Ngultrum', 'BTN', 82.0116),
('Botswana Pula', 'BWP', 13.4115),
('Belarusian Ruble', 'BYN', 2.7932),
('Belize Dollar', 'BZD', 2),
('Canadian Dollar', 'CAD', 1.3191),
('Congolese Franc', 'CDF', 2196.2834),
('Swiss Franc', 'CHF', 0.8974),
('Chilean Peso', 'CLP', 804.5613),
('Chinese Yuan', 'CNY', 7.1916),
('Colombian Peso', 'COP', 4146.279),
('Costa Rican Colón', 'CRC', 540.8359),
('Cuban Peso', 'CUP', 24),
('Cape Verdean Escudo', 'CVE', 101.2849),
('Czech Koruna', 'CZK', 21.7318),
('Djiboutian Franc', 'DJF', 177.721),
('Danish Krone', 'DKK', 6.8528),
('Dominican Peso', 'DOP', 54.8659),
('Algerian Dinar', 'DZD', 135.5702),
('Egyptian Pound', 'EGP', 30.8922),
('Eritrean Nakfa', 'ERN', 15),
('Ethiopian Birr', 'ETB', 54.9735),
('Euro', 'EUR', 0.9186),
('Fijian Dollar', 'FJD', 2.208),
('Falkland Islands Pou', 'FKP', 0.7864),
('Faroese Króna', 'FOK', 6.8528),
('British Pound Sterli', 'GBP', 0.7864),
('Georgian Lari', 'GEL', 2.6269),
('Guernsey Pound', 'GGP', 0.7864),
('Ghanaian Cedi', 'GHS', 11.6664),
('Gibraltar Pound', 'GIP', 0.7864),
('Gambian Dalasi', 'GMD', 62.6249),
('Guinean Franc', 'GNF', 8552.7676),
('Guatemalan Quetzal', 'GTQ', 7.8399),
('Guyanaese Dollar', 'GYD', 211.5023),
('Hong Kong Dollar', 'HKD', 7.8296),
('Honduran Lempira', 'HNL', 24.5974),
('Croatian Kuna', 'HRK', 6.9209),
('Haitian Gourde', 'HTG', 138.6278),
('Hungarian Forint', 'HUF', 339.7127),
('Indonesian Rupiah', 'IDR', 15025.9835),
('Israeli New Shekel', 'ILS', 3.627),
('Manx Pound', 'IMP', 0.7864),
('Indian Rupee', 'INR', 82.0116),
('Iraqi Dinar', 'IQD', 1310.4112),
('Iranian Rial', 'IRR', 42026.6134),
('Icelandic Króna', 'ISK', 137.0261),
('Jersey Pound', 'JEP', 0.7864),
('Jamaican Dollar', 'JMD', 154.2215),
('Jordanian Dinar', 'JOD', 0.709),
('Japanese Yen', 'JPY', 143.4793),
('Kenyan Shilling', 'KES', 140.9077),
('Kyrgyzstani Som', 'KGS', 87.2781),
('Cambodian Riel', 'KHR', 4135.6949),
('Kiribati Dollar', 'KID', 1.4963),
('Comorian Franc', 'KMF', 451.9013),
('South Korean Won', 'KRW', 1306.1635),
('Kuwaiti Dinar', 'KWD', 0.3075),
('Cayman Islands Dolla', 'KYD', 0.8333),
('Kazakhstani Tenge', 'KZT', 448.168),
('Lao Kip', 'LAK', 18222.8007),
('Lebanese Pound', 'LBP', 15000),
('Sri Lankan Rupee', 'LKR', 307.1022),
('Liberian Dollar', 'LRD', 176.4914),
('Lesotho Loti', 'LSL', 18.7156),
('Libyan Dinar', 'LYD', 4.7979),
('Moroccan Dirham', 'MAD', 9.9813),
('Moldovan Leu', 'MDL', 18.0522),
('Malagasy Ariary', 'MGA', 4506.6022),
('Macedonian Denar', 'MKD', 56.6275),
('Myanma Kyat', 'MMK', 2100.4169),
('Mongolian Tögrög', 'MNT', 3451.6444),
('Macanese Pataca', 'MOP', 8.0647),
('Mauritanian Ouguiya', 'MRU', 34.5603),
('Mauritian Rupee', 'MUR', 45.593),
('Maldivian Rufiyaa', 'MVR', 15.4562),
('Malawian Kwacha', 'MWK', 1047.2924),
('Mexican Peso', 'MXN', 17.1877),
('Malaysian Ringgit', 'MYR', 4.665),
('Mozambican Metical', 'MZN', 64.0151),
('Namibian Dollar', 'NAD', 18.7156),
('Nigerian Naira', 'NGN', 760.3518),
('Nicaraguan Córdoba', 'NIO', 36.5441),
('Norwegian Krone', 'NOK', 10.8484),
('Nepalese Rupee', 'NPR', 131.2186),
('New Zealand Dollar', 'NZD', 1.6279),
('Omani Rial', 'OMR', 0.3845),
('Panamanian Balboa', 'PAB', 1),
('Peruvian Sol', 'PEN', 3.6315),
('Papua New Guinean Ki', 'PGK', 3.5605),
('Philippine Peso', 'PHP', 55.7387),
('Pakistani Rupee', 'PKR', 286.6775),
('Polish Złoty', 'PLN', 4.0724),
('Paraguayan Guarani', 'PYG', 7272.7993),
('Qatari Riyal', 'QAR', 3.64),
('Romanian Leu', 'RON', 4.5511),
('Serbian Dinar', 'RSD', 107.5084),
('Russian Ruble', 'RUB', 84.3995),
('Rwandan Franc', 'RWF', 1209.3115),
('Saudi Riyal', 'SAR', 3.75),
('Solomon Islands Doll', 'SBD', 7.9733),
('Seychellois Rupee', 'SCR', 13.6763),
('Sudanese Pound', 'SDG', 446.8253),
('Swedish Krona', 'SEK', 8.5407),
('Singapore Dollar', 'SGD', 1.3503),
('Saint Helena Pound', 'SHP', 0.7864),
('Sierra Leonean Leone', 'SLL', 10205.6775),
('Somali Shilling', 'SOS', 578.9403),
('Surinamese Dollar', 'SRD', 21.919),
('São Tomé and Príncip', 'STN', 22.6464),
('Salvadoran Colón', 'SVC', 8.75),
('Syrian Pound', 'SYP', 514.8886),
('Swazi Lilangeni', 'SZL', 18.7156),
('Thai Baht', 'THB', 33.2132),
('Tajikistani Somoni', 'TJS', 13.9455),
('Turkmenistani Manat', 'TMT', 3.4919),
('Tunisian Dinar', 'TND', 2.8173),
('Tongan Paʻanga', 'TOP', 2.208),
('Turkish Lira', 'TRY', 10.1953),
('Trinidad and Tobago ', 'TTD', 6.7917),
('New Taiwan Dollar', 'TWD', 27.7406),
('Tanzanian Shilling', 'TZS', 2302.8342),
('Ukrainian Hryvnia', 'UAH', 26.9627),
('Ugandan Shilling', 'UGX', 3532.2179),
('United States Dollar', 'USD', 1),
('Uruguayan Peso', 'UYU', 45.1254),
('Uzbekistan Som', 'UZS', 10541.8794),
('Venezuelan Bolívar', 'VES', 4.241),
('Vietnamese Đồng', 'VND', 22793.4772),
('Vanuatu Vatu', 'VUV', 112.8786),
('Samoan Tala', 'WST', 2.5305),
('Central African CFA ', 'XAF', 556.4561),
('East Caribbean Dolla', 'XCD', 2.7),
('West African CFA Fra', 'XOF', 556.4561),
('CFP Franc', 'XPF', 102.0654),
('Yemeni Rial', 'YER', 250.2791),
('South African Rand', 'ZAR', 18.7156),
('Zambian Kwacha', 'ZMW', 18.7291),
('Zimbabwean Dollar', 'ZWL', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
