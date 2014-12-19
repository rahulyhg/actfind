-- phpMyAdmin SQL Dump
-- version 3.1.5
-- http://www.phpmyadmin.net
--
-- Host: remote-mysql3.servage.net
-- Generation Time: Dec 08, 2014 at 11:19 PM
-- Server version: 5.5.35
-- PHP Version: 5.2.42-servage30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prejobman`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `activity_id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_description` varchar(200) DEFAULT NULL,
  `ac_lat` float(20,12) DEFAULT NULL,
  `ac_lon` float(20,12) DEFAULT NULL,
  `ac_address` varchar(255) DEFAULT NULL,
  `ac_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ac_updated` timestamp NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `xtras` text,
  `place_id` varchar(200) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `user_id`, `ac_name`, `ac_description`, `ac_lat`, `ac_lon`, `ac_address`, `ac_created`, `ac_updated`, `status`, `xtras`, `place_id`, `details`) VALUES
('48BA5D20-F534-DACD-70D5-F69D95E85BA0', NULL, 'testing', NULL, 37.698268890381, -121.894477844238, '4480 Hacienda Drive, Pleasanton, CA, United States', '2014-10-13 19:30:38', '2014-10-13 12:30:38', 1, NULL, '', 'dfdsfdsf'),
('4B0867EB-9009-B838-3274-1F982E22C222', '96962943-750F-868B-CE96-E3102B4BD862', 'mixed league', 'mixed', 37.704246520996, -121.915275573730, '6726-6798 Dublin Boulevard, Dublin, CA 94568, USA', '2014-09-29 22:48:47', '2014-09-29 15:48:47', 1, '{"phone":"","email":"","website":"","googleplus":"","skype":"","facebookURL":"","whatsapp_phone":""}', '', NULL),
('664A1464-5FB7-3757-8A6F-D1BF62D36E40', '96962943-750F-868B-CE96-E3102B4BD862', 'Emerald Glen Park', 'Emerald Glen ParkEmerald Glen Park', 37.711193084717, -121.875343322754, 'Gleason Drive, Dublin, CA 94568, USA', '2014-09-29 20:51:19', '2014-09-29 13:51:19', 1, '{"ac_images":["http:\\/\\/www.collegemagazine.com\\/files\\/image\\/Soccer2.jpg"],"phone":"(925) 556-4500","email":"fact@gmail.com","website":"http:\\/\\/www.ci.dublin.ca.us\\/Facilities.aspx?Page=detail&RID=13","googleplus":"https:\\/\\/plus.google.com\\/103274081757916658639\\/about?hl=en-US","skype":"fact","facebookURL":"http:\\/\\/faccebook.com\\/fact","whatsapp":"1","whatsapp_phone":"+1(925) 556-4500","customfield1":"Name","customfield2":"Date of Birth","customfield3":"Age","customfield4":"Gender","customfield5":"Address"}', 'ChIJSeT1Icruj4AR5EVB6BpMg7M', NULL),
('8AABCB2F-5D80-8415-CA8B-BEBD9AB42E32', NULL, 'fsdfsdf', NULL, 37.697170257568, -121.897109985352, '4747 Willow Road, Pleasanton, CA 94588, USA', '2014-10-13 19:29:51', '2014-10-13 12:29:51', 1, NULL, '', 'sdfsdf'),
('EB1E9BCD-A141-5333-DA26-B08C7FE8987A', '96962943-750F-868B-CE96-E3102B4BD862', 'Emerald Glen Park', '', 37.711193084717, -121.875343322754, 'Dublin Boulevard, Dublin, CA, United States', '2014-09-29 22:48:15', '2014-09-29 15:48:14', 1, '{"ac_description":"","phone":"(925) 556-4500","email":"","website":"http:\\/\\/www.ci.dublin.ca.us\\/Facilities.aspx?Page=detail&RID=13","googleplus":"https:\\/\\/plus.google.com\\/103274081757916658639\\/about?hl=en-US","skype":"","facebookURL":"","whatsapp_phone":""}', 'ChIJSeT1Icruj4AR5EVB6BpMg7M', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activities_cats`
--

