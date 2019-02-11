-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table assessment.country
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;

-- Dumping data for table assessment.country: ~237 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `name`, `status`) VALUES
	(1, 'India', '1'),
	(2, 'United States', '1'),
	(3, 'Australia', '1'),
	(4, 'Canada', '1'),
	(5, 'United Kingdom', '1'),
	(6, 'Afghanistan', '1'),
	(7, 'Albania', '1'),
	(8, 'Algeria', '1'),
	(9, 'Amer.Virgin Is.', '1'),
	(10, 'Andorra', '1'),
	(11, 'Angola', '1'),
	(12, 'Anguilla', '1'),
	(13, 'Antarctica', '1'),
	(14, 'Antigua/Barbads', '1'),
	(15, 'Argentina', '1'),
	(16, 'Armenia', '1'),
	(17, 'Aruba', '1'),
	(18, 'Austria', '1'),
	(19, 'Azerbaijan', '1'),
	(20, 'Bahamas', '1'),
	(21, 'Bahrain', '1'),
	(22, 'Bangladesh', '1'),
	(23, 'Barbados', '1'),
	(24, 'Belarus', '1'),
	(25, 'Belgium', '1'),
	(26, 'Belize', '1'),
	(27, 'Benin', '1'),
	(28, 'Bermuda', '1'),
	(29, 'Bhutan', '1'),
	(30, 'Bolivia', '1'),
	(31, 'Bosnia-Herz.', '1'),
	(32, 'Botswana', '1'),
	(33, 'Bouvet Island', '1'),
	(34, 'Brazil', '1'),
	(35, 'Brit.Ind.Oc.Ter', '1'),
	(36, 'Brit.Virgin Is.', '1'),
	(37, 'Brunei', '1'),
	(38, 'Bulgaria', '1'),
	(39, 'Burkina-Faso', '1'),
	(40, 'Burundi', '1'),
	(41, 'Cambodia', '1'),
	(42, 'Cameroon', '1'),
	(43, 'Cape Verde', '1'),
	(44, 'Cayman Islands', '1'),
	(45, 'Central Afr.Rep', '1'),
	(46, 'Chad', '1'),
	(47, 'Channel Islands', '1'),
	(48, 'Chile', '1'),
	(49, 'China', '1'),
	(50, 'Christmas Islnd', '1'),
	(51, 'Coconut Islands', '1'),
	(52, 'Colombia', '1'),
	(53, 'Comoro', '1'),
	(54, 'Congo', '1'),
	(55, 'Cook Islands', '1'),
	(56, 'Costa Rica', '1'),
	(57, 'Croatia', '1'),
	(58, 'Cuba', '1'),
	(59, 'Cyprus', '1'),
	(60, 'Czech Republic', '1'),
	(61, 'Denmark', '1'),
	(62, 'Djibouti', '1'),
	(63, 'Dominica', '1'),
	(64, 'Dominican Rep.', '1'),
	(65, 'Ecuador', '1'),
	(66, 'Egypt', '1'),
	(67, 'El Salvador', '1'),
	(68, 'Equatorial Guin', '1'),
	(69, 'Eritrea', '1'),
	(70, 'Estonia', '1'),
	(71, 'Ethiopia', '1'),
	(72, 'Faeroe Islands', '1'),
	(73, 'Falkland Islnds', '1'),
	(74, 'Fiji', '1'),
	(75, 'Finland', '1'),
	(76, 'France', '1'),
	(77, 'Frenc.Polynesia', '1'),
	(78, 'French Guinea', '1'),
	(79, 'Gabon', '1'),
	(80, 'Gambia', '1'),
	(81, 'Georgia', '1'),
	(82, 'Germany', '1'),
	(83, 'Ghana', '1'),
	(84, 'Gibraltar', '1'),
	(85, 'Greece', '1'),
	(86, 'Greenland', '1'),
	(87, 'Grenada', '1'),
	(88, 'Guadeloupe', '1'),
	(89, 'Guam', '1'),
	(90, 'Guatemala', '1'),
	(91, 'Guinea', '1'),
	(92, 'Guinea-Bissau', '1'),
	(93, 'Guyana', '1'),
	(94, 'Haiti', '1'),
	(95, 'Heard/McDon.Isl', '1'),
	(96, 'Honduras', '1'),
	(97, 'Hong Kong', '1'),
	(98, 'Hungary', '1'),
	(99, 'Iceland', '1'),
	(100, 'Indonesia', '1'),
	(101, 'Iran', '1'),
	(102, 'Iraq', '1'),
	(103, 'Ireland', '1'),
	(104, 'Israel', '1'),
	(105, 'Italy', '1'),
	(106, 'Ivory Coast', '1'),
	(107, 'Jamaica', '1'),
	(108, 'Japan', '1'),
	(109, 'Jordan', '1'),
	(110, 'Kazakhstan', '1'),
	(111, 'Kenya', '1'),
	(112, 'Kirghistan', '1'),
	(113, 'Kiribati', '1'),
	(114, 'Kuwait', '1'),
	(115, 'Laos', '1'),
	(116, 'Latvia', '1'),
	(117, 'Lebanon', '1'),
	(118, 'Lesotho', '1'),
	(119, 'Liberia', '1'),
	(120, 'Libya', '1'),
	(121, 'Liechtenstein', '1'),
	(122, 'Lithuania', '1'),
	(123, 'Luxembourg', '1'),
	(124, 'Macau', '1'),
	(125, 'Macedonia', '1'),
	(126, 'Madagascar', '1'),
	(127, 'Malawi', '1'),
	(128, 'Malaysia', '1'),
	(129, 'Maldives', '1'),
	(130, 'Mali', '1'),
	(131, 'Malta', '1'),
	(132, 'Marshall Islnds', '1'),
	(133, 'Martinique', '1'),
	(134, 'Mauritania', '1'),
	(135, 'Mauritius', '1'),
	(136, 'Mayotte', '1'),
	(137, 'Mexico', '1'),
	(138, 'Micronesia', '1'),
	(139, 'Minor Outl.Isl.', '1'),
	(140, 'Moldavia', '1'),
	(141, 'Monaco', '1'),
	(142, 'Mongolia', '1'),
	(143, 'Montserrat', '1'),
	(144, 'Morocco', '1'),
	(145, 'Mozambique', '1'),
	(146, 'Myanmar', '1'),
	(147, 'N.Mariana Islnd', '1'),
	(148, 'Namibia', '1'),
	(149, 'Nauru', '1'),
	(150, 'Nepal', '1'),
	(151, 'Netherland Antilles', '1'),
	(152, 'Netherlands', '1'),
	(153, 'New Caledonia', '1'),
	(154, 'New Zealand', '1'),
	(155, 'Nicaragua', '1'),
	(156, 'Niger', '1'),
	(157, 'Nigeria', '1'),
	(158, 'Niue Islands', '1'),
	(159, 'Norfolk Island', '1'),
	(160, 'North Korea', '1'),
	(161, 'Norway', '1'),
	(162, 'Oman', '1'),
	(163, 'Pakistan', '1'),
	(164, 'Palau', '1'),
	(165, 'Panama', '1'),
	(166, 'Papua New Guinea', '1'),
	(167, 'Paraguay', '1'),
	(168, 'Peru', '1'),
	(169, 'Philippines', '1'),
	(170, 'Pitcairn Islnds', '1'),
	(171, 'Poland', '1'),
	(172, 'Portugal', '1'),
	(173, 'Puerto Rico', '1'),
	(174, 'Qatar', '1'),
	(175, 'Reunion', '1'),
	(176, 'Romania', '1'),
	(177, 'Russian Fed.', '1'),
	(178, 'Rwanda', '1'),
	(179, 'S.Tome,Principe', '1'),
	(180, 'Samoa,American', '1'),
	(181, 'San Marino', '1'),
	(182, 'Saudi Arabia', '1'),
	(183, 'Senegal', '1'),
	(184, 'Seychelles', '1'),
	(185, 'Sierra Leone', '1'),
	(186, 'Singapore', '1'),
	(187, 'Slovakia', '1'),
	(188, 'Slovenia', '1'),
	(189, 'Solomon Islands', '1'),
	(190, 'Somalia', '1'),
	(191, 'South Africa', '1'),
	(192, 'South Korea', '1'),
	(193, 'Spain', '1'),
	(194, 'Sri Lanka', '1'),
	(195, 'St. Helena', '1'),
	(196, 'St. Lucia', '1'),
	(197, 'St. Vincent', '1'),
	(198, 'St.Kitts, Nevis', '1'),
	(199, 'St.Pier,Miquel.', '1'),
	(200, 'Sth Sandwich Is', '1'),
	(201, 'Sudan', '1'),
	(202, 'Suriname', '1'),
	(203, 'Svalbard', '1'),
	(204, 'Swaziland', '1'),
	(205, 'Sweden', '1'),
	(206, 'Switzerland', '1'),
	(207, 'Syria', '1'),
	(208, 'Tadzhikistan', '1'),
	(209, 'Taiwan', '1'),
	(210, 'Tanzania', '1'),
	(211, 'Thailand', '1'),
	(212, 'Togo', '1'),
	(213, 'Tokelau Islands', '1'),
	(214, 'Tonga', '1'),
	(215, 'Trinidad,Tobago', '1'),
	(216, 'Tunisia', '1'),
	(217, 'Turkey', '1'),
	(218, 'Turkmenistan', '1'),
	(219, 'Turks &amp;Caicos', '1'),
	(220, 'Tuvalu', '1'),
	(221, 'Uganda', '1'),
	(222, 'Ukraine', '1'),
	(223, 'Uruguay', '1'),
	(224, 'Utd.Arab.Emir.', '1'),
	(225, 'Uzbekistan', '1'),
	(226, 'Vanuatu', '1'),
	(227, 'Vatican City', '1'),
	(228, 'Venezuela', '1'),
	(229, 'Vietnam', '1'),
	(230, 'Wallis,Futuna', '1'),
	(231, 'West Sahara', '1'),
	(232, 'Western Samoa', '1'),
	(233, 'Yemen', '1'),
	(234, 'Yugoslavia', '1'),
	(235, 'Zaire', '1'),
	(236, 'Zambia', '1'),
	(237, 'Zimbabwe', '1');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Dumping structure for table assessment.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `skills` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table assessment.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `first_name`, `last_name`, `dob`, `country_id`, `password`, `skills`, `status`) VALUES
	(1, 'ravindra@gmail.com', 'ravindra2806', 'ravindra', 'tripathi', '1981-06-28', '1', '21232f297a57a5a743894a0e4a801fc3', NULL, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