CREATE TABLE IF NOT EXISTS `activities_cats` (
  `activity_id` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`activity_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities_cats`
--

INSERT INTO `activities_cats` (`activity_id`, `category_id`) VALUES
('4B0867EB-9009-B838-3274-1F982E22C222', 1),
('4B0867EB-9009-B838-3274-1F982E22C222', 2),
('664A1464-5FB7-3757-8A6F-D1BF62D36E40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
  `user_id` varchar(50) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `uid` varchar(50) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1',
  `access_level` enum('member','admin') NOT NULL DEFAULT 'member',
  `sn_type` enum('googleplus','facebook','twitter','linkedin','email') DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`user_id`, `email`, `password`, `gender`, `name`, `uid`, `link`, `picture`, `created_dt`, `status`, `access_level`, `sn_type`) VALUES
('08A29774-88A9-9CAC-7AF6-3BD773F82D34', 'preethi_sriram1@yahoo.com', 'ea1qfj/hzYDmseEuX8x48w==', NULL, 'Preethi3', '', NULL, NULL, '2014-10-04 04:00:22', 1, 'member', 'email'),
('7CED141E-266F-4A05-410E-546286B5D3B5', 'spreethi20@gmail.com', 'ea1qfj/hzYDmseEuX8x48w==', NULL, 'Preethi', '', NULL, NULL, '2014-10-03 22:21:43', 1, 'member', 'email'),
('8A84C6D5-F2EA-65B0-023B-7C203A431ADC', 'psriram20@gmail.com', NULL, 'female', 'Preethi Sriram', '116186854425802195485', 'https://plus.google.com/116186854425802195485', 'https://lh4.googleusercontent.com/-H02qnDXZL4k/AAAAAAAAAAI/AAAAAAAABBI/gyJcJkA1ML0/photo.jpg?sz=50', '2014-10-05 15:33:12', 1, 'member', NULL),
('98A1B8EC-42E2-575B-8978-3C33BEA5994D', 'preethi_sriram@yahoo.com', 'kbV+to4ALMTtc2CUF70eTQ==', NULL, 'Preethi1', '', NULL, NULL, '2014-10-04 03:59:04', 1, 'member', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category`, `parent_id`) VALUES
(1, 'Soccer', 0),
(2, 'Karate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `club_reviews`
--

CREATE TABLE IF NOT EXISTS `club_reviews` (
  `review_id` varchar(50) NOT NULL,
  `activity_id` varchar(50) NOT NULL,
  `show_review` int(1) NOT NULL DEFAULT '0',
  `author_name` varchar(50) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  `details` text,
  `review_date` datetime DEFAULT NULL,
  `language_review` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `club_reviews`
--

INSERT INTO `club_reviews` (`review_id`, `activity_id`, `show_review`, `author_name`, `rating`, `details`, `review_date`, `language_review`) VALUES
('08BD3287-9193-1367-AA60-E7FFC62C15AA', '664A1464-5FB7-3757-8A6F-D1BF62D36E40', 1, 'A Google User', 4, '', '2012-05-14 11:12:08', 'en'),
('339E7EA5-F0CF-8D99-6AEB-97E718B6DCAF', 'EB1E9BCD-A141-5333-DA26-B08C7FE8987A', 1, 'Caron Furtado', 5, '', '2014-09-15 10:02:15', 'en'),
('36A718C7-3484-4CA9-9E00-7559F14F418E', '664A1464-5FB7-3757-8A6F-D1BF62D36E40', 1, 'Pleasure Unique', 5, 'Really nice', '2014-08-16 09:41:03', 'en'),
('5A3BD251-0EC2-FC76-97A5-0B0C73374723', 'EB1E9BCD-A141-5333-DA26-B08C7FE8987A', 1, 'Pleasure Unique', 5, 'Really nice', '2014-08-16 09:41:03', 'en'),
('838CA11D-FCD1-AC1E-5D65-9798E74CDD8F', '664A1464-5FB7-3757-8A6F-D1BF62D36E40', 1, 'Joseph Gregory', 5, 'Playground for small children was great, even had water sprayers they could run around in.', '2012-04-19 09:40:52', 'en'),
('A6523C2C-55D9-64A1-CE1D-3E092C91FBB4', 'EB1E9BCD-A141-5333-DA26-B08C7FE8987A', 1, 'A Google User', 4, '', '2012-05-14 11:12:08', 'en'),
('B86F544D-928D-4C68-394B-709314B62E0E', 'EB1E9BCD-A141-5333-DA26-B08C7FE8987A', 1, 'Joseph Gregory', 5, 'Playground for small children was great, even had water sprayers they could run around in.', '2012-04-19 09:40:52', 'en'),
('B98F5508-EB98-FE3C-FCEB-B6728D5CB969', '664A1464-5FB7-3757-8A6F-D1BF62D36E40', 1, 'Caron Furtado', 5, '', '2014-09-15 10:02:15', 'en'),
('C22208E1-4600-4E14-3920-46BD67DD1C68', '664A1464-5FB7-3757-8A6F-D1BF62D36E40', 1, 'A Google User', 5, '', '2012-03-04 17:46:16', 'en'),
('CC9FCDC4-D4F6-BFE0-8007-8939B3EF4B5A', 'EB1E9BCD-A141-5333-DA26-B08C7FE8987A', 1, 'A Google User', 5, '', '2012-03-04 17:46:16', 'en');
