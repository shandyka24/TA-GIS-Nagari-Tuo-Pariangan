-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 08:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lembah_harau`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(7) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `role_id` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `price_for_package` int DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `employee_name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `video_url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`id`, `name`, `status`, `address`, `price_for_package`, `open`, `close`, `employee_name`, `phone`, `description`, `geom`, `lat`, `lng`, `video_url`, `created_at`, `updated_at`) VALUES
('A4', 'Air Terjun Sarasah Bunta', 'Ordinary', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia,', 0, '00:00:00', '23:59:00', NULL, NULL, 'Air terjun Sarasah Bunta merupakan air terjun alami yang terbentuk akibat patahan ', 0xe6100000010300000001000000060000002a5c34bb592b5940693d0ced2adebbbf2a5c34c0632b594013a5e1ec92dfbbbf2a5c340c632b59402d902ff102bbbbbf2b5c3434592b5940a2a644f14ebabbbf295c3461592b59409e351fef96ccbbbf2a5c34bb592b5940693d0ced2adebbbf, '-0.10859590', '100.67764144', '', '2023-11-26 16:19:36', '2023-12-22 11:38:25'),
('A5', 'Panorama Aka Barayun', 'Ordinary', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia,', 0, '00:00:00', '23:59:00', NULL, NULL, 'Panorama Aka Barayun merupakan objek wisata dengan daya tarik air terjun dan tebing lembah harau yang ditumbuhi oleh tumbuhan merambat.', 0xe6100000010300000001000000060000005d23248aa62a5940c59ef650f5ebb9bf5c23a4a3a32a59401f0674525eddb9bf5b23e4b3ad2a594026cf37551fc2b9bf5d236478b42a5940b2f4ee5177e2b9bf5b232476ab2a594047dd284f89fdb9bf5d23248aa62a5940c59ef650f5ebb9bf, '-0.10107162', '100.66675139', '', '2023-11-26 16:26:07', '2023-12-22 11:31:35'),
('A6', 'Kampuang Sarosah', 'Ordinary', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia,', 30000, '09:00:00', '17:00:00', 'Kampuang Sarosah', '081360813344', 'Kampuang Sarosah Harau merupakan tempat wisata hits di Sumatera Barat yang dilengkapi dengan replika ikon sejumlah negara di dunia. Objek-objek wisata yang terdapat pada Kampuang Sarosah yaitu Kampung Eropa,  Kampuang Korea, Kampung Jepang dan Kampung Sarosah', 0xe61000000103000000010000000e000000295cb418c82a59407a6a2bcbcaf1bcbf2a5c741dd62a5940b1f57bd30cb0bcbf2a5c3477da2a5940e46ba5d2bab6bcbf295cb495e12a594032157ad70e90bcbf295cb404fa2a59400bed02c9aa02bdbf2b5c34b6f52a594087bc9ec4c424bdbf2b5cf40af02a5940f7a9fdc0b740bdbf2b5cb4c7eb2a594076938ebac271bdbf2b5cb41ce22a5940f57261bd505cbdbf2a5c345bd82a594024fcd1c2a732bdbf295c7456ca2a5940bb18f43c915fbdbf2a5cb405bd2a59405d971ec4a228bdbf2a5cb459c32a5940d1baedc71a0bbdbf295cb418c82a59407a6a2bcbcaf1bcbf, '-0.11329513', '100.66964846', '', '2023-11-26 16:27:54', '2023-12-22 11:23:38'),
('A7', 'Geopark Lembah Harau', 'Unique', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia,', 0, '00:00:00', '23:59:00', 'Edo', '081261499095', 'Geopark Lembah Harau dikenal karena beragam formasi batuan yang unik. Situs geologi di kawasan ini memberikan pandangan yang menarik tentang sejarah geologi dan proses alam yang terjadi selama jutaan tahun.<br><br> Kawasan geopark ini ditandai oleh tebing-tebing curam yang mengelilingi lembah, menciptakan pemandangan spektakuler. Keberadaan tebing yang tinggi dan terjal memberikan sentuhan dramatis pada lanskap alam.<br><br> Ketinggian tebing batu pada Geopark Lembah Harau berkisar antara 30m - 100m. Batuan pada tebing merupakan perselingan konglomerat dan batupasir dengan ketinggian ± 100 meter termasuk ke dalam formasi <i>Brani</i> berumur <i>Oligosen (34-23 juta tahun lalu)</i> serta mencirikan endapan fluvial dari sungai purba.<br><br> Terbentuknya lembah harau dikarenakan adanya patahan turun atau block yang turun membentuk lembah yang cukup luas dan datar. Salah satu tanda-tanda atau untuk melihat dimana lokasi patahannya adalah dengan adanya air terjun. Dengan begitu, dapat disimpulkan bahwa dahulu ada sungai yang kemudian terpotong akibat adanya patahan turun, sehingga membentuk air terjun. ', 0xe610000001030000000100000048000000cd9fb8d2782b5940882772613a20bcbfcc9fb852622b594075d13d659600bcbfcc9fb826522b59405da32b68fae7bbbfcd9fb843442b59405e07956a96d3bbbfcd9fb87c382b59405c1cff6a12d0bbbfc8bbd1d12c2b5940d2eea27d4ac8bbbfc7bbd17d262b59402043cd7de2c6bbbfc9bbd18c172b5940263b267b62ddbbbfc7bbd1f20b2b5940710b50784af5bbbfc8bbd128032b59406c7b657896f4bbbfc8bbd1fcf22a5940cb5ef675fa08bcbfc9bbd1e3ed2a594076f03074be17bcbfc7bbd119e52a5940a29da96e7245bcbfc8bbd1dcd62a59402082c66cea54bcbfc8bbd120cf2a5940a15c2c6cd659bcbfc8bbd153c92a5940bfe8886a3267bcbfc8bbd1d2c22a5940004ca166d686bcbfc8bbd1c7be2a5940aebdcf6182adbcbfc9bbd151bc2a5940a6f00b6092bbbcbfc7bbd1d3b22a5940c655e55eb6c4bcbfc8bbd1c0a72a5940b0bdd45d26cdbcbfc8bbd1f69e2a5940ce693f5b8ae1bcbfc8bbd197942a5940405e1c5826fabcbfc8bbd1708e2a5940844397549215bdbfc8bbd11c882a5940c22b52536a1fbdbfc7bbd1f5812a59406494c652a223bdbfc8bbd19e7e2a59402698dd53321bbdbfc7bbd11a7b2a5940e062335872f9bcbfc9bbd1fb7b2a594038ae1e5dc6d2bcbfc8bbd18d802a594063f55e6106b1bcbfc8bbd1a6852a594074120264ee9bbcbfbc63056e862a5940467b6dff8073bcbfba6305e7852a5940fb453f078533bcbfbb6305c28c2a59408627991109ddbbbfbb630508922a59405a1c301c5582bbbfbb6305ab942a5940d84438202d5fbbbfba6305b09e2a59405a539626ed26bbbfbc6305e2a82a59403c27132cb5f5babfbb630555ae2a5940bbf2ca2ff5d3babfbc630517b02a5940cfce3e3351b4babfbc630517b02a5940e39e49363198babfbb630574ad2a5940c3878d381983babfbc630509af2a5940d574d13c055bbabfbc63057fb12a5940914e1b413d32babfd83694d9b12a5940a28fe0104f13babfd83694dcae2a5940b8f210145ff4b9bfd936949ca32a5940ef4c27184bccb9bfd73694789a2a59408eb3a01bd7a9b9bfd8369454912a59404fde6f1eb78db9bfd836940a9f2a5940b19dce24074db9bfd736944aaa2a59407de3512b8709b9bfd93694d6b42a59408942522f57dfb8bfd83694e6c22a59401ab70d34b7acb8bfd8369406df2a59400aa1ae375785b8bfd836944a042b5940c13cbc39d76eb8bfd8369456252b59404a10853b275bb8bfd93694125a2b594091fe4a3d7747b8bfd8369432762b5940f57c8d3e6739b8bfd836946e942b5940f57c8d3e6739b8bfd836942eb62b5940100f3f3a3769b8bfd83694cace2b59403426613017d4b8bf59bc2e11cf2b5940002f1cfbd3eab8bf5abc2e39c52b59405f6d48f0535bb9bf5abc2e4ac32b594063e535ee6b70b9bf5abc2e6ab22b59403663a4e2bbe3b9bf5abc2e95a52b5940f1ce8cd99f3bbabf5bbc2e069e2b594048da0dd4a76fbabf59bc2e078e2b5940743ebdc28f0ebbbf5bbc2e59872b59403c8f89b91f60bbbf5abc2e32812b59402f3db5af33b5bbbf5abc2eec7b2b594088a311a753febbbfcd9fb8d2782b5940882772613a20bcbf, '-0.10422544', '100.67413855', 'geopark_lembah_harau.mp4', '2023-12-22 03:40:13', '2023-12-22 03:40:13'),
('A8', 'Air Terjun Sarasah Aie Luluih', 'Ordinary', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia,', 0, '00:00:00', '23:59:00', NULL, NULL, 'Air terjun Sarasah Bunta merupakan air terjun alami yang terbentuk akibat patahan ', 0xe6100000010300000001000000050000008b5023e1302b5940bec37b2030c0bbbf8b5023133b2b5940bec37b2030c0bbbf8b5023133b2b5940dcc5e924389abbbf8b5023d32f2b5940dcc5e924389abbbf8b5023e1302b5940bec37b2030c0bbbf, '-0.10811163', '100.67513731', '', '2023-12-22 11:41:50', '2023-12-22 11:41:50'),
('A9', 'Harau Sky Dream World', 'Ordinary', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia,', 30000, '09:00:00', '17:00:00', 'Harau Sky', '081212229832', 'Wisata Harau Sky Dream World menyuguhkan wahana waterpark, kemudian spot foto dream land, spot mini world di negeri air Venezia dan Swiss. Selain itu,  juga ada Lounge Sunset Wonderland Harau atau ruang santai untuk melihat keindahan sunset dengan view Lembah Harau.', 0xe610000001030000000100000010000000f99e2407a72a5940a40ac596dcb4babff99e24bba72a5940ffde1098e8a8babff99e240aa42a5940c4c1059b7c8dbabff99e241e9f2a5940f237c79e546ababffa9e249d982a5940983a739f0064babff89e24ef912a5940f850869f4c63babff99e24a98c2a594040b5139f8467babff99e24f58b2a59401104bb9d2c74babff99e248a8d2a59403c3e279cf082babffa9e245a902a5940d2e2309a3895babff99e24a0952a59401f8a5b99f49cbabffa9e24f7982a5940f568fa9878a0babffa9e24b99a2a5940c660fd979ca9babff99e243d9e2a5940b5608897d4adbabffa9e2448a22a59409b93d89628b4babff99e2407a72a5940a40ac596dcb4babf, '-0.10369996', '100.66563991', '', '2023-12-22 11:49:58', '2023-12-22 11:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `attraction_facility`
--

CREATE TABLE `attraction_facility` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attraction_facility`
--

INSERT INTO `attraction_facility` (`id`, `name`, `created_at`, `updated_at`) VALUES
('01', 'Toilet', '2023-11-11 19:08:52', '2023-11-11 19:08:52'),
('02', 'Area Parkir', '2023-11-11 19:09:06', '2023-11-11 19:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `attraction_facility_detail`
--

CREATE TABLE `attraction_facility_detail` (
  `attraction_id` varchar(2) NOT NULL,
  `attraction_facility_id` varchar(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attraction_facility_detail`
--

INSERT INTO `attraction_facility_detail` (`attraction_id`, `attraction_facility_id`, `created_at`, `updated_at`) VALUES
('A4', '01', '2023-12-22 11:38:25', '2023-12-22 11:38:25'),
('A4', '02', '2023-12-22 11:38:25', '2023-12-22 11:38:25'),
('A5', '01', '2023-12-22 11:31:35', '2023-12-22 11:31:35'),
('A5', '02', '2023-12-22 11:31:35', '2023-12-22 11:31:35'),
('A6', '01', '2023-12-22 11:23:38', '2023-12-22 11:23:38'),
('A8', '01', '2023-12-22 11:41:50', '2023-12-22 11:41:50'),
('A8', '02', '2023-12-22 11:41:50', '2023-12-22 11:41:50'),
('A9', '01', '2023-12-22 11:49:58', '2023-12-22 11:49:58'),
('A9', '02', '2023-12-22 11:49:58', '2023-12-22 11:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `attraction_gallery`
--

CREATE TABLE `attraction_gallery` (
  `id` varchar(3) NOT NULL,
  `attraction_id` varchar(2) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attraction_gallery`
--

INSERT INTO `attraction_gallery` (`id`, `attraction_id`, `url`, `created_at`, `updated_at`) VALUES
('001', 'A6', '1703290919_487ac6750f7ac69060e6.jpg', '2023-12-22 11:23:38', '2023-12-22 11:23:38'),
('002', 'A6', '1703290919_252bbe30d1f432ef6911.jpg', '2023-12-22 11:23:38', '2023-12-22 11:23:38'),
('003', 'A6', '1703290921_60ead7eea65f1220dc9a.jpg', '2023-12-22 11:23:38', '2023-12-22 11:23:38'),
('004', 'A6', '1703290921_f0b51fd81c616dae7b16.jpg', '2023-12-22 11:23:38', '2023-12-22 11:23:38'),
('005', 'A6', '1703290923_0616d46794597fe79674.png', '2023-12-22 11:23:38', '2023-12-22 11:23:38'),
('006', 'A5', '1703291422_28165a1c0ccee8eee94b.png', '2023-12-22 11:31:35', '2023-12-22 11:31:35'),
('007', 'A5', '1703291422_96c302f7ee30318e99c0.png', '2023-12-22 11:31:35', '2023-12-22 11:31:35'),
('008', 'A5', '1703291424_2868a9943adc8e8e1e63.jpg', '2023-12-22 11:31:35', '2023-12-22 11:31:35'),
('009', 'A4', '1703291851_03e10622d0cd52d9dbbd.jpg', '2023-12-22 11:38:25', '2023-12-22 11:38:25'),
('010', 'A4', '1703291851_3ef33912109b8a36e37f.jpg', '2023-12-22 11:38:25', '2023-12-22 11:38:25'),
('011', 'A8', '1703292106_86791bf8ef343c1a7d0d.jpg', '2023-12-22 11:41:50', '2023-12-22 11:41:50'),
('012', 'A8', '1703292105_974ec6621ecc9a90f693.jpg', '2023-12-22 11:41:50', '2023-12-22 11:41:50'),
('013', 'A8', '1703292108_8a477a82ec01556e2a5a.jpg', '2023-12-22 11:41:50', '2023-12-22 11:41:50'),
('014', 'A9', '1703292478_788373fb9f981fc9cc94.jpg', '2023-12-22 11:49:58', '2023-12-22 11:49:58'),
('015', 'A9', '1703292478_40175d1df4a49b5c3d50.jpg', '2023-12-22 11:49:58', '2023-12-22 11:49:58'),
('016', 'A7', 'A7-1.jpg', NULL, NULL),
('017', 'A7', 'A7-2.jpg', NULL, NULL),
('018', 'A7', 'A7-3.jpg', NULL, NULL),
('019', 'A7', 'A7-4.jpg', NULL, NULL),
('020', 'A7', 'A7-5.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attraction_ticket_price`
--

CREATE TABLE `attraction_ticket_price` (
  `id` varchar(2) NOT NULL,
  `attraction_id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `attraction_ticket_price`
--

INSERT INTO `attraction_ticket_price` (`id`, `attraction_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
('01', 'A6', 'Kampuang Sarosah', 5000, '2023-11-30 19:00:34', '2023-11-30 19:00:34'),
('02', 'A6', 'Asian Heritage', 20000, '2023-11-30 19:01:02', '2023-11-30 19:01:02'),
('03', 'A6', 'Kampung Eropa', 20000, '2023-11-30 19:01:24', '2023-11-30 19:01:24'),
('04', 'A6', 'Secret Garden', 15000, '2023-11-30 19:01:41', '2023-11-30 19:01:41'),
('05', 'A6', 'Paket Terusan', 40000, '2023-11-30 19:02:37', '2023-11-30 19:02:37'),
('06', 'A9', 'Tiket Masuk Pengunjung ', 35000, '2024-01-11 14:15:23', '2024-01-11 14:15:23'),
('07', 'A9', 'Tiket Masuk Anak Usia 2 Tahun ke Bawah', 0, '2024-01-11 14:17:11', '2024-01-11 14:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'user', 'Registered Visitor'),
(2, 'owner', 'Object Owner'),
(3, 'admin', 'Site Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 10),
(1, 11),
(2, 5),
(2, 6),
(2, 8),
(2, 9),
(2, 12),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'accowner1@email.com', 5, '2023-10-28 23:21:02', 1),
(2, '::1', 'accadmin1@email.com', 7, '2023-10-30 02:11:02', 1),
(3, '::1', 'accadmin1@email.com', 7, '2023-10-30 07:48:29', 1),
(4, '::1', 'accadmin1@email.com', 7, '2023-10-30 22:18:45', 1),
(5, '::1', 'accadmin1@email.com', 7, '2023-10-31 03:09:19', 1),
(6, '::1', 'accadmin1@email.com', 7, '2023-10-31 21:56:40', 1),
(7, '::1', 'accadmin1@email.com', 7, '2023-11-01 09:32:34', 1),
(8, '::1', 'accadmin1@email.com', 7, '2023-11-01 22:07:00', 1),
(9, '::1', 'accadmin1@email.com', 7, '2023-11-02 01:17:50', 1),
(10, '::1', 'accadmin1@email.com', 7, '2023-11-02 07:25:57', 1),
(11, '::1', 'accadmin1@email.com', 7, '2023-11-03 21:38:58', 1),
(12, '::1', 'accadmin1@email.com', 7, '2023-11-06 02:05:10', 1),
(13, '::1', 'accadmin1@email.com', 7, '2023-11-06 07:47:44', 1),
(14, '::1', 'accadmin1@email.com', 7, '2023-11-07 05:38:01', 1),
(15, '::1', 'accadmin1@email.com', 7, '2023-11-07 07:39:13', 1),
(16, '::1', 'accadmin1@email.com', 7, '2023-11-07 19:02:46', 1),
(17, '::1', 'accadmin1@email.com', 7, '2023-11-08 00:27:50', 1),
(18, '::1', 'accadmin1@email.com', 7, '2023-11-08 18:59:27', 1),
(19, '::1', 'accadmin1@email.com', 7, '2023-11-09 03:33:24', 1),
(20, '::1', 'accadmin1@email.com', 7, '2023-11-10 02:30:12', 1),
(21, '::1', 'accadmin1@email.com', 7, '2023-11-10 06:20:49', 1),
(22, '::1', 'accadmin1@email.com', 7, '2023-11-10 21:10:36', 1),
(23, '::1', 'accadmin1@email.com', 7, '2023-11-11 01:52:42', 1),
(24, '::1', 'accadmin1@email.com', 7, '2023-11-11 08:50:47', 1),
(25, '::1', 'accadmin1@email.com', 7, '2023-11-11 21:28:10', 1),
(26, '::1', 'accadmin1@email.com', 7, '2023-11-12 01:26:20', 1),
(27, '::1', 'accadmin1@email.com', 7, '2023-11-12 07:25:43', 1),
(28, '::1', 'accadmin1@email.com', 7, '2023-11-12 23:35:22', 1),
(29, '::1', 'accowner1@email.com', 5, '2023-11-13 00:05:58', 1),
(30, '::1', 'accadmin1@email.com', 7, '2023-11-13 00:11:59', 1),
(31, '::1', 'accadmin1@email.com', 7, '2023-11-14 02:33:23', 1),
(32, '::1', 'accadmin1@email.com', 7, '2023-11-14 07:40:24', 1),
(33, '::1', 'accadmin1@email.com', 7, '2023-11-14 22:00:47', 1),
(34, '::1', 'accadmin1@email.com', 7, '2023-11-15 02:16:40', 1),
(35, '::1', 'accadmin1@email.com', 7, '2023-11-15 21:36:33', 1),
(36, '::1', 'accadmin1@email.com', 7, '2023-11-16 02:10:23', 1),
(37, '::1', 'accowner1@email.com', 5, '2023-11-16 02:11:23', 1),
(38, '::1', 'accadmin1@email.com', 7, '2023-11-16 02:19:44', 1),
(39, '::1', 'accadmin1@email.com', 7, '2023-11-16 06:11:22', 1),
(40, '::1', 'accowner1@email.com', 5, '2023-11-16 07:29:18', 1),
(41, '::1', 'accadmin1@email.com', 7, '2023-11-16 07:37:45', 1),
(42, '::1', 'accowner1@email.com', 5, '2023-11-16 07:47:21', 1),
(43, '::1', 'accadmin1@email.com', 7, '2023-11-16 07:49:02', 1),
(44, '::1', 'accowner1@email.com', 5, '2023-11-16 08:03:44', 1),
(45, '::1', 'accadmin1@email.com', 7, '2023-11-16 08:09:38', 1),
(46, '::1', 'accadmin1@email.com', 7, '2023-11-16 08:48:55', 1),
(47, '::1', 'accadmin1@email.com', 7, '2023-11-16 21:18:52', 1),
(48, '::1', 'accadmin1@email.com', 7, '2023-11-17 02:05:09', 1),
(49, '::1', 'accadmin1@email.com', 7, '2023-11-19 18:42:49', 1),
(50, '::1', 'accadmin1@email.com', 7, '2023-11-20 06:09:42', 1),
(51, '::1', 'accadmin1@email.com', 7, '2023-11-26 02:31:49', 1),
(52, '::1', 'accadmin1', NULL, '2023-11-26 23:17:37', 0),
(53, '::1', 'accadmin1@email.com', 7, '2023-11-26 23:17:57', 1),
(54, '::1', 'accadmin1@email.com', 7, '2023-11-28 21:41:18', 1),
(55, '::1', 'accowner1@email.com', 5, '2023-11-28 21:47:07', 1),
(56, '::1', 'accadmin1@email.com', 7, '2023-12-01 01:56:48', 1),
(57, '::1', 'accadmin1@email.com', 7, '2023-12-02 03:36:44', 1),
(58, '::1', 'accadmin1@email.com', 7, '2023-12-02 19:17:36', 1),
(59, '::1', 'accadmin1', NULL, '2023-12-03 23:12:12', 0),
(60, '::1', 'accadmin1@email.com', 7, '2023-12-03 23:12:23', 1),
(61, '::1', 'accadmin1@email.com', 7, '2023-12-04 09:30:57', 1),
(62, '::1', 'accowner1@email.com', 5, '2023-12-04 09:33:01', 1),
(63, '::1', 'accowner1@email.com', 5, '2023-12-04 20:54:07', 1),
(64, '::1', 'untunggjamari@gmail.com', 8, '2023-12-04 22:35:45', 1),
(65, '::1', 'accowner1@email.com', 5, '2023-12-04 23:00:01', 1),
(66, '::1', 'accowner1@email.com', 5, '2023-12-05 01:23:06', 1),
(67, '::1', 'accadmin1@email.com', 7, '2023-12-05 01:32:07', 1),
(68, '::1', 'accowner1@email.com', 5, '2023-12-05 01:45:51', 1),
(69, '::1', 'accadmin1@email.com', 7, '2023-12-05 01:58:42', 1),
(70, '::1', 'accowner1@email.com', 5, '2023-12-05 02:13:42', 1),
(71, '::1', 'accowner1@email.com', 5, '2023-12-05 06:37:04', 1),
(72, '::1', 'accadmin1@email.com', 7, '2023-12-05 09:58:38', 1),
(73, '::1', 'accowner1@email.com', 5, '2023-12-05 10:00:21', 1),
(74, '::1', 'accowner1@email.com', 5, '2023-12-05 20:04:31', 1),
(75, '::1', 'accowner1@email.com', 5, '2023-12-06 02:52:09', 1),
(76, '::1', 'accadmin1@email.com', 7, '2023-12-06 07:37:50', 1),
(77, '::1', 'accowner1', NULL, '2023-12-06 21:29:22', 0),
(78, '::1', 'accadmin1@email.com', 7, '2023-12-06 21:29:32', 1),
(79, '::1', 'accadmin1@email.com', 7, '2023-12-07 00:22:23', 1),
(80, '::1', 'accowner1@email.com', 5, '2023-12-07 00:23:08', 1),
(81, '::1', 'accowner1@email.com', 5, '2023-12-07 05:15:33', 1),
(82, '::1', 'accowner1@email.com', 5, '2023-12-07 20:23:10', 1),
(83, '::1', 'accadmin1@email.com', 7, '2023-12-07 21:59:08', 1),
(84, '::1', 'accowner1@email.com', 5, '2023-12-07 22:00:40', 1),
(85, '::1', 'accowner1@email.com', 5, '2023-12-08 01:54:42', 1),
(86, '::1', 'accowner1@email.com', 5, '2023-12-08 06:29:12', 1),
(87, '::1', 'accowner1@email.com', 5, '2023-12-08 10:26:11', 1),
(88, '::1', 'andi@gmail.com', 9, '2023-12-08 10:29:33', 1),
(89, '::1', 'accadmin1@email.com', 7, '2023-12-08 10:43:28', 1),
(90, '::1', 'andi@gmail.com', 9, '2023-12-08 10:45:56', 1),
(91, '::1', 'andi@gmail.com', 9, '2023-12-08 18:17:49', 1),
(92, '::1', 'accadmin1@email.com', 7, '2023-12-08 18:36:15', 1),
(93, '::1', 'accowner1@email.com', 5, '2023-12-09 21:09:05', 1),
(94, '::1', 'andi@gmail.com', 9, '2023-12-09 21:09:58', 1),
(95, '::1', 'accowner1@email.com', 5, '2023-12-10 07:28:14', 1),
(96, '::1', 'andi@gmail.com', 9, '2023-12-10 07:29:24', 1),
(97, '::1', 'andi@gmail.com', 9, '2023-12-10 19:11:52', 1),
(98, '::1', 'accadmin1@email.com', 7, '2023-12-10 20:24:47', 1),
(99, '::1', 'andi@gmail.com', 9, '2023-12-10 20:27:49', 1),
(100, '::1', 'accadmin1@email.com', 7, '2023-12-10 20:53:15', 1),
(101, '::1', 'andi@gmail.com', 9, '2023-12-10 20:54:45', 1),
(102, '::1', 'andi@gmail.com', 9, '2023-12-11 01:31:35', 1),
(103, '::1', 'andi@gmail.com', 9, '2023-12-11 07:22:27', 1),
(104, '::1', 'andi@gmail.com', 9, '2023-12-11 20:25:21', 1),
(105, '::1', 'andi@gmail.com', 9, '2023-12-12 02:23:51', 1),
(106, '::1', 'andi@gmail.com', 9, '2023-12-12 10:39:12', 1),
(107, '::1', 'andi@gmail.com', 9, '2023-12-12 19:25:12', 1),
(108, '::1', 'accadmin1@email.com', 7, '2023-12-13 00:43:16', 1),
(109, '::1', 'andi@gmail.com', 9, '2023-12-13 02:56:54', 1),
(110, '::1', 'andi@gmail.com', 9, '2023-12-13 20:12:08', 1),
(111, '::1', 'untunggjamari@gmail.com', 8, '2023-12-14 01:18:56', 1),
(112, '::1', 'ari@gmail.com', 10, '2023-12-14 01:20:37', 1),
(113, '::1', 'andi@gmail.com', 9, '2023-12-14 06:36:05', 1),
(114, '::1', 'daffa@gmail.com', 11, '2023-12-14 20:28:47', 1),
(115, '::1', 'daffa@gmail.com', 11, '2023-12-15 00:40:44', 1),
(116, '::1', 'daffa@gmail.com', 11, '2023-12-15 20:32:42', 1),
(117, '::1', 'daffa@gmail.com', 11, '2023-12-16 06:56:43', 1),
(118, '::1', 'daffa@gmail.com', 11, '2023-12-16 20:41:47', 1),
(119, '::1', 'andi@gmail.com', 9, '2023-12-16 21:16:45', 1),
(120, '::1', 'daffa@gmail.com', 11, '2023-12-16 21:49:29', 1),
(121, '::1', 'accowner1@email.com', 5, '2023-12-16 22:51:25', 1),
(122, '::1', 'daffa@gmail.com', 11, '2023-12-16 22:53:17', 1),
(123, '::1', 'daffa@gmail.com', 11, '2023-12-17 06:32:15', 1),
(124, '::1', 'daffa@gmail.com', 11, '2023-12-17 19:14:31', 1),
(125, '::1', 'daffa@gmail.com', 11, '2023-12-18 00:09:18', 1),
(126, '::1', 'andi@gmail.com', 9, '2023-12-18 05:22:36', 1),
(127, '::1', 'daffa@gmail.com', 11, '2023-12-18 09:00:18', 1),
(128, '::1', 'andi@gmail.com', 9, '2023-12-18 10:24:30', 1),
(129, '::1', 'daffa@gmail.com', 11, '2023-12-18 10:30:40', 1),
(130, '::1', 'daffa@gmail.com', 11, '2023-12-18 21:22:47', 1),
(131, '::1', 'andi@gmail.com', 9, '2023-12-18 22:13:33', 1),
(132, '::1', 'daffa@gmail.com', 11, '2023-12-18 22:14:13', 1),
(133, '::1', 'andi@gmail.com', 9, '2023-12-18 22:17:17', 1),
(134, '::1', 'daffa@gmail.com', 11, '2023-12-18 23:58:12', 1),
(135, '::1', 'andi@gmail.com', 9, '2023-12-19 01:08:42', 1),
(136, '::1', 'daffa@gmail.com', 11, '2023-12-19 01:18:33', 1),
(137, '::1', 'andi@gmail.com', 9, '2023-12-19 01:22:31', 1),
(138, '::1', 'daffa@gmail.com', 11, '2023-12-19 02:06:02', 1),
(139, '::1', 'andi@gmail.com', 9, '2023-12-19 03:41:37', 1),
(140, '::1', 'daffa@gmail.com', 11, '2023-12-19 03:43:02', 1),
(141, '::1', 'daffa@gmail.com', 11, '2023-12-19 08:34:20', 1),
(142, '::1', 'daffa@gmail.com', 11, '2023-12-19 19:47:19', 1),
(143, '::1', 'andi@gmail.com', 9, '2023-12-19 21:34:48', 1),
(144, '::1', 'daffa@gmail.com', 11, '2023-12-19 21:38:45', 1),
(145, '::1', 'andi@gmail.com', 9, '2023-12-19 21:39:34', 1),
(146, '::1', 'daffa@gmail.com', 11, '2023-12-19 21:45:20', 1),
(147, '::1', 'andi@gmail.com', 9, '2023-12-19 21:54:23', 1),
(148, '::1', 'daffa@gmail.com', 11, '2023-12-19 22:22:06', 1),
(149, '::1', 'andi@gmail.com', 9, '2023-12-19 22:33:55', 1),
(150, '::1', 'daffa@gmail.com', 11, '2023-12-19 23:33:22', 1),
(151, '::1', 'andi@gmail.com', 9, '2023-12-20 00:04:16', 1),
(152, '::1', 'daffa@gmail.com', 11, '2023-12-20 00:53:34', 1),
(153, '::1', 'andi@gmail.com', 9, '2023-12-20 01:49:23', 1),
(154, '::1', 'daffa@gmail.com', 11, '2023-12-20 20:22:56', 1),
(155, '::1', 'daffa@gmail.com', 11, '2023-12-20 21:43:50', 1),
(156, '::1', 'andi@gmail.com', 9, '2023-12-21 01:48:03', 1),
(157, '::1', 'daffa@gmail.com', 11, '2023-12-21 02:02:28', 1),
(158, '::1', 'andi@gmail.com', 9, '2023-12-21 03:49:53', 1),
(159, '::1', 'daffa@gmail.com', 11, '2023-12-21 18:53:04', 1),
(160, '::1', 'andi@gmail.com', 9, '2023-12-21 21:32:56', 1),
(161, '::1', 'accadmin1@email.com', 7, '2023-12-22 10:31:28', 1),
(162, '::1', 'accadmin1', NULL, '2023-12-22 17:55:44', 0),
(163, '::1', 'accadmin1@email.com', 7, '2023-12-22 17:55:53', 1),
(164, '::1', 'andi@gmail.com', 9, '2023-12-22 19:05:21', 1),
(165, '::1', 'daffa@gmail.com', 11, '2023-12-22 19:10:57', 1),
(166, '::1', 'ade@gmail.com', 12, '2023-12-22 19:40:55', 1),
(167, '::1', 'ade@gmail.com', 12, '2023-12-22 19:42:41', 1),
(168, '::1', 'ade@gmail.com', 12, '2023-12-22 19:43:44', 1),
(169, '::1', 'andi@gmail.com', 9, '2023-12-22 19:44:16', 1),
(170, '::1', 'daffa@gmail.com', 11, '2023-12-22 21:12:53', 1),
(171, '::1', 'andi@gmail.com', 9, '2023-12-23 23:06:50', 1),
(172, '::1', 'daffa@gmail.com', 11, '2023-12-24 21:55:41', 1),
(173, '::1', 'daffa@gmail.com', 11, '2023-12-25 02:30:39', 1),
(174, '::1', 'daffa@gmail.com', 11, '2023-12-25 06:16:40', 1),
(175, '::1', 'daffa@gmail.com', 11, '2023-12-25 20:53:33', 1),
(176, '::1', 'daffa@gmail.com', 11, '2023-12-26 20:21:44', 1),
(177, '::1', 'andi@gmail.com', 9, '2023-12-26 22:19:27', 1),
(178, '::1', 'daffa@gmail.com', 11, '2023-12-27 07:45:26', 1),
(179, '::1', 'daffa@gmail.com', 11, '2023-12-27 19:31:02', 1),
(180, '::1', 'daffa@gmail.com', 11, '2023-12-28 03:57:52', 1),
(181, '::1', 'daffa@gmail.com', 11, '2023-12-28 06:43:41', 1),
(182, '::1', 'daffa@gmail.com', 11, '2023-12-28 19:13:24', 1),
(183, '::1', 'andi@gmail.com', 9, '2023-12-28 21:00:35', 1),
(184, '::1', 'daffa@gmail.com', 11, '2023-12-29 00:38:36', 1),
(185, '::1', 'andi@gmail.com', 9, '2023-12-29 18:28:32', 1),
(186, '::1', 'daffa@gmail.com', 11, '2023-12-29 18:29:14', 1),
(187, '::1', 'andi@gmail.com', 9, '2023-12-29 21:12:46', 1),
(188, '::1', 'andi@gmail.com', 9, '2023-12-30 21:08:15', 1),
(189, '::1', 'daffa', NULL, '2023-12-30 21:08:23', 0),
(190, '::1', 'daffa@gmail.com', 11, '2023-12-30 21:08:42', 1),
(191, '::1', 'daffa@gmail.com', 11, '2023-12-31 02:20:51', 1),
(192, '::1', 'daffa@gmail.com', 11, '2023-12-31 05:27:26', 1),
(193, '::1', 'daffa@gmail.com', 11, '2023-12-31 07:58:09', 1),
(194, '::1', 'andi@gmail.com', 9, '2023-12-31 08:20:53', 1),
(195, '::1', 'daffa@gmail.com', 11, '2023-12-31 18:52:02', 1),
(196, '::1', 'andi@gmail.com', 9, '2023-12-31 19:44:52', 1),
(197, '::1', 'daffa@gmail.com', 11, '2024-01-01 01:48:51', 1),
(198, '::1', 'andi@gmail.com', 9, '2024-01-01 02:41:16', 1),
(199, '::1', 'andi@gmail.com', 9, '2024-01-01 05:42:30', 1),
(200, '::1', 'daffa@gmail.com', 11, '2024-01-01 05:42:54', 1),
(201, '::1', 'daffa@gmail.com', 11, '2024-01-01 19:59:47', 1),
(202, '::1', 'andi@gmail.com', 9, '2024-01-01 22:45:28', 1),
(203, '::1', 'daffa@gmail.com', 11, '2024-01-02 02:36:39', 1),
(204, '::1', 'andi@gmail.com', 9, '2024-01-02 02:36:51', 1),
(205, '::1', 'andi@gmail.com', 9, '2024-01-02 06:06:48', 1),
(206, '::1', 'daffa@gmail.com', 11, '2024-01-02 06:07:01', 1),
(207, '::1', 'andi@gmail.com', 9, '2024-01-02 19:56:08', 1),
(208, '::1', 'daffa@gmail.com', 11, '2024-01-02 19:56:11', 1),
(209, '::1', 'daffa@gmail.com', 11, '2024-01-03 20:28:35', 1),
(210, '::1', 'andi@gmail.com', 9, '2024-01-03 20:28:51', 1),
(211, '::1', 'daffa@gmail.com', 11, '2024-01-03 23:58:50', 1),
(212, '::1', 'daffa@gmail.com', 11, '2024-01-04 20:44:13', 1),
(213, '::1', 'andi@gmail.com', 9, '2024-01-04 21:26:21', 1),
(214, '::1', 'andi@gmail.com', 9, '2024-01-05 01:45:59', 1),
(215, '::1', 'daffa@gmail.com', 11, '2024-01-05 01:46:25', 1),
(216, '::1', 'daffa@gmail.com', 11, '2024-01-05 07:24:44', 1),
(217, '::1', 'andi@gmail.com', 9, '2024-01-05 07:25:04', 1),
(218, '::1', 'andi@gmail.com', 9, '2024-01-05 20:17:59', 1),
(219, '::1', 'daffa@gmail.com', 11, '2024-01-05 20:18:27', 1),
(220, '::1', 'andi@gmail.com', 9, '2024-01-06 01:55:36', 1),
(221, '::1', 'andi@gmail.com', 9, '2024-01-06 21:03:07', 1),
(222, '::1', 'andi@gmail.com', 9, '2024-01-07 19:10:58', 1),
(223, '::1', 'daffa@gmail.com', 11, '2024-01-07 20:04:02', 1),
(224, '::1', 'daffa@gmail.com', 11, '2024-01-07 23:21:44', 1),
(225, '::1', 'andi@gmail.com', 9, '2024-01-07 23:21:50', 1),
(226, '::1', 'daffa@gmail.com', 11, '2024-01-08 01:43:46', 1),
(227, '::1', 'andi@gmail.com', 9, '2024-01-08 23:11:47', 1),
(228, '::1', 'daffa@gmail.com', 11, '2024-01-08 23:11:55', 1),
(229, '::1', 'andi@gmail.com', 9, '2024-01-09 02:10:52', 1),
(230, '::1', 'daffa@gmail.com', 11, '2024-01-09 21:31:27', 1),
(231, '::1', 'andi', NULL, '2024-01-09 21:32:07', 0),
(232, '::1', 'andi@gmail.com', 9, '2024-01-09 21:32:24', 1),
(233, '::1', 'andi@gmail.com', 9, '2024-01-10 02:56:25', 1),
(234, '::1', 'andi@gmail.com', 9, '2024-01-10 20:23:37', 1),
(235, '::1', 'daffa@gmail.com', 11, '2024-01-10 20:23:56', 1),
(236, '::1', 'andi@gmail.com', 9, '2024-01-10 22:55:55', 1),
(237, '::1', 'andi@gmail.com', 9, '2024-01-11 01:05:32', 1),
(238, '::1', 'daffa@gmail.com', 11, '2024-01-11 06:52:58', 1),
(239, '::1', 'andi@gmail.com', 9, '2024-01-11 06:53:04', 1),
(240, '::1', 'daffa@gmail.com', 11, '2024-01-11 21:10:29', 1),
(241, '::1', 'accadmin1@email.com', 7, '2024-01-11 21:10:48', 1),
(242, '::1', 'accadmin1', NULL, '2024-01-12 02:55:20', 0),
(243, '::1', 'accadmin1@email.com', 7, '2024-01-12 02:55:31', 1),
(244, '::1', 'daffa@gmail.com', 11, '2024-01-12 02:55:38', 1),
(245, '::1', 'daffa@gmail.com', 11, '2024-01-12 07:37:59', 1),
(246, '::1', 'andi', NULL, '2024-01-12 07:38:54', 0),
(247, '::1', 'daffa@gmail.com', 11, '2024-01-12 22:57:35', 1),
(248, '::1', 'daffa@gmail.com', 11, '2024-01-13 02:57:32', 1),
(249, '::1', 'accadmin1@email.com', 7, '2024-01-13 03:40:27', 1),
(250, '::1', 'daffa@gmail.com', 11, '2024-01-13 19:09:13', 1),
(251, '::1', 'andi', NULL, '2024-01-13 19:09:25', 0),
(252, '::1', 'andi@gmail.com', 9, '2024-01-13 19:09:32', 1),
(253, '::1', 'daffa@gmail.com', 11, '2024-01-14 21:32:50', 1),
(254, '::1', 'accadmin1@email.com', 7, '2024-01-14 22:09:50', 1),
(255, '::1', 'andi@gmail.com', 9, '2024-01-15 01:31:00', 1),
(256, '::1', 'daffa@gmail.com', 11, '2024-01-15 01:31:06', 1),
(257, '::1', 'daffa@gmail.com', 11, '2024-01-15 06:07:24', 1),
(258, '::1', 'andi@gmail.com', 9, '2024-01-15 06:57:13', 1),
(259, '::1', 'andi@gmail.com', 9, '2024-01-15 09:20:45', 1),
(260, '::1', 'daffa@gmail.com', 11, '2024-01-16 21:12:37', 1),
(261, '::1', 'andi@gmail.com', 9, '2024-01-16 21:12:44', 1),
(262, '::1', 'daffa@gmail.com', 11, '2024-01-16 23:22:36', 1),
(263, '::1', 'daffa@gmail.com', 11, '2024-01-17 01:43:37', 1),
(264, '::1', 'accadmin1@email.com', 7, '2024-01-17 02:32:20', 1),
(265, '::1', 'andi@gmail.com', 9, '2024-01-17 02:41:00', 1),
(266, '::1', 'andi@gmail.com', 9, '2024-01-17 07:30:10', 1),
(267, '::1', 'daffa@gmail.com', 11, '2024-01-17 07:30:30', 1),
(268, '::1', 'daffa@gmail.com', 11, '2024-01-17 19:58:14', 1),
(269, '::1', 'andi@gmail.com', 9, '2024-01-17 20:41:03', 1),
(270, '::1', 'daffa@gmail.com', 11, '2024-01-18 02:31:34', 1),
(271, '::1', 'andi@gmail.com', 9, '2024-01-18 02:31:41', 1),
(272, '::1', 'accadmin1@email.com', 7, '2024-01-18 02:46:18', 1),
(273, '::1', 'accadmin1@email.com', 7, '2024-01-18 20:45:42', 1),
(274, '::1', 'accadmin1@email.com', 7, '2024-01-19 21:39:30', 1),
(275, '::1', 'accadmin1@email.com', 7, '2024-01-20 01:57:21', 1),
(276, '::1', 'accadmin1@email.com', 7, '2024-01-20 05:55:15', 1),
(277, '::1', 'accadmin1@email.com', 7, '2024-01-20 08:35:27', 1),
(278, '::1', 'ade@gmail.com', 12, '2024-01-20 08:48:19', 1),
(279, '::1', 'daffa@gmail.com', 11, '2024-01-20 10:27:30', 1),
(280, '::1', 'ade@gmail.com', 12, '2024-01-20 10:29:48', 1),
(281, '::1', 'accadmin1@email.com', 7, '2024-01-20 19:32:40', 1),
(282, '::1', 'daffa@gmail.com', 11, '2024-01-20 19:40:47', 1),
(283, '::1', 'ade@gmail.com', 12, '2024-01-20 19:41:27', 1),
(284, '::1', 'ade@gmail.com', 12, '2024-01-22 02:57:29', 1),
(285, '::1', 'daffa@gmail.com', 11, '2024-01-22 02:57:34', 1),
(286, '::1', 'daffa@gmail.com', 11, '2024-01-22 21:00:26', 1),
(287, '::1', 'ade@gmail.com', 12, '2024-01-22 21:01:09', 1),
(288, '::1', 'ade@gmail.com', 12, '2024-01-23 02:42:04', 1),
(289, '::1', 'daffa@gmail.com', 11, '2024-01-23 02:42:09', 1),
(290, '::1', 'ade@gmail.com', 12, '2024-01-23 19:53:50', 1),
(291, '::1', 'daffa@gmail.com', 11, '2024-01-23 19:53:57', 1),
(292, '::1', 'daffa@gmail.com', 11, '2024-01-23 23:24:06', 1),
(293, '::1', 'ade@gmail.com', 12, '2024-01-23 23:24:19', 1),
(294, '::1', 'daffa@gmail.com', 11, '2024-01-24 06:44:10', 1),
(295, '::1', 'andi@gmail.com', 9, '2024-01-24 06:54:19', 1),
(296, '::1', 'daffa@gmail.com', 11, '2024-01-24 19:31:44', 1),
(297, '::1', 'andi@gmail.com', 9, '2024-01-24 19:31:53', 1),
(298, '::1', 'andi@gmail.com', 9, '2024-01-24 22:41:10', 1),
(299, '::1', 'daffa@gmail.com', 11, '2024-01-24 22:41:21', 1),
(300, '::1', 'daffa@gmail.com', 11, '2024-01-25 06:01:20', 1),
(301, '::1', 'andi@gmail.com', 9, '2024-01-25 07:04:00', 1),
(302, '::1', 'ade@gmail.com', 12, '2024-01-25 08:21:30', 1),
(303, '::1', 'daffa@gmail.com', 11, '2024-01-25 19:39:17', 1),
(304, '::1', 'andi@gmail.com', 9, '2024-01-25 19:39:23', 1),
(305, '::1', 'andi', NULL, '2024-01-26 02:20:14', 0),
(306, '::1', 'daffa@gmail.com', 11, '2024-01-26 02:20:21', 1),
(307, '::1', 'andi@gmail.com', 9, '2024-01-26 02:20:26', 1),
(308, '::1', 'daffa@gmail.com', 11, '2024-01-26 07:00:39', 1),
(309, '::1', 'daffa@gmail.com', 11, '2024-01-26 18:15:27', 1),
(310, '::1', 'andi@gmail.com', 9, '2024-01-26 18:33:36', 1),
(311, '::1', 'ade@gmail.com', 12, '2024-01-26 19:42:10', 1),
(312, '::1', 'andi@gmail.com', 9, '2024-01-26 20:16:11', 1),
(313, '::1', 'andi@gmail.com', 9, '2024-01-27 01:01:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` varchar(3) NOT NULL,
  `name` varchar(35) NOT NULL,
  `geom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `geom`) VALUES
('C01', 'Agam Regency', 'C01.geojson'),
('C02', 'Dharmasraya Regency', 'C02.geojson'),
('C03', 'Kepulauan Mentawai Regency', 'C03.geojson'),
('C04', 'Lima Puluh Kota Regency', 'C04.geojson'),
('C05', 'Padang Pariaman Regency', 'C05.geojson'),
('C06', 'Pasaman Regency', 'C06.geojson'),
('C07', 'Pasaman Barat Regency', 'C07.geojson'),
('C08', 'Pesisir Selatan Regency', 'C08.geojson'),
('C09', 'Sijunjung Regency', 'C09.geojson'),
('C10', 'Solok Regency', 'C10.geojson'),
('C11', 'Solok Selatan Regency', 'C11.geojson'),
('C12', 'Tanah Datar Regency', 'C12.geojson'),
('C13', 'Bukittinggi City', 'C13.geojson'),
('C14', 'Padang City', 'C14.geojson'),
('C15', 'Padang Panjang City', 'C15.geojson'),
('C16', 'Pariaman City', 'C16.geojson'),
('C17', 'Payakumbuh City', 'C17.geojson'),
('C18', 'Sawahlunto City', 'C18.geojson'),
('C19', 'Solok City', 'C19.geojson');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` varchar(3) NOT NULL,
  `name` varchar(25) NOT NULL,
  `geom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `geom`) VALUES
('N01', 'Singapura', 'N01.geojson'),
('N02', 'Malaysia', 'N02.geojson'),
('N03', 'Indonesia', 'N03.geojson');

-- --------------------------------------------------------

--
-- Table structure for table `culinary_place`
--

CREATE TABLE `culinary_place` (
  `id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `employee_name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `culinary_place`
--

INSERT INTO `culinary_place` (`id`, `name`, `address`, `employee_name`, `phone`, `open`, `close`, `geom`, `lat`, `lng`, `description`, `created_at`, `updated_at`) VALUES
('C1', 'Bintang Fajar', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Dewi', '081261884909', '12:00:00', '18:00:00', 0xe6100000010300000001000000050000007db664a6a52a5940be47b3767bc2babf7cb6446ba62a5940440584962cc4babf7cb604e7a62a59400446e196d5c0babf7cb64411a62a5940bc680d9740bfbabf7db664a6a52a5940be47b3767bc2babf, '-0.10451833', '100.66639869', 'Bintang Fajar adalah tempat kuliner yang menghadirkan keajaiban rasa melalui kreasinya, yaitu Rakik Kacang. Ini bukan sekadar camilan, melainkan sebuah seni kuliner yang meramu kacang pilihan menjadi gurih dan renyah dengan sentuhan rahasia yang memikat lidah.', '2023-12-02 01:13:25', '2023-12-03 16:13:39'),
('C10', 'Nasi Ampera & Sate Zal', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe610000001030000000100000006000000848dd8cb402b5940ae0049b0abdfbbbf848dd8cb402b59409a1be9afd5e2bbbf858d58c3412b59406e70eeafa8e2bbbf848d18b8412b5940985a3eb005e0bbbf848dd8cb402b594063ae3b301ce0bbbf848dd8cb402b5940ae0049b0abdfbbbf, '-0.10890583', '100.67585935', NULL, '2023-12-02 14:36:44', '2023-12-03 16:15:09'),
('C11', 'Sarapan Pagi M.Upik', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '07:00:00', '18:00:00', 0xe61000000103000000010000000500000098ad45d8412b594047997c5ff4debbbf98ad45d8412b59405ebefc5e2ce3bbbf97adc5a2422b59403413025fffe2bbbf97ad8597422b594047997c5ff4debbbf98ad45d8412b594047997c5ff4debbbf, '-0.10890295', '100.67591799', NULL, '2023-12-02 15:04:36', '2023-12-03 16:15:48'),
('C12', 'Warung Uni Nita', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe610000001030000000100000005000000d934ff0b442b5940a5d7d09a4fe8bbbfda347f30452b5940b8d9e09ac8e7bbbfda34bf68452b59402cc4f59984efbbbfd9343f44442b5940c26bf099b1efbbbfd934ff0b442b5940a5d7d09a4fe8bbbf, '-0.10906584', '100.67606983', NULL, '2023-12-02 15:06:30', '2023-12-03 16:16:40'),
('C13', 'Kini Cheese Tea Sarbun', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '14:00:00', '20:00:00', 0xe61000000103000000010000000500000069e2adbb472b5940084496d790dfbbbf68e22dd2472b5940f25e36d7bae2bbbf68e22de0482b59409d0841d760e2bbbf67e26dbe482b59404936b6d782debbbf69e2adbb472b5940084496d790dfbbbf, '-0.10889619', '100.67628811', NULL, '2023-12-02 15:08:34', '2023-12-03 16:17:36'),
('C14', 'Yorafa Food & Drink', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe61000000103000000010000000500000067c15490442b5940274639d3a8f5bbbf66c1d4e1452b59408e5649d321f5bbbf67c114ed452b594069c89dd2c1fabbbf67c114df442b5940d60c93d21bfbbbbf67c15490442b5940274639d3a8f5bbbf, '-0.10925477', '100.67610138', NULL, '2023-12-02 15:10:00', '2023-12-02 15:10:00'),
('C2', 'Warung Yuniar', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Yuniar', '082267248766', '10:00:00', '18:00:00', 0xe610000001030000000100000005000000b161818ea12a59404a3a82f9e2e9b9bfb161410aa22a5940320dbef999e7b9bfb16141fca02a5940d568fef923e5b9bfb261c18ba02a5940f6d7b4f9f3e7b9bfb161818ea12a59404a3a82f9e2e9b9bf, '-0.10118887', '100.66609454', NULL, '2023-12-02 01:29:02', '2023-12-02 01:29:02'),
('C3', 'Bhumi Harau Cafe & Resto', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '19:00:00', '23:00:00', 0xe610000001030000000100000005000000b5d63fc46b2a5940c989df167062bebfb6d67f916d2a5940de7f05176261bebfb6d69fda6d2a594016eb3a160267bebfb6d67ffc6b2a5940ce131896f967bebfb5d63fc46b2a5940c989df167062bebf, '-0.11872374', '100.66289125', NULL, '2023-12-02 12:33:23', '2023-12-02 13:14:54'),
('C4', 'Nasi Kapau Josi', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '21:00:00', 0xe61000000103000000010000000500000015f95d376b2a594030b78ee9ac46bebf15f91d676c2a59408bd8a7e9f845bebf15f93db06c2a5940e922e868554bbebf15f91d866b2a5940351abc68904cbebf15f95d376b2a594030b78ee9ac46bebf, '-0.11830548', '100.66283889', NULL, '2023-12-02 13:18:41', '2023-12-02 13:18:41'),
('C5', 'Leven Coffe & Eatery', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '14:00:00', '22:00:00', 0xe6100000010300000001000000050000003759b3a5a12a594009b92ecdc5d2babf3759f364a22a5940f2d8aecd33cebabf37593335a12a5940f29dfdcd63cbbabf3659738ca02a594020aa78cd22d0babf3759b3a5a12a594009b92ecdc5d2babf, '-0.10472231', '100.66610544', NULL, '2023-12-02 13:22:18', '2023-12-02 13:22:18'),
('C6', 'Kedai 4s', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe610000001030000000100000005000000c4ace737382b5940da31c6ae33e5bbbfc4aca767392b5940458acbae06e5bbbfc4aca767392b5940d62826af09e2bbbfc3ac6721382b5940d62826af09e2bbbfc4ace737382b5940da31c6ae33e5bbbf, '-0.10894195', '100.67533983', NULL, '2023-12-02 13:25:11', '2023-12-02 13:25:11'),
('C7', 'Kedai Nasi Keyla', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe6100000010300000001000000050000007b3079a33d2b5940315af9817cedbbbf7c30f9213f2b59406f630982f5ecbbbf7b30b9e93e2b594072f4ae8282e7bbbf7b30b9813d2b59405df29e8209e8bbbf7b3079a33d2b5940315af9817cedbbbf, '-0.10904691', '100.67567869', NULL, '2023-12-02 13:27:05', '2023-12-02 13:27:05'),
('C8', 'Warung Kawa Daun Sarasah Aie Luluih', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe610000001030000000100000005000000af50f425382b594056f4ed7a2dc0bbbfaf50b428392b59401ab9c37a95c1bbbfaf5034e5382b59403cea697a92c4bbbfaf50f4cb372b59401de68e7a57c3bbbfaf50f425382b594056f4ed7a2dc0bbbf, '-0.10843468', '100.67532213', NULL, '2023-12-02 13:30:53', '2023-12-02 13:30:53'),
('C9', 'Warung Iyef', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, '10:00:00', '18:00:00', 0xe610000001030000000100000006000000e14399013a2b59402e0da94318c6bbbfe14399013a2b5940984d644361c8bbbfe043d9ed3a2b5940af97694334c8bbbfe043d9ed3a2b594050fcb0c3d4c5bbbfe14399013a2b59402e0da94318c6bbbfe14399013a2b59402e0da94318c6bbbf, '-0.10850686', '100.67544358', NULL, '2023-12-02 14:32:48', '2023-12-02 14:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `culinary_place_gallery`
--

CREATE TABLE `culinary_place_gallery` (
  `id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `culinary_place_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `culinary_place_gallery`
--

INSERT INTO `culinary_place_gallery` (`id`, `culinary_place_id`, `url`, `created_at`, `updated_at`) VALUES
('004', 'C2', '1701527273_2ac29674267b033faefe.jpg', '2023-12-02 01:29:02', '2023-12-02 01:29:02'),
('005', 'C3', '1701569680_fcb631c61990d68b0674.jpg', '2023-12-02 13:14:54', '2023-12-02 13:14:54'),
('006', 'C4', '1701569918_b4222a4e266550b19db0.jpg', '2023-12-02 13:18:41', '2023-12-02 13:18:41'),
('007', 'C5', '1701570135_2977e5b4f3e9274016be.jpg', '2023-12-02 13:22:18', '2023-12-02 13:22:18'),
('008', 'C6', '1701570301_09491528d6872b3f951b.jpg', '2023-12-02 13:25:11', '2023-12-02 13:25:11'),
('009', 'C7', '1701570423_6dc9093df97d927507d4.jpg', '2023-12-02 13:27:05', '2023-12-02 13:27:05'),
('010', 'C8', '1701570650_414d5848bfb0a0dcfd44.jpg', '2023-12-02 13:30:53', '2023-12-02 13:30:53'),
('011', 'C9', '1701574385_ee8cda403ec5b6833f99.jpg', '2023-12-02 14:33:08', '2023-12-02 14:33:08'),
('012', 'C1', '1701666799_9f9ee593db81b9f53ac3.jpg', '2023-12-03 16:13:40', '2023-12-03 16:13:40'),
('013', 'C1', '1701666799_6bd38cdc6bf0148224ee.jpg', '2023-12-03 16:13:40', '2023-12-03 16:13:40'),
('014', 'C1', '1701666801_46a9c9664f0b483456ee.jpg', '2023-12-03 16:13:40', '2023-12-03 16:13:40'),
('015', 'C10', '1701666907_7ee42b2acd47b24b7cec.jpg', '2023-12-03 16:15:09', '2023-12-03 16:15:09'),
('016', 'C11', '1701666945_6a6f3a8bca29c6295d3b.jpg', '2023-12-03 16:15:48', '2023-12-03 16:15:48'),
('017', 'C12', '1701666998_e70d520908a38677d376.jpg', '2023-12-03 16:16:40', '2023-12-03 16:16:40'),
('018', 'C13', '1701667053_37a127370c02c3c872dd.jpg', '2023-12-03 16:17:36', '2023-12-03 16:17:36'),
('019', 'C13', '1701667053_089449a54563bfae8fd6.jpg', '2023-12-03 16:17:36', '2023-12-03 16:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `culinary_product`
--

CREATE TABLE `culinary_product` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `culinary_product`
--

INSERT INTO `culinary_product` (`id`, `name`, `created_at`, `updated_at`) VALUES
('01', 'Nasi Goreng', '2023-11-10 00:51:16', '2023-12-02 15:10:30'),
('02', 'Rakik Kacang', '2023-11-10 19:00:55', '2023-11-10 19:00:55'),
('03', 'Roti Bakar', '2023-11-11 19:01:31', '2023-11-11 19:01:31'),
('04', 'Cheese Tea', '2023-12-02 15:12:39', '2023-12-02 15:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `culinary_product_detail`
--

CREATE TABLE `culinary_product_detail` (
  `culinary_place_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `culinary_product_id` varchar(2) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `image_url` text,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `culinary_product_detail`
--

INSERT INTO `culinary_product_detail` (`culinary_place_id`, `culinary_product_id`, `price`, `image_url`, `description`, `created_at`, `updated_at`) VALUES
('C1', '02', 5000, '1701526983_f759718ae5bc232ec46e.jpg', NULL, '2023-12-02 01:23:06', '2023-12-02 01:23:06'),
('C13', '04', 20000, '1701577023_1e109e4304970c25e17b.jpg', NULL, '2023-12-02 15:17:05', '2023-12-02 15:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` varchar(3) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` text,
  `ticket_price` int DEFAULT '0',
  `event_organizer` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `ticket_price`, `event_organizer`, `phone`, `geom`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
('E01', 'Panjat Tebing', 'Event ini menyediakan ruang untuk edukasi dan promosi keamanan dalam beraktivitas panjat tebing. Terdapat workshop dan sesi diskusi yang melibatkan para ahli panjat tebing, bertujuan untuk meningkatkan pemahaman peserta tentang keselamatan dan teknik panjat tebing yang benar.', 100000, 'Komunitas Merah Putih', '082268090256', 0xe6100000010300000001000000050000002a5cb4b1b62a59403a5c92c6a615bdbf295cb4b7b02a5940bd73c0c22e33bdbf2a5cb40bb72a5940cce149c16e3ebdbf2a5cb49dbb2a594078fda9c3262cbdbf2a5cb4b1b62a59403a5c92c6a615bdbf, '-0.10116888', '100.66670607', '2023-12-12 18:35:07', '2024-01-20 12:36:29'),
('E02', 'Art and Culture Festival', 'Art and Culture Festival di Lembah Harau adalah sebuah perayaan yang memukau, merayakan kekayaan warisan seni dan budaya yang khas dari daerah ini. Terletak di tengah-tengah keindahan alam Lembah Harau, acara ini menggabungkan keunikan seni, musik, tarian, dan warisan budaya untuk menciptakan pengalaman yang tak terlupakan.', 0, 'Nagari Lembah Harau', '081261499095', 0xe610000001030000000100000005000000c3df818e672a5940979c44a4d5d9bebfc4df815e6a2a5940f00c31a45cdabebfc4df815e6a2a594001844ca383e0bebfc3df81bb672a594001844ca383e0bebfc3df818e672a5940979c44a4d5d9bebf, '-0.12056235', '100.66265643', '2024-01-19 19:22:26', '2024-01-19 19:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `event_date`
--

CREATE TABLE `event_date` (
  `event_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event_date`
--

INSERT INTO `event_date` (`event_id`, `date`) VALUES
('E01', '2023-12-14'),
('E01', '2023-12-20'),
('E01', '2024-01-16'),
('E01', '2024-01-18'),
('E02', '2024-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `event_gallery`
--

CREATE TABLE `event_gallery` (
  `id` varchar(3) NOT NULL,
  `event_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event_gallery`
--

INSERT INTO `event_gallery` (`id`, `event_id`, `url`, `created_at`, `updated_at`) VALUES
('003', 'E02', '1705738875_0f75bd549a1c8d8acb77.png', '2024-01-19 19:22:26', '2024-01-19 19:22:26'),
('004', 'E02', '1705738875_9d266515385ce5c34b57.jpg', '2024-01-19 19:22:26', '2024-01-19 19:22:26'),
('005', 'E02', '1705738877_1cab938a51f68b3393c1.jpg', '2024-01-19 19:22:26', '2024-01-19 19:22:26'),
('006', 'E01', '1705800986_e1d94afb23d6494570a4.jpg', '2024-01-20 12:36:29', '2024-01-20 12:36:29'),
('007', 'E01', '1705800980_7fd298bdc727c12f0770.jpg', '2024-01-20 12:36:29', '2024-01-20 12:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `homestay`
--

CREATE TABLE `homestay` (
  `id` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `owner` int UNSIGNED NOT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `description` text,
  `video_url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `homestay`
--

INSERT INTO `homestay` (`id`, `name`, `address`, `geom`, `lat`, `lng`, `owner`, `open`, `close`, `description`, `video_url`, `created_at`, `updated_at`) VALUES
('H03', 'Homestay Harau Syafiq', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe61000000103000000010000000900000050038a31b62a594076cf14a327dbbcbf51034a5bbd2a5940dc6fd69fa4f4bcbf50030a8ebb2a5940277ea59ef5fdbcbf50030a9cbc2a5940c4b0269ed301bdbf4f038aa4bb2a5940d64ab39d5705bdbf50030a97b22a5940ed4908a26ae3bcbf50034a67b12a5940b06cf5221fdcbcbf50038a31b62a594076cf14a327dbbcbf50038a31b62a594076cf14a327dbbcbf, '-0.11304090', '100.66744263', 9, '10:00:00', '17:00:00', 'Homestay Harau Syafiq adalah sebuah penginapan yang terletak di kawasan wisata LembahHarau, Sumatera Barat, Indonesia. Kami menawarkan pengalaman menginap yang hangat dan ramah, memadukan kenyamanan rumah dengan nuansa alam yang menakjubkan.', '1703394475_6edeecc9def51c4414aa.mp4', '2023-12-08 03:38:47', '2023-12-23 16:08:03'),
('H04', 'Homestay Aura', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe610000001030000000100000005000000fbdb06ae9d2a59401e608006f6e7babffcdb06ca9f2a5940eea9be05d1eebabffcdb0668982a5940209f3102cf0ebbbffcdb8662962a5940ae332c030506bbbffbdb06ae9d2a59401e608006f6e7babf, '-0.10539833', '100.66571576', 12, '10:00:00', '17:00:00', NULL, NULL, '2024-01-20 01:47:12', '2024-01-20 01:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_exclusive_activity`
--

CREATE TABLE `homestay_exclusive_activity` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `activity_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int DEFAULT NULL,
  `is_daily` varchar(1) DEFAULT NULL,
  `description` text NOT NULL,
  `image_url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_exclusive_activity`
--

INSERT INTO `homestay_exclusive_activity` (`homestay_id`, `activity_id`, `name`, `price`, `is_daily`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
('H03', '001', 'Budidaya Pakis Monyett', 10000, '0', 'Belajar cara menanam, merawat, dan mengembangkan tanaman yang memiliki distribusi alami terbatas di lembah harau yaitu Pakis Monyett', '1704618690_0113bd9fd1e452f962dc.jpg', '2023-12-09 20:14:25', '2024-01-06 20:11:32'),
('H03', '002', 'Sarapan', 25000, '1', 'Bisa pilih menu', '1703832246_dd935b23a1c668046c56.png', '2023-12-28 17:44:19', '2023-12-28 17:44:19'),
('H04', '001', 'Memetik Strawberry', 20000, '0', 'Memetik strawberry dan langsung menikmatinya', '1705766808_566a01a1c515fe087a30.jpg', '2024-01-20 03:06:51', '2024-01-20 03:06:51'),
('H04', '002', 'sqq', 11, '0', 'w2w2', '1705768612_c8708e6f3594876d640b.png', '2024-01-20 03:36:54', '2024-01-20 03:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_facility`
--

CREATE TABLE `homestay_facility` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `homestay_facility`
--

INSERT INTO `homestay_facility` (`id`, `name`, `created_at`, `updated_at`) VALUES
('01', 'Area Parkir', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('02', 'Taman', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('03', 'Spot Foto', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('04', 'Mushalla', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('05', 'Kantin', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('06', 'Gazebo', '2023-10-28 15:51:29', '2023-10-28 15:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_facility_detail`
--

CREATE TABLE `homestay_facility_detail` (
  `homestay_id` varchar(3) NOT NULL,
  `facility_id` varchar(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `homestay_facility_detail`
--

INSERT INTO `homestay_facility_detail` (`homestay_id`, `facility_id`, `created_at`, `updated_at`) VALUES
('H03', '01', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('H03', '02', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('H03', '03', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('H03', '04', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('H03', '05', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('H03', '06', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('H04', '01', '2024-01-20 01:47:12', '2024-01-20 01:47:12'),
('H04', '02', '2024-01-20 01:47:12', '2024-01-20 01:47:12'),
('H04', '03', '2024-01-20 01:47:12', '2024-01-20 01:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_gallery`
--

CREATE TABLE `homestay_gallery` (
  `id` varchar(3) NOT NULL,
  `homestay_id` varchar(3) NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `homestay_gallery`
--

INSERT INTO `homestay_gallery` (`id`, `homestay_id`, `url`, `created_at`, `updated_at`) VALUES
('001', 'H03', '1703394444_57af1e8966199903bbd9.jpg', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('002', 'H03', '1703394439_ebf63f34972b748dfe9c.jpg', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('003', 'H03', '1703394448_39626003dd7872013d03.jpg', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('004', 'H03', '1703394446_2240fc835d086ae6cda8.jpg', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('005', 'H03', '1703394446_fda824d91f729127a310.jpg', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('006', 'H03', '1703394448_5301556eb2acd110c5f4.jpg', '2023-12-23 16:08:03', '2023-12-23 16:08:03'),
('007', 'H04', '1705762026_c3db86bcaffe37232ace.jpg', '2024-01-20 01:47:12', '2024-01-20 01:47:12'),
('008', 'H04', '1705762028_032b1454efbf901b2879.jpg', '2024-01-20 01:47:12', '2024-01-20 01:47:12'),
('009', 'H04', '1705762027_295d60e523b68a8296ff.jpg', '2024-01-20 01:47:12', '2024-01-20 01:47:12'),
('010', 'H04', '1705762025_b2fe38eebc81d00d03fe.jpg', '2024-01-20 01:47:12', '2024-01-20 01:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_unit`
--

CREATE TABLE `homestay_unit` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit_type` varchar(2) NOT NULL,
  `unit_number` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int NOT NULL,
  `capacity` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_unit`
--

INSERT INTO `homestay_unit` (`homestay_id`, `unit_type`, `unit_number`, `name`, `price`, `capacity`, `description`, `created_at`, `updated_at`) VALUES
('H03', '1', '1', 'Kamar 1', 300000, 2, NULL, '2023-12-19 17:52:15', '2023-12-19 17:52:15'),
('H03', '1', '10', 'Kamar 10', 300000, 2, NULL, '2023-12-22 12:57:15', '2023-12-22 12:57:15'),
('H03', '1', '2', 'Kamar 2', 350000, 2, NULL, '2023-12-19 18:51:22', '2023-12-22 12:28:55'),
('H03', '1', '3', 'Kamar 3', 300000, 2, NULL, '2023-12-19 18:52:08', '2023-12-19 18:52:08'),
('H03', '1', '4', 'Kamar 4', 300000, 2, NULL, '2023-12-22 12:53:16', '2023-12-22 12:53:16'),
('H03', '1', '5', 'Kamar 5', 300000, 2, NULL, '2023-12-22 12:54:01', '2023-12-22 12:54:01'),
('H03', '1', '6', 'Kamar 6', 300000, 2, NULL, '2023-12-22 12:54:45', '2023-12-22 12:54:45'),
('H03', '1', '7', 'Kamar 7', 300000, 2, NULL, '2023-12-22 12:55:25', '2023-12-22 12:55:25'),
('H03', '1', '8', 'Kamar 8', 300000, 2, NULL, '2023-12-22 12:56:05', '2023-12-22 12:56:05'),
('H03', '1', '9', 'Kamar 9', 300000, 2, NULL, '2023-12-22 12:56:39', '2023-12-22 12:56:39'),
('H03', '2', '1', 'Rumah Barbie', 600000, 8, NULL, '2023-12-19 18:54:12', '2023-12-22 12:34:13'),
('H04', '1', '1', 'Kamar A', 350000, 2, NULL, '2024-01-20 01:51:12', '2024-01-20 01:52:26'),
('H04', '1', '10', 'Kamar I', 350000, 2, NULL, '2024-01-20 02:04:07', '2024-01-20 02:04:07'),
('H04', '1', '2', 'Kamar B', 350000, 2, NULL, '2024-01-20 01:53:05', '2024-01-20 01:53:05'),
('H04', '1', '3', 'Kamar C', 350000, 2, NULL, '2024-01-20 01:53:46', '2024-01-20 01:53:46'),
('H04', '1', '4', 'Kamar D', 350000, 2, NULL, '2024-01-20 01:54:23', '2024-01-20 01:54:23'),
('H04', '1', '5', 'Kamar E', 350000, 2, NULL, '2024-01-20 01:56:35', '2024-01-20 01:57:43'),
('H04', '1', '6', 'Kamar F', 350000, 2, NULL, '2024-01-20 02:01:37', '2024-01-20 02:01:37'),
('H04', '1', '7', 'Kamar G', 350000, 2, NULL, '2024-01-20 02:02:27', '2024-01-20 02:02:27'),
('H04', '1', '9', 'Kamar H', 350000, 2, NULL, '2024-01-20 02:03:22', '2024-01-20 02:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_unit_facility`
--

CREATE TABLE `homestay_unit_facility` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_unit_facility`
--

INSERT INTO `homestay_unit_facility` (`id`, `name`, `created_at`, `updated_at`) VALUES
('02', 'AC', '2023-12-06 14:34:36', '2023-12-06 14:34:36'),
('03', 'Kompor', '2023-12-06 14:34:47', '2023-12-08 03:45:08'),
('04', 'TV', '2023-12-06 14:47:37', '2023-12-06 14:47:37'),
('05', 'Lemari Es', '2023-12-07 15:00:07', '2023-12-08 03:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_unit_facility_detail`
--

CREATE TABLE `homestay_unit_facility_detail` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit_type` varchar(2) NOT NULL,
  `unit_number` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `facility_id` varchar(2) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_unit_facility_detail`
--

INSERT INTO `homestay_unit_facility_detail` (`homestay_id`, `unit_type`, `unit_number`, `facility_id`, `description`, `created_at`, `updated_at`) VALUES
('H03', '1', '1', '02', NULL, '2023-12-19 17:52:28', '2023-12-19 17:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_unit_gallery`
--

CREATE TABLE `homestay_unit_gallery` (
  `id` varchar(3) NOT NULL,
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit_type` varchar(2) NOT NULL,
  `unit_number` varchar(2) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_unit_gallery`
--

INSERT INTO `homestay_unit_gallery` (`id`, `homestay_id`, `unit_type`, `unit_number`, `url`, `created_at`, `updated_at`) VALUES
('004', 'H03', '1', '1', '1703055130_fe4fcb7396377a4e6f1f.jpg', '2023-12-19 17:52:15', '2023-12-19 17:52:15'),
('005', 'H03', '1', '1', '1703055131_09eb27afa364697e3fd4.jpg', '2023-12-19 17:52:15', '2023-12-19 17:52:15'),
('008', 'H03', '1', '3', '1703058725_ddee595fed99cd90f43f.jpg', '2023-12-19 18:52:08', '2023-12-19 18:52:08'),
('009', 'H03', '1', '3', '1703058726_f28ea83e980db7204209.jpg', '2023-12-19 18:52:08', '2023-12-19 18:52:08'),
('012', 'H03', '1', '2', '1703294933_4d611776b0c396c8cd83.jpg', '2023-12-22 12:28:55', '2023-12-22 12:28:55'),
('013', 'H03', '1', '2', '1703294933_c59fda3bcf5308cd49ae.jpg', '2023-12-22 12:28:55', '2023-12-22 12:28:55'),
('014', 'H03', '2', '1', '1703295242_406f7c8f5d82079497e9.jpg', '2023-12-22 12:34:13', '2023-12-22 12:34:13'),
('015', 'H03', '2', '1', '1703295242_62920ba5433e8645e75d.jpg', '2023-12-22 12:34:13', '2023-12-22 12:34:13'),
('016', 'H03', '2', '1', '1703295162_f7d9c4361c03b24cc410.jpg', '2023-12-22 12:34:13', '2023-12-22 12:34:13'),
('017', 'H03', '1', '4', '1703296393_3b11d73e3f397b898699.jpg', '2023-12-22 12:53:16', '2023-12-22 12:53:16'),
('018', 'H03', '1', '4', '1703296393_ed83c0c84d9946558aab.jpg', '2023-12-22 12:53:16', '2023-12-22 12:53:16'),
('019', 'H03', '1', '5', '1703296439_97235c60c1dce32cec5e.jpg', '2023-12-22 12:54:01', '2023-12-22 12:54:01'),
('020', 'H03', '1', '5', '1703296439_890a6dd66583df4ecb0a.jpg', '2023-12-22 12:54:01', '2023-12-22 12:54:01'),
('021', 'H03', '1', '6', '1703296483_3badf29633c02f719c91.jpg', '2023-12-22 12:54:45', '2023-12-22 12:54:45'),
('022', 'H03', '1', '6', '1703296483_c5262708e7a1c876b7d9.jpg', '2023-12-22 12:54:45', '2023-12-22 12:54:45'),
('023', 'H03', '1', '7', '1703296522_e9fe18f100811e49096a.jpg', '2023-12-22 12:55:25', '2023-12-22 12:55:25'),
('024', 'H03', '1', '7', '1703296523_f3cbb06f1e44a64cf4d1.jpg', '2023-12-22 12:55:25', '2023-12-22 12:55:25'),
('025', 'H03', '1', '8', '1703296562_dea52667438c3f54c34c.jpg', '2023-12-22 12:56:05', '2023-12-22 12:56:05'),
('026', 'H03', '1', '8', '1703296563_a19cb297f1a2c6fa91d7.jpg', '2023-12-22 12:56:05', '2023-12-22 12:56:05'),
('027', 'H03', '1', '9', '1703296597_a3411b481cc72dbf5c6d.jpg', '2023-12-22 12:56:39', '2023-12-22 12:56:39'),
('028', 'H03', '1', '9', '1703296597_63b9662ea64c0513f81c.jpg', '2023-12-22 12:56:39', '2023-12-22 12:56:39'),
('029', 'H03', '1', '10', '1703296632_d094092b53e08307b116.jpg', '2023-12-22 12:57:15', '2023-12-22 12:57:15'),
('030', 'H03', '1', '10', '1703296633_d009f04618064147843e.jpg', '2023-12-22 12:57:15', '2023-12-22 12:57:15'),
('031', 'H04', '1', '1', '1705762327_92fa1cea893161e92e8a.jpg', '2024-01-20 01:52:26', '2024-01-20 01:52:26'),
('032', 'H04', '1', '1', '1705762327_b699d047ecb06ae97f3d.jpg', '2024-01-20 01:52:26', '2024-01-20 01:52:26'),
('033', 'H04', '1', '2', '1705762380_b8fe8a8ce0d97950cf7b.jpg', '2024-01-20 01:53:05', '2024-01-20 01:53:05'),
('034', 'H04', '1', '2', '1705762382_60e9222ed3b895501676.jpg', '2024-01-20 01:53:05', '2024-01-20 01:53:05'),
('035', 'H04', '1', '3', '1705762423_5f1cc0fd556b871a01bc.jpg', '2024-01-20 01:53:46', '2024-01-20 01:53:46'),
('036', 'H04', '1', '4', '1705762459_c677a067555b559be71e.jpg', '2024-01-20 01:54:23', '2024-01-20 01:54:23'),
('037', 'H04', '1', '4', '1705762460_16debac7f2d5c05b81f7.jpg', '2024-01-20 01:54:23', '2024-01-20 01:54:23'),
('038', 'H04', '1', '5', '1705762660_28487c8871067acb59d8.jpg', '2024-01-20 01:57:43', '2024-01-20 01:57:43'),
('039', 'H04', '1', '5', '1705762649_4c87fc92072dcc5395cb.jpg', '2024-01-20 01:57:43', '2024-01-20 01:57:43'),
('040', 'H04', '1', '6', '1705762896_f19bc40a6511040d3fa2.jpg', '2024-01-20 02:01:37', '2024-01-20 02:01:37'),
('041', 'H04', '1', '7', '1705762945_12ec3f27d7b7da8a1fae.jpg', '2024-01-20 02:02:27', '2024-01-20 02:02:27'),
('042', 'H04', '1', '7', '1705762945_be0ffd8f712de4b0b146.jpg', '2024-01-20 02:02:27', '2024-01-20 02:02:27'),
('043', 'H04', '1', '9', '1705762999_4516df82bf29f2e295de.jpg', '2024-01-20 02:03:22', '2024-01-20 02:03:22'),
('044', 'H04', '1', '10', '1705763045_10c48d6e82e8d6062678.jpg', '2024-01-20 02:04:07', '2024-01-20 02:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_unit_type`
--

CREATE TABLE `homestay_unit_type` (
  `id` varchar(1) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_unit_type`
--

INSERT INTO `homestay_unit_type` (`id`, `name`) VALUES
('1', 'Room'),
('2', 'Villa'),
('3', 'Hall');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1698551483, 1),
(2, '2022-06-19-055207', 'App\\Database\\Migrations\\RumahGadang', 'default', 'App', 1698551483, 1),
(3, '2022-06-19-064224', 'App\\Database\\Migrations\\GalleryRumahGadang', 'default', 'App', 1698551483, 1),
(4, '2022-06-19-064314', 'App\\Database\\Migrations\\FacilityRumahGadang', 'default', 'App', 1698551483, 1),
(5, '2022-06-19-064319', 'App\\Database\\Migrations\\DetailFacilityRumahGadang', 'default', 'App', 1698551483, 1),
(6, '2022-06-19-064330', 'App\\Database\\Migrations\\Recommendation', 'default', 'App', 1698551483, 1),
(7, '2022-06-19-083121', 'App\\Database\\Migrations\\CulinaryPlace', 'default', 'App', 1698551483, 1),
(8, '2022-06-19-083221', 'App\\Database\\Migrations\\GalleryCulinaryPlace', 'default', 'App', 1698551483, 1),
(9, '2022-06-19-085845', 'App\\Database\\Migrations\\WorshipPlace', 'default', 'App', 1698551483, 1),
(10, '2022-06-19-085946', 'App\\Database\\Migrations\\GalleryWorshipPlace', 'default', 'App', 1698551483, 1),
(11, '2022-06-19-095014', 'App\\Database\\Migrations\\SouvenirPlace', 'default', 'App', 1698551483, 1),
(12, '2022-06-19-095107', 'App\\Database\\Migrations\\GallerySouvenirPlace', 'default', 'App', 1698551483, 1),
(13, '2022-06-19-100610', 'App\\Database\\Migrations\\Event', 'default', 'App', 1698551484, 1),
(14, '2022-06-19-100615', 'App\\Database\\Migrations\\CategoryEvent', 'default', 'App', 1698551484, 1),
(15, '2022-06-19-100620', 'App\\Database\\Migrations\\GalleryEvent', 'default', 'App', 1698551484, 1),
(16, '2022-06-19-101652', 'App\\Database\\Migrations\\Account', 'default', 'App', 1698551484, 1),
(17, '2022-06-19-102032', 'App\\Database\\Migrations\\Role', 'default', 'App', 1698551484, 1),
(18, '2022-06-19-102318', 'App\\Database\\Migrations\\VisitHistory', 'default', 'App', 1698551484, 1),
(19, '2022-06-19-102724', 'App\\Database\\Migrations\\Review', 'default', 'App', 1698551484, 1),
(20, '2022-06-19-103254', 'App\\Database\\Migrations\\Village', 'default', 'App', 1698551484, 1),
(21, '2023-10-20-082233', 'App\\Database\\Migrations\\Homestay', 'default', 'App', 1698551484, 1),
(22, '2023-10-21-091801', 'App\\Database\\Migrations\\HomestayFacility', 'default', 'App', 1698551484, 1),
(23, '2023-10-21-092038', 'App\\Database\\Migrations\\HomestayFacilityDetail', 'default', 'App', 1698551484, 1),
(24, '2023-10-21-162317', 'App\\Database\\Migrations\\HomestayGallery', 'default', 'App', 1698551484, 1),
(25, '2023-10-23-115736', 'App\\Database\\Migrations\\AttractionGallery', 'default', 'App', 1698551484, 1),
(26, '2023-10-23-115747', 'App\\Database\\Migrations\\AttractionFacility', 'default', 'App', 1698551484, 1),
(27, '2023-10-23-115757', 'App\\Database\\Migrations\\Attraction', 'default', 'App', 1698551484, 1),
(28, '2023-10-23-115805', 'App\\Database\\Migrations\\AttractionFacilityDetail', 'default', 'App', 1698551484, 1),
(29, '2023-10-23-122242', 'App\\Database\\Migrations\\ServiceProvider', 'default', 'App', 1698551484, 1),
(30, '2023-10-23-122247', 'App\\Database\\Migrations\\ServiceProviderGallery', 'default', 'App', 1698551484, 1),
(31, '2023-10-23-131657', 'App\\Database\\Migrations\\Service', 'default', 'App', 1698551484, 1),
(32, '2023-10-23-150249', 'App\\Database\\Migrations\\AttractionTicketPrice', 'default', 'App', 1698551485, 1),
(33, '2023-10-24-005102', 'App\\Database\\Migrations\\SouvenirPlaceGallery', 'default', 'App', 1698551485, 1),
(34, '2023-10-24-005130', 'App\\Database\\Migrations\\SouvenirProduct', 'default', 'App', 1698551485, 1),
(35, '2023-10-24-005139', 'App\\Database\\Migrations\\SouvenirProductDetail', 'default', 'App', 1698551485, 1),
(36, '2023-10-24-012740', 'App\\Database\\Migrations\\CulinaryPlaceGallery', 'default', 'App', 1698551485, 1),
(37, '2023-10-24-012757', 'App\\Database\\Migrations\\CulinaryProduct', 'default', 'App', 1698551485, 1),
(38, '2023-10-24-012810', 'App\\Database\\Migrations\\CulinaryProductDetail', 'default', 'App', 1698551485, 1),
(39, '2023-10-24-013452', 'App\\Database\\Migrations\\WorshipPlaceGallery', 'default', 'App', 1698551485, 1),
(40, '2023-10-24-013508', 'App\\Database\\Migrations\\WorshipPlaceCategory', 'default', 'App', 1698551485, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `package_id` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `min_capacity` int DEFAULT NULL,
  `brochure_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `price` int DEFAULT NULL,
  `is_custom` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`homestay_id`, `package_id`, `name`, `min_capacity`, `brochure_url`, `description`, `price`, `is_custom`, `created_at`, `updated_at`) VALUES
('H03', 'P001', 'paket P001', 6, '1704531619_d3bff0dde4320f74d083.jpg', 'tes paket P001', 120000, '0', '2023-12-11 16:34:49', '2023-12-11 16:34:49'),
('H03', 'P002', 'Paket 23', 5, '1702784296_049975bb12e011283229.jpg', 'qqqqqqqww', 110000, '0', '2023-12-16 14:25:59', '2023-12-16 14:25:59'),
('H03', 'P003', 'Paket Hemat', 4, '1702784352_2d5217d6befd2999b8fb.jpg', 'qaqaq', 100000, '0', '2023-12-16 14:39:15', '2023-12-16 14:39:15'),
('H03', 'P007', 'Custom by daffa at 2023-12-19 18:29', 0, NULL, NULL, 0, '1', '2023-12-19 11:29:28', '2023-12-19 11:29:28'),
('H03', 'P008', 'Custom by daffa at 2023-12-20 09:37', 0, NULL, NULL, 150000, '1', '2023-12-20 02:37:26', '2023-12-20 02:37:26'),
('H03', 'P009', 'Custom by daffa at 2023-12-20 12:36', 0, NULL, NULL, 200000, '1', '2023-12-20 05:36:47', '2023-12-20 05:36:47'),
('H03', 'P010', 'sqsq extend by daffa at 2023-12-21 14:19', 111, NULL, NULL, 200000, '1', '2023-12-21 07:19:13', '2023-12-21 07:19:13'),
('H03', 'P011', 'Paket Hemat extend by daffa at 2023-12-22 10:31', 4, NULL, NULL, 20000, '1', '2023-12-22 03:31:19', '2023-12-22 03:31:19'),
('H03', 'P012', 'Custom by daffa at 2023-12-30 09:54', 0, NULL, NULL, 0, '1', '2023-12-30 02:54:20', '2023-12-30 02:54:20'),
('H03', 'P013', 'Paket 23 extend by daffa at 2023-12-30 10:13', 5, NULL, NULL, 20000, '1', '2023-12-30 03:13:18', '2023-12-30 03:13:18'),
('H03', 'P014', 'Custom by daffa at 2024-01-09 15:30', 0, NULL, NULL, 0, '1', '2024-01-09 08:30:24', '2024-01-09 08:30:24'),
('H03', 'P015', 'Custom by daffa at 2024-01-09 15:36', 0, NULL, NULL, 0, '1', '2024-01-09 08:36:24', '2024-01-09 08:36:24'),
('H03', 'P016', 'Custom by daffa at 2024-01-09 15:53', 0, NULL, NULL, 0, '1', '2024-01-09 08:53:38', '2024-01-09 08:53:38'),
('H03', 'P017', 'Custom by daffa at 2024-01-10 12:09', 0, NULL, NULL, 0, '1', '2024-01-10 05:09:41', '2024-01-10 05:09:41'),
('H03', 'P018', 'Custom by daffa at 2024-01-11 11:56', 0, NULL, NULL, 0, '1', '2024-01-11 04:56:35', '2024-01-11 04:56:35'),
('H03', 'P019', 'Custom by daffa at 2024-01-11 14:16', 0, NULL, NULL, 0, '1', '2024-01-11 07:16:36', '2024-01-11 07:16:36'),
('H03', 'P020', 'Custom by daffa at 2024-01-13 12:03', 0, NULL, NULL, 0, '1', '2024-01-13 05:03:02', '2024-01-13 05:03:02'),
('H03', 'P021', 'Custom by daffa at 2024-01-15 10:43', 0, NULL, NULL, 440000, '1', '2024-01-15 03:43:23', '2024-01-15 03:43:23'),
('H03', 'P022', 'Jelajah Lembah Harau', 10, '1705470660_614374c3a2a9e25389bf.png', NULL, 900000, '0', '2024-01-16 14:17:19', '2024-01-16 14:17:19'),
('H03', 'P023', 'Custom by daffa at 2024-01-17 14:45', 0, NULL, NULL, 0, '1', '2024-01-17 07:45:09', '2024-01-17 07:45:09'),
('H03', 'P024', 'Jelajah Lembah Harau extend by daffa at 2024-01-17 14:53', 10, NULL, NULL, 0, '1', '2024-01-17 07:53:30', '2024-01-17 07:53:30'),
('H03', 'P025', 'Jelajah Lembah Harau extend by daffa at 2024-01-17 14:57', 10, NULL, NULL, 0, '1', '2024-01-17 07:57:06', '2024-01-17 07:57:06'),
('H03', 'P026', 'Jelajah Lembah Harau extend by daffa at 2024-01-17 15:24', 10, NULL, NULL, 1740000, '1', '2024-01-17 08:24:43', '2024-01-17 08:24:43'),
('H03', 'P027', 'Jelajah Lembah Harau extend by daffa at 2024-01-17 20:33', 10, NULL, NULL, 1000000, '1', '2024-01-17 13:33:20', '2024-01-17 13:33:20'),
('H03', 'P028', 'Custom by daffa at 2024-01-17 23:40', 0, NULL, NULL, 360000, '1', '2024-01-17 16:40:05', '2024-01-17 16:40:05'),
('H03', 'P029', 'Custom by daffa at 2024-01-24 19:49', 0, NULL, NULL, 280000, '1', '2024-01-24 12:49:38', '2024-01-24 12:49:38'),
('H03', 'P030', 'Custom by daffa at 2024-01-27 09:22', 0, NULL, NULL, 380000, '1', '2024-01-27 02:22:58', '2024-01-27 02:22:58'),
('H04', 'P001', 'Explore Lembah Harau', 5, '1705764071_80912c2a2ea68df98b19.jpg', 'Nikmati keindahan alam yang memukau dan petualangan tak terlupakan dengan Paket Wisata Explore Lembah Harau. ', 150000, '0', '2024-01-20 02:14:47', '2024-01-20 02:14:47'),
('H04', 'P002', 'Custom by daffa at 2024-01-23 11:02', 0, NULL, NULL, 260000, '1', '2024-01-23 04:02:31', '2024-01-23 04:02:31'),
('H04', 'P003', 'Explore Lembah Harau extend by daffa at 2024-01-23 15:45', 5, NULL, NULL, 450000, '1', '2024-01-23 08:45:21', '2024-01-23 08:45:21'),
('H04', 'P004', 'Explore Lembah Harau extend by daffa at 2024-01-24 13:05', 5, NULL, NULL, 300000, '1', '2024-01-24 06:05:29', '2024-01-24 06:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `package_day`
--

CREATE TABLE `package_day` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `package_id` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day` char(1) NOT NULL,
  `description` text,
  `is_base_for_extend` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `package_day`
--

INSERT INTO `package_day` (`homestay_id`, `package_id`, `day`, `description`, `is_base_for_extend`) VALUES
('H03', 'P001', '1', 'ssqsq', '0'),
('H03', 'P001', '2', NULL, '0'),
('H03', 'P002', '1', NULL, '0'),
('H03', 'P002', '2', NULL, '0'),
('H03', 'P002', '3', NULL, '0'),
('H03', 'P003', '1', 'a', '0'),
('H03', 'P007', '1', NULL, '0'),
('H03', 'P008', '1', NULL, '0'),
('H03', 'P008', '2', NULL, '0'),
('H03', 'P009', '1', NULL, '0'),
('H03', 'P010', '1', 'ssqsq', '0'),
('H03', 'P010', '2', NULL, '0'),
('H03', 'P011', '1', 'a', '0'),
('H03', 'P013', '1', NULL, '0'),
('H03', 'P013', '2', NULL, '0'),
('H03', 'P018', '1', 'tes day1', '0'),
('H03', 'P019', '1', NULL, '0'),
('H03', 'P020', '1', NULL, '0'),
('H03', 'P020', '2', NULL, '0'),
('H03', 'P021', '1', NULL, '0'),
('H03', 'P022', '1', NULL, '0'),
('H03', 'P024', '1', NULL, '0'),
('H03', 'P025', '1', NULL, '1'),
('H03', 'P025', '2', NULL, '0'),
('H03', 'P026', '1', NULL, '1'),
('H03', 'P026', '2', NULL, '0'),
('H03', 'P027', '1', NULL, '1'),
('H03', 'P027', '2', NULL, '0'),
('H03', 'P028', '1', NULL, '0'),
('H03', 'P028', '2', NULL, '0'),
('H03', 'P029', '1', NULL, '0'),
('H03', 'P029', '2', NULL, '0'),
('H03', 'P030', '1', NULL, '0'),
('H03', 'P030', '2', NULL, '0'),
('H04', 'P001', '1', 'Menikmati keindahan alam Lembah Harau', '0'),
('H04', 'P002', '1', NULL, '0'),
('H04', 'P003', '1', 'Menikmati keindahan alam Lembah Harau', '1'),
('H04', 'P004', '1', 'Menikmati keindahan alam Lembah Harau', '1'),
('H04', 'P004', '2', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `package_detail`
--

CREATE TABLE `package_detail` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `package_id` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `day` char(1) NOT NULL,
  `activity` char(1) NOT NULL,
  `activity_type` char(2) NOT NULL,
  `id_object` varchar(5) NOT NULL,
  `description` text NOT NULL,
  `is_base_for_extend` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `package_detail`
--

INSERT INTO `package_detail` (`homestay_id`, `package_id`, `day`, `activity`, `activity_type`, `id_object`, `description`, `is_base_for_extend`) VALUES
('H03', 'P001', '1', '1', 'A', 'A7', '', '0'),
('H03', 'P001', '1', '2', 'C', 'C14', '11', '0'),
('H03', 'P001', '1', '3', 'C', 'C3', 'qq', '0'),
('H03', 'P001', '1', '4', 'V', 'V2', '', '0'),
('H03', 'P001', '2', '1', 'C', 'C1', '', '0'),
('H03', 'P001', '2', '2', 'C', 'C14', '', '0'),
('H03', 'P002', '1', '1', 'A', 'A6', '', '0'),
('H03', 'P002', '2', '1', 'C', 'C7', '', '0'),
('H03', 'P002', '3', '1', 'C', 'C8', '', '0'),
('H03', 'P003', '1', '1', 'A', 'A4', '', '0'),
('H03', 'P003', '1', '2', 'C', 'C7', '', '0'),
('H03', 'P008', '1', '1', 'C', 'C3', '', '0'),
('H03', 'P009', '1', '1', 'A', 'A5', '', '0'),
('H03', 'P010', '1', '2', 'C', 'C14', '11', '0'),
('H03', 'P010', '1', '3', 'C', 'C3', 'qq', '0'),
('H03', 'P010', '1', '4', 'V', 'V2', '', '0'),
('H03', 'P010', '2', '1', 'C', 'C1', '', '0'),
('H03', 'P010', '2', '2', 'C', 'C14', '', '0'),
('H03', 'P011', '1', '1', 'A', 'A4', '', '0'),
('H03', 'P013', '1', '1', 'A', 'A6', '', '0'),
('H03', 'P013', '2', '1', 'C', 'C7', '', '0'),
('H03', 'P013', '2', '2', 'A', 'A4', '', '0'),
('H03', 'P018', '1', '1', 'A', 'A8', 'tes', '0'),
('H03', 'P018', '1', '2', 'A', 'A4', '', '0'),
('H03', 'P020', '1', '1', 'A', 'A8', '', '0'),
('H03', 'P021', '1', '1', 'A', 'A9', '', '0'),
('H03', 'P021', '1', '2', 'E', 'E01', '', '0'),
('H03', 'P021', '1', '3', 'C', 'C6', '', '0'),
('H03', 'P021', '1', '4', 'W', 'W1', '', '0'),
('H03', 'P021', '1', '5', 'S', 'S1', '', '0'),
('H03', 'P021', '1', '6', 'A', 'A6', '', '0'),
('H03', 'P021', '1', '7', 'A', 'A5', '', '0'),
('H03', 'P021', '1', '8', 'A', 'A7', '', '0'),
('H03', 'P021', '1', '9', 'C', 'C11', '', '0'),
('H03', 'P022', '1', '1', 'A', 'A9', '', '0'),
('H03', 'P022', '1', '2', 'A', 'A6', '', '0'),
('H03', 'P024', '1', '1', 'A', 'A9', '', '0'),
('H03', 'P024', '1', '2', 'A', 'A6', '', '0'),
('H03', 'P025', '1', '1', 'A', 'A9', '', '1'),
('H03', 'P025', '1', '2', 'A', 'A6', '', '1'),
('H03', 'P025', '1', '3', 'A', 'A8', '', '0'),
('H03', 'P026', '1', '1', 'A', 'A9', '', '1'),
('H03', 'P026', '1', '2', 'A', 'A6', '', '1'),
('H03', 'P026', '2', '1', 'A', 'A6', '', '0'),
('H03', 'P026', '2', '2', 'E', 'E01', '', '0'),
('H03', 'P027', '1', '1', 'A', 'A9', '', '1'),
('H03', 'P027', '1', '2', 'A', 'A6', '', '1'),
('H03', 'P028', '1', '1', 'A', 'A9', '', '0'),
('H03', 'P028', '2', '1', 'A', 'A6', '', '0'),
('H03', 'P029', '1', '1', 'A', 'A9', '', '0'),
('H03', 'P029', '1', '2', 'C', 'C1', '', '0'),
('H03', 'P029', '2', '1', 'A', 'A6', '', '0'),
('H03', 'P030', '1', '1', 'A', 'A9', '', '0'),
('H03', 'P030', '2', '1', 'A', 'A6', '', '0'),
('H04', 'P001', '1', '1', 'A', 'A7', 'Melihat keindahan tebing batu yang menjadi icon Lembah Harau', '0'),
('H04', 'P001', '1', '2', 'A', 'A6', 'Berfoto ria dengan latar belakang berupa miniatur dari berbagai bangunan ikonin dari berbagai dunia', '0'),
('H04', 'P001', '1', '3', 'A', 'A4', 'Menikmati keindahan air terjun serta bermain air', '0'),
('H04', 'P002', '1', '1', 'A', 'A9', '', '0'),
('H04', 'P002', '1', '2', 'C', 'C4', '', '0'),
('H04', 'P003', '1', '1', 'A', 'A7', 'Melihat keindahan tebing batu yang menjadi icon Lembah Harau', '1'),
('H04', 'P003', '1', '2', 'A', 'A6', 'Berfoto ria dengan latar belakang berupa miniatur dari berbagai bangunan ikonin dari berbagai dunia', '1'),
('H04', 'P003', '1', '3', 'A', 'A4', 'Menikmati keindahan air terjun serta bermain air', '1'),
('H04', 'P004', '1', '1', 'A', 'A7', 'Melihat keindahan tebing batu yang menjadi icon Lembah Harau', '1'),
('H04', 'P004', '1', '2', 'A', 'A6', 'Berfoto ria dengan latar belakang berupa miniatur dari berbagai bangunan ikonin dari berbagai dunia', '1'),
('H04', 'P004', '1', '3', 'A', 'A4', 'Menikmati keindahan air terjun serta bermain air', '1'),
('H04', 'P004', '2', '1', 'C', 'C1', '', '0'),
('H04', 'P004', '2', '2', 'A', 'A9', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `package_service`
--

CREATE TABLE `package_service` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int NOT NULL,
  `category` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `package_service`
--

INSERT INTO `package_service` (`id`, `name`, `price`, `category`) VALUES
('1', 'Guide', 100000, '0'),
('2', 'Welcome Drink', 10000, '1'),
('3', 'Documentation', 10000, '1'),
('4', 'Snack', 10000, '1'),
('5', 'Transportation Mini MPV', 300000, '0'),
('6', 'Sound System', 200000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `package_service_detail`
--

CREATE TABLE `package_service_detail` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `package_id` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `package_service_id` varchar(2) NOT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_base_for_extend` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `package_service_detail`
--

INSERT INTO `package_service_detail` (`homestay_id`, `package_id`, `package_service_id`, `status`, `is_base_for_extend`) VALUES
('H03', 'P001', '3', '1', '0'),
('H03', 'P001', '6', '1', '0'),
('H03', 'P003', '3', '1', '0'),
('H03', 'P021', '1', '1', '0'),
('H03', 'P021', '2', '1', '0'),
('H03', 'P022', '1', '1', '0'),
('H03', 'P022', '3', '1', '0'),
('H03', 'P022', '4', '1', '0'),
('H03', 'P022', '5', '0', '0'),
('H03', 'P022', '6', '0', '0'),
('H03', 'P024', '1', '1', '0'),
('H03', 'P024', '3', '1', '0'),
('H03', 'P024', '4', '1', '0'),
('H03', 'P024', '5', '0', '0'),
('H03', 'P024', '6', '0', '0'),
('H03', 'P025', '1', '1', '1'),
('H03', 'P025', '3', '1', '1'),
('H03', 'P025', '4', '1', '1'),
('H03', 'P026', '1', '1', '1'),
('H03', 'P026', '2', '1', '0'),
('H03', 'P026', '3', '1', '1'),
('H03', 'P026', '4', '1', '1'),
('H03', 'P027', '1', '1', '1'),
('H03', 'P027', '2', '1', '0'),
('H03', 'P027', '3', '1', '1'),
('H03', 'P027', '4', '1', '1'),
('H03', 'P028', '2', '1', '0'),
('H03', 'P028', '3', '1', '0'),
('H03', 'P028', '4', '1', '0'),
('H03', 'P029', '3', '1', '0'),
('H03', 'P030', '1', '1', '0'),
('H03', 'P030', '2', '1', '0'),
('H04', 'P001', '1', '1', '0'),
('H04', 'P001', '3', '1', '0'),
('H04', 'P001', '5', '0', '0'),
('H04', 'P002', '1', '1', '0'),
('H04', 'P002', '3', '1', '0'),
('H04', 'P003', '1', '1', '1'),
('H04', 'P003', '3', '1', '1'),
('H04', 'P003', '5', '1', '0'),
('H04', 'P004', '1', '1', '1'),
('H04', 'P004', '3', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `geom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `geom`) VALUES
('P01', 'Aceh', 'P01.geojson'),
('P02', 'Sumatera Utara', 'P02.geojson'),
('P03', 'Sumatera Barat', 'P03.geojson'),
('P04', 'Riau', 'P04.geojson'),
('P05', 'Jambi', 'P05.geojson'),
('P06', 'Sumatera Selatan', 'P06.geojson'),
('P07', 'Bengkulu', 'P07.geojson'),
('P08', 'Lampung', 'P08.geojson'),
('P09', 'Kepulauan Riau', 'P09.geojson'),
('P10', 'Bangka Belitung', 'P10.geojson');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `id` varchar(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1', 'Highly Recommended', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('2', 'Recommended', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('3', 'Less Recommended', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('4', 'Not Recommended', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('5', 'Maintenance', '2023-10-28 15:51:29', '2023-10-28 15:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` varchar(4) NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `request_date` datetime NOT NULL,
  `check_in` datetime NOT NULL,
  `total_people` int DEFAULT NULL,
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `package_id` varchar(4) DEFAULT NULL,
  `review` text,
  `rating` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `cust_package_price_confirmed_at` timestamp NULL DEFAULT NULL,
  `deposit` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `reservation_finish_at` timestamp NULL DEFAULT NULL,
  `is_rejected` varchar(1) DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `feedback` text,
  `deposit_at` timestamp NULL DEFAULT NULL,
  `deposit_proof` text,
  `is_deposit_proof_correct` varchar(1) DEFAULT NULL,
  `deposit_confirmed_at` timestamp NULL DEFAULT NULL,
  `canceled_at` timestamp NULL DEFAULT NULL,
  `cancelation_reason` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_refund` char(1) DEFAULT NULL,
  `refund_paid_at` timestamp NULL DEFAULT NULL,
  `refund_proof` text,
  `is_refund_proof_correct` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refund_paid_confirmed_at` timestamp NULL DEFAULT NULL,
  `full_paid_at` timestamp NULL DEFAULT NULL,
  `full_paid_proof` text,
  `is_full_paid_proof_correct` varchar(1) DEFAULT NULL,
  `full_paid_confirmed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `customer_id`, `request_date`, `check_in`, `total_people`, `homestay_id`, `package_id`, `review`, `rating`, `total_price`, `cust_package_price_confirmed_at`, `deposit`, `status`, `reservation_finish_at`, `is_rejected`, `confirmed_at`, `feedback`, `deposit_at`, `deposit_proof`, `is_deposit_proof_correct`, `deposit_confirmed_at`, `canceled_at`, `cancelation_reason`, `is_refund`, `refund_paid_at`, `refund_proof`, `is_refund_proof_correct`, `refund_paid_confirmed_at`, `full_paid_at`, `full_paid_proof`, `is_full_paid_proof_correct`, `full_paid_confirmed_at`) VALUES
('R001', 11, '2024-01-05 15:11:56', '2024-01-08 12:00:00', 2, '', NULL, 'Homestay bagus', 5, 1300000, NULL, 260000, 1, '2024-01-05 08:12:13', NULL, '2024-01-05 08:12:39', NULL, '2024-01-05 08:13:10', '1704442388_65be0b4a7f352ef9c4bd.jpg', NULL, '2024-01-05 08:13:32', NULL, NULL, NULL, NULL, NULL, '', NULL, '2024-01-05 08:13:59', '1704442436_1470cb9f3077a92cd9d9.jpg', NULL, '2024-01-05 08:14:11'),
('R002', 11, '2024-01-05 15:15:42', '2024-01-08 12:00:00', 2, '', NULL, NULL, NULL, 600000, NULL, 120000, 1, '2024-01-05 08:15:52', NULL, '2024-01-05 08:16:17', NULL, '2024-01-05 08:16:44', '1704442602_74395cfcc053a29f2ef2.jpg', NULL, '2024-01-05 08:17:13', '2024-01-05 08:17:00', '1', '1', '2024-01-05 08:18:05', '1704442682_0839d71e141bc037eae9.jpg', '', '2024-01-05 08:18:26', NULL, NULL, NULL, NULL),
('R003', 11, '2024-01-05 15:25:58', '2024-01-06 12:00:00', 4, '', NULL, NULL, NULL, 1200000, NULL, 240000, 1, '2024-01-05 08:26:09', NULL, '2024-01-05 08:26:30', NULL, '2024-01-05 08:26:49', '1704443207_55a0a739328af8b13e19.jpg', NULL, '2024-01-05 08:26:57', '2024-01-05 08:30:00', '1', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R004', 11, '2024-01-05 15:31:35', '2024-01-07 12:00:00', 2, '', NULL, NULL, NULL, 1200000, NULL, 240000, 1, '2024-01-05 08:31:55', NULL, '2024-01-05 08:32:15', NULL, NULL, NULL, NULL, NULL, '2024-01-05 08:32:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R005', 11, '2024-01-05 15:35:24', '2024-01-04 12:00:00', 4, '', NULL, NULL, NULL, 1200000, NULL, 240000, 1, '2024-01-05 08:35:41', NULL, '2024-01-05 08:36:00', NULL, '2024-01-05 08:36:40', '1704443798_205a7dd17d913a5b4462.jpg', NULL, '2024-01-05 08:36:48', '2024-01-05 08:37:00', '3', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R006', 11, '2024-01-08 15:54:38', '2024-01-11 12:00:00', 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-09 05:12:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R007', 11, '2024-01-09 13:08:56', '2024-01-12 12:00:00', 2, 'H03', 'P001', NULL, NULL, 820000, NULL, 164000, 1, '2024-01-09 06:19:52', NULL, '2024-01-09 08:20:10', NULL, NULL, NULL, NULL, NULL, '2024-01-10 05:07:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R008', 11, '2024-01-09 15:26:02', '2024-01-12 12:00:00', 2, 'H03', 'P016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-10 05:05:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R009', 11, '2024-01-10 13:01:37', '2024-01-13 12:00:00', 3, 'H03', 'P018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-11 05:21:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R010', 11, '2024-01-11 12:22:41', '2024-01-14 12:00:00', 4, 'H03', 'P019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-12 13:38:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R011', 11, '2024-01-13 12:02:25', '2024-01-16 12:00:00', 4, 'H03', 'P020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-15 03:33:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R012', 11, '2024-01-15 10:43:08', '2024-01-18 12:00:00', 2, 'H03', 'P021', NULL, NULL, 1860000, NULL, 372000, 0, '2024-01-15 12:56:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-17 03:14:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R013', 11, '2024-01-17 14:44:31', '2024-01-20 12:00:00', 6, 'H03', 'P026', NULL, NULL, 5040000, NULL, 1008000, 1, '2024-01-17 08:39:23', NULL, '2024-01-17 08:46:52', NULL, NULL, NULL, NULL, NULL, '2024-01-18 08:45:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R014', 11, '2024-01-17 20:33:09', '2024-01-20 12:00:00', 16, 'H03', 'P027', 'Homestay nyaman dan paket wisata yang ditawarkan juga menarik', 5, 6200000, NULL, 1240000, 1, '2024-01-18 02:42:52', NULL, '2024-01-18 03:24:02', NULL, '2024-01-18 03:24:54', '1705548293_3a381c7360235a21dc74.jpg', NULL, '2024-01-18 03:25:36', NULL, NULL, NULL, NULL, NULL, '', NULL, '2024-01-18 08:32:14', '1705566732_8b794cc21ed127714739.jpg', NULL, '2024-01-18 08:32:35'),
('R015', 11, '2024-01-17 23:39:52', '2024-01-23 12:00:00', 4, 'H03', 'P028', 'Homestay Nyaman', 5, 1660000, NULL, 332000, 1, '2024-01-18 02:42:58', NULL, '2024-01-18 03:23:54', NULL, '2024-01-18 03:25:05', '1705548303_fb79562adc07b489ffb9.jpg', NULL, '2024-01-18 03:25:27', NULL, NULL, NULL, NULL, NULL, '', NULL, '2024-01-18 03:26:42', '1705548395_2dcba41aa4b66349bc7e.jpg', NULL, '2024-01-18 08:32:38'),
('R016', 11, '2024-01-20 23:28:51', '2024-01-23 12:00:00', 5, NULL, NULL, NULL, NULL, 3150000, NULL, 630000, 1, '2024-01-21 01:41:00', NULL, '2024-01-21 01:42:19', NULL, '2024-01-21 01:43:01', '1705801378_d1d6ab8ec6d1bec4535c.jpg', NULL, '2024-01-21 01:43:20', NULL, NULL, NULL, NULL, NULL, '', NULL, '2024-01-21 01:43:52', '1705801430_46c627bf4a8662514206.jpg', NULL, '2024-01-21 01:44:10'),
('R017', 11, '2024-01-21 10:09:21', '2024-01-24 12:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 08:57:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R018', 11, '2024-01-22 15:59:22', '2024-01-25 12:00:00', 6, 'H04', 'P001', NULL, NULL, 3555000, NULL, 711000, 0, '2024-01-22 09:00:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-23 05:03:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R019', 11, '2024-01-22 16:27:47', '2024-01-25 12:00:00', 4, 'H04', 'P002', NULL, NULL, 1740000, NULL, 348000, 0, '2024-01-23 04:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-23 05:02:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R020', 11, '2024-01-23 12:03:53', '2024-01-26 12:00:00', 3, 'H04', 'P001', NULL, NULL, 3360000, NULL, 672000, 1, '2024-01-23 05:04:29', '1', '2024-01-23 05:28:10', 'Saat ini sedang dalam renovasi', NULL, NULL, NULL, NULL, '2024-01-24 06:12:00', '2', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('R021', 11, '2024-01-23 15:45:11', '2024-01-26 12:00:00', 4, 'H04', 'P003', NULL, NULL, 1930000, NULL, 386000, 1, '2024-01-23 08:46:01', '0', '2024-01-23 08:47:08', '', '2024-01-24 02:23:28', '1706063005_598af54142c878681a86.jpg', '1', '2024-01-24 02:24:25', NULL, NULL, NULL, NULL, NULL, '', NULL, '2024-01-24 06:02:46', '1706076163_f14a5c5edc6353ef9068.jpg', '1', '2024-01-24 06:03:55'),
('R022', 11, '2024-01-24 13:05:18', '2024-01-27 12:00:00', 4, 'H04', 'P004', NULL, NULL, 1700000, NULL, 340000, 1, '2024-01-24 06:07:09', '0', '2024-01-24 06:07:35', '', '2024-01-24 06:08:02', '1706076480_743a030f5b68466c44c5.jpg', '1', '2024-01-24 06:08:49', NULL, NULL, NULL, NULL, NULL, '', NULL, '2024-01-24 06:09:22', '1706076559_fa5cfd437ad48eac7733.jpg', '1', '2024-01-24 06:09:45'),
('R023', 11, '2024-01-24 13:14:45', '2024-01-27 12:00:00', 3, NULL, NULL, NULL, NULL, 1400000, NULL, 280000, 1, '2024-01-24 06:14:55', '0', '2024-01-24 06:19:42', '', '2024-01-24 06:20:07', '1706077204_c09a0e4ff2af871b5be1.jpg', '1', '2024-01-24 06:21:47', '2024-01-24 06:22:00', '1', '1', '2024-01-24 07:57:48', '1706083064_4b303d77b6c374f03221.png', '1', '2024-01-24 07:58:14', NULL, NULL, NULL, NULL),
('R024', 11, '2024-01-24 19:45:38', '2024-01-27 12:00:00', 4, 'H03', 'P029', '', 5, 1580000, NULL, 316000, 1, '2024-01-24 12:53:56', '0', '2024-01-24 12:59:37', '', '2024-01-24 13:00:09', '1706101206_af5e1c31c9e5e6ee1f4e.jpg', '1', '2024-01-24 13:00:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 13:01:06', '1706101264_5f6d0a2359f4364273a2.jpg', '1', '2024-01-24 13:01:40'),
('R025', 11, '2024-01-25 11:42:17', '2024-01-28 12:00:00', 4, NULL, NULL, 'Cukup bagus', 4, 1200000, NULL, 240000, 1, '2024-01-25 04:42:27', '0', '2024-01-25 04:43:00', '', '2024-01-26 03:29:43', '1706239780_3bbe605640541917fb90.jpg', '1', '2024-01-26 03:30:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-26 03:30:23', '1706239821_5622be354baec82148a0.jpg', '1', '2024-01-26 03:30:37'),
('R026', 11, '2024-01-25 21:19:42', '2024-01-28 12:00:00', 4, 'H04', 'P001', NULL, NULL, 1630000, NULL, 326000, 1, '2024-01-25 14:20:48', '0', '2024-01-25 14:22:40', '', '2024-01-25 14:26:08', '1706192765_26d944da7c8f24670435.jpg', '1', '2024-01-25 14:40:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 14:42:12', '1706193730_08f249cd78376bffb926.jpg', '1', '2024-01-25 14:43:11'),
('R027', 11, '2024-01-25 21:46:36', '2024-01-28 12:00:00', 4, 'H04', 'P001', NULL, NULL, 1630000, NULL, 326000, 1, '2024-01-25 14:47:14', '0', '2024-01-25 14:48:01', '', '2024-01-25 14:48:48', '1706194127_90aa6c6ae9547ac0e7a5.jpg', '1', '2024-01-25 14:49:06', '2024-01-25 14:49:00', '1', '1', '2024-01-25 14:51:43', '1706194289_cc03017e46ee684f2ecd.jpg', '1', '2024-01-25 14:52:51', NULL, NULL, NULL, NULL),
('R028', 11, '2024-01-26 15:46:36', '2024-01-29 12:00:00', 4, 'H03', 'P022', '', 4, 2200000, NULL, 440000, 1, '2024-01-26 08:47:04', '0', '2024-01-26 08:47:23', '', '2024-01-26 08:47:45', '1706258863_f35c6d8ac4602488a5ba.jpg', '1', '2024-01-26 08:47:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-26 08:48:20', '1706258897_9a24dcdaab0ac9e20e72.jpg', '1', '2024-01-26 08:48:31'),
('R029', 11, '2024-01-26 16:00:58', '2024-01-29 12:00:00', 1, NULL, NULL, '', 4, 310000, NULL, 62000, 1, '2024-01-26 09:01:17', '0', '2024-01-26 09:01:35', '', '2024-01-26 09:01:50', '1706259707_7fc0d3a145c10beff05d.jpg', '1', '2024-01-26 09:02:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-26 09:02:19', '1706259737_5b02f3b53cfdc5dda0cb.jpg', '1', '2024-01-26 09:02:31'),
('R030', 11, '2024-01-27 07:26:29', '2024-01-30 12:00:00', 4, 'H03', 'P022', '', 5, 2100000, NULL, 420000, 1, '2024-01-27 00:33:08', '0', '2024-01-27 00:34:14', '', '2024-01-27 00:34:53', '1706315691_b0c5ab2c2cae8924b834.jpg', '1', '2024-01-27 00:35:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 00:35:42', '1706315740_84001f619f2a3afcfd07.jpg', '1', '2024-01-27 00:35:53'),
('R031', 11, '2024-01-27 08:41:16', '2024-01-30 12:00:00', 3, 'H04', 'P001', NULL, NULL, 1550000, NULL, 310000, 1, '2024-01-27 01:41:40', '0', '2024-01-27 01:42:42', '', '2024-01-27 01:43:12', '1706319789_dd1664b5b5126ebf8a54.jpg', '1', '2024-01-27 01:44:07', '2024-01-27 01:44:00', '1', '1', '2024-01-27 01:46:00', '1706319958_e2c3827484f0fdbfaa05.jpg', '1', '2024-01-27 01:46:14', NULL, NULL, NULL, NULL),
('R032', 11, '2024-01-27 08:47:23', '2024-01-30 12:00:00', 4, 'H04', 'P001', 'homestay bagus, aktivitas dan paketnya menarik', 5, 1630000, NULL, 326000, 1, '2024-01-27 01:47:58', '0', '2024-01-27 01:48:40', '', '2024-01-27 01:49:00', '1706320137_4d719e3a62377df86d8d.jpg', '1', '2024-01-27 01:49:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 01:49:57', '1706320182_f9787eff22ee992159c0.jpg', '1', '2024-01-27 01:50:12'),
('R033', 11, '2024-01-27 09:12:55', '2024-01-30 12:00:00', 4, 'H03', 'P022', 'Homestaynya bagus', 5, 2340000, NULL, 468000, 1, '2024-01-27 02:15:43', '0', '2024-01-27 02:17:30', '', '2024-01-27 02:20:04', '1706322001_352ccc848538d2fbb30b.jpg', '1', '2024-01-27 02:20:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-27 02:21:04', '1706322060_4464f30191e11d0b448c.jpg', '1', '2024-01-27 02:21:26'),
('R034', 11, '2024-01-27 09:22:41', '2024-01-30 12:00:00', 4, 'H03', 'P030', NULL, NULL, 1820000, NULL, 364000, 1, '2024-01-27 02:26:27', '0', '2024-01-27 02:26:56', '', '2024-01-27 02:27:26', '1706322443_dcecf635924d8753ef45.jpg', '1', '2024-01-27 02:27:40', '2024-01-27 02:28:00', '1', '1', '2024-01-27 02:30:04', '1706322574_37ccbe0015e2ed3f9665.jpg', '1', '2024-01-27 02:30:34', NULL, NULL, NULL, NULL),
('R035', 11, '2024-01-27 09:31:34', '2024-01-28 09:00:00', 4, NULL, NULL, NULL, NULL, 1200000, NULL, 240000, 1, '2024-01-27 02:31:50', '0', '2024-01-27 02:32:10', '', '2024-01-27 02:32:38', '1706322756_3b6a2944bfd6699b0c5b.jpg', '1', '2024-01-27 02:32:55', '2024-01-27 02:35:00', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R036', 11, '2024-01-27 09:36:14', '2024-01-28 12:00:00', 4, NULL, NULL, NULL, NULL, 1200000, NULL, 240000, 1, '2024-01-27 02:36:25', '0', '2024-01-27 02:37:00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R037', 11, '2024-01-27 09:47:02', '2024-01-30 12:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_homestay_activity_detail`
--

CREATE TABLE `reservation_homestay_activity_detail` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `homestay_activity_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reservation_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation_homestay_activity_detail`
--

INSERT INTO `reservation_homestay_activity_detail` (`homestay_id`, `homestay_activity_id`, `reservation_id`) VALUES
('H03', '002', 'R007'),
('H03', '001', 'R009'),
('H03', '002', 'R009'),
('H03', '001', 'R012'),
('H03', '002', 'R012'),
('H03', '002', 'R013'),
('H04', '001', 'R018'),
('H04', '001', 'R019'),
('H04', '001', 'R020'),
('H04', '001', 'R021'),
('H04', '001', 'R026'),
('H04', '001', 'R027'),
('H03', '001', 'R029'),
('H04', '001', 'R032'),
('H03', '001', 'R033'),
('H03', '002', 'R033'),
('H03', '001', 'R034'),
('H03', '002', 'R034');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_homestay_unit_detail`
--

CREATE TABLE `reservation_homestay_unit_detail` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit_type` varchar(2) NOT NULL,
  `unit_number` varchar(2) NOT NULL,
  `date` date NOT NULL,
  `reservation_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation_homestay_unit_detail`
--

INSERT INTO `reservation_homestay_unit_detail` (`homestay_id`, `unit_type`, `unit_number`, `date`, `reservation_id`) VALUES
('H03', '1', '1', '2024-01-08', 'R001'),
('H03', '1', '1', '2024-01-09', 'R001'),
('H03', '1', '2', '2024-01-08', 'R001'),
('H03', '1', '2', '2024-01-09', 'R001'),
('H03', '1', '10', '2024-01-20', 'R014'),
('H03', '1', '10', '2024-01-21', 'R014'),
('H03', '1', '4', '2024-01-20', 'R014'),
('H03', '1', '4', '2024-01-21', 'R014'),
('H03', '1', '5', '2024-01-20', 'R014'),
('H03', '1', '5', '2024-01-21', 'R014'),
('H03', '1', '6', '2024-01-20', 'R014'),
('H03', '1', '6', '2024-01-21', 'R014'),
('H03', '1', '7', '2024-01-20', 'R014'),
('H03', '1', '7', '2024-01-21', 'R014'),
('H03', '1', '8', '2024-01-20', 'R014'),
('H03', '1', '8', '2024-01-21', 'R014'),
('H03', '1', '9', '2024-01-20', 'R014'),
('H03', '1', '9', '2024-01-21', 'R014'),
('H03', '1', '1', '2024-01-23', 'R015'),
('H03', '1', '1', '2024-01-24', 'R015'),
('H03', '1', '2', '2024-01-23', 'R015'),
('H03', '1', '2', '2024-01-24', 'R015'),
('H04', '1', '1', '2024-01-23', 'R016'),
('H04', '1', '1', '2024-01-24', 'R016'),
('H04', '1', '1', '2024-01-25', 'R016'),
('H04', '1', '2', '2024-01-23', 'R016'),
('H04', '1', '2', '2024-01-24', 'R016'),
('H04', '1', '2', '2024-01-25', 'R016'),
('H04', '1', '3', '2024-01-23', 'R016'),
('H04', '1', '3', '2024-01-24', 'R016'),
('H04', '1', '3', '2024-01-25', 'R016'),
('H04', '1', '4', '2024-01-26', 'R021'),
('H04', '1', '4', '2024-01-27', 'R021'),
('H04', '1', '5', '2024-01-26', 'R021'),
('H04', '1', '5', '2024-01-27', 'R021'),
('H04', '1', '6', '2024-01-27', 'R022'),
('H04', '1', '6', '2024-01-28', 'R022'),
('H04', '1', '7', '2024-01-27', 'R022'),
('H04', '1', '7', '2024-01-28', 'R022'),
('H03', '1', '1', '2024-01-27', 'R024'),
('H03', '1', '1', '2024-01-28', 'R024'),
('H03', '1', '2', '2024-01-27', 'R024'),
('H03', '1', '2', '2024-01-28', 'R024'),
('H03', '1', '3', '2024-01-28', 'R025'),
('H03', '1', '3', '2024-01-29', 'R025'),
('H03', '1', '4', '2024-01-28', 'R025'),
('H03', '1', '4', '2024-01-29', 'R025'),
('H04', '1', '1', '2024-01-28', 'R026'),
('H04', '1', '1', '2024-01-29', 'R026'),
('H04', '1', '2', '2024-01-28', 'R026'),
('H04', '1', '2', '2024-01-29', 'R026'),
('H03', '1', '1', '2024-01-29', 'R028'),
('H03', '1', '1', '2024-01-30', 'R028'),
('H03', '1', '2', '2024-01-29', 'R028'),
('H03', '1', '2', '2024-01-30', 'R028'),
('H03', '1', '5', '2024-01-29', 'R029'),
('H03', '1', '6', '2024-01-30', 'R030'),
('H03', '1', '6', '2024-01-31', 'R030'),
('H03', '1', '7', '2024-01-30', 'R030'),
('H03', '1', '7', '2024-01-31', 'R030'),
('H04', '1', '1', '2024-01-30', 'R032'),
('H04', '1', '1', '2024-01-31', 'R032'),
('H04', '1', '2', '2024-01-30', 'R032'),
('H04', '1', '2', '2024-01-31', 'R032'),
('H03', '1', '3', '2024-01-30', 'R033'),
('H03', '1', '3', '2024-01-31', 'R033'),
('H03', '1', '4', '2024-01-30', 'R033'),
('H03', '1', '4', '2024-01-31', 'R033'),
('H03', '1', '5', '2024-01-30', 'R036'),
('H03', '1', '5', '2024-01-31', 'R036'),
('H03', '1', '8', '2024-01-30', 'R036'),
('H03', '1', '8', '2024-01-31', 'R036'),
('H03', '1', '10', '2024-01-30', 'R037'),
('H03', '1', '10', '2024-01-31', 'R037'),
('H03', '1', '9', '2024-01-30', 'R037'),
('H03', '1', '9', '2024-01-31', 'R037');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_homestay_unit_detail_backup`
--

CREATE TABLE `reservation_homestay_unit_detail_backup` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit_type` varchar(2) NOT NULL,
  `unit_number` varchar(2) NOT NULL,
  `reservation_id` varchar(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation_homestay_unit_detail_backup`
--

INSERT INTO `reservation_homestay_unit_detail_backup` (`homestay_id`, `unit_type`, `unit_number`, `reservation_id`, `date`) VALUES
('H03', '1', '3', 'R002', '2024-01-08'),
('H03', '1', '3', 'R002', '2024-01-09'),
('H03', '1', '3', 'R003', '2024-01-08'),
('H03', '1', '3', 'R003', '2024-01-09'),
('H03', '1', '4', 'R003', '2024-01-08'),
('H03', '1', '4', 'R003', '2024-01-09'),
('H03', '1', '3', 'R004', '2024-01-08'),
('H03', '1', '3', 'R004', '2024-01-09'),
('H03', '1', '4', 'R004', '2024-01-08'),
('H03', '1', '4', 'R004', '2024-01-09'),
('H03', '1', '3', 'R005', '2024-01-08'),
('H03', '1', '3', 'R005', '2024-01-09'),
('H03', '1', '4', 'R005', '2024-01-08'),
('H03', '1', '4', 'R005', '2024-01-09'),
('H03', '1', '1', 'R006', '2024-01-11'),
('H03', '1', '1', 'R006', '2024-01-12'),
('H03', '1', '2', 'R006', '2024-01-11'),
('H03', '1', '2', 'R006', '2024-01-12'),
('H03', '1', '1', 'R007', '2024-01-12'),
('H03', '1', '1', 'R007', '2024-01-13'),
('H03', '1', '2', 'R008', '2024-01-12'),
('H03', '1', '2', 'R008', '2024-01-13'),
('H03', '1', '2', 'R008', '2024-01-14'),
('H03', '1', '10', 'R009', '2024-01-13'),
('H03', '1', '10', 'R009', '2024-01-14'),
('H03', '1', '9', 'R009', '2024-01-13'),
('H03', '1', '9', 'R009', '2024-01-14'),
('H03', '1', '10', 'R010', '2024-01-14'),
('H03', '1', '10', 'R010', '2024-01-15'),
('H03', '1', '9', 'R010', '2024-01-14'),
('H03', '1', '9', 'R010', '2024-01-15'),
('H03', '1', '1', 'R011', '2024-01-16'),
('H03', '1', '1', 'R011', '2024-01-17'),
('H03', '1', '2', 'R011', '2024-01-16'),
('H03', '1', '2', 'R011', '2024-01-17'),
('H03', '1', '1', 'R012', '2024-01-18'),
('H03', '1', '1', 'R012', '2024-01-19'),
('H03', '1', '2', 'R012', '2024-01-18'),
('H03', '1', '2', 'R012', '2024-01-19'),
('H03', '1', '1', 'R013', '2024-01-20'),
('H03', '1', '1', 'R013', '2024-01-21'),
('H03', '1', '1', 'R013', '2024-01-22'),
('H03', '1', '2', 'R013', '2024-01-20'),
('H03', '1', '2', 'R013', '2024-01-21'),
('H03', '1', '2', 'R013', '2024-01-22'),
('H03', '1', '3', 'R013', '2024-01-20'),
('H03', '1', '3', 'R013', '2024-01-21'),
('H03', '1', '3', 'R013', '2024-01-22'),
('H04', '1', '4', 'R017', '2024-01-24'),
('H04', '1', '4', 'R017', '2024-01-25'),
('H04', '1', '4', 'R017', '2024-01-26'),
('H04', '1', '5', 'R017', '2024-01-24'),
('H04', '1', '5', 'R017', '2024-01-25'),
('H04', '1', '5', 'R017', '2024-01-26'),
('H04', '1', '6', 'R017', '2024-01-24'),
('H04', '1', '6', 'R017', '2024-01-25'),
('H04', '1', '6', 'R017', '2024-01-26'),
('H04', '1', '4', 'R018', '2024-01-25'),
('H04', '1', '4', 'R018', '2024-01-26'),
('H04', '1', '4', 'R018', '2024-01-27'),
('H04', '1', '5', 'R018', '2024-01-25'),
('H04', '1', '5', 'R018', '2024-01-26'),
('H04', '1', '5', 'R018', '2024-01-27'),
('H04', '1', '6', 'R018', '2024-01-25'),
('H04', '1', '6', 'R018', '2024-01-26'),
('H04', '1', '6', 'R018', '2024-01-27'),
('H04', '1', '7', 'R019', '2024-01-25'),
('H04', '1', '7', 'R019', '2024-01-26'),
('H04', '1', '9', 'R019', '2024-01-25'),
('H04', '1', '9', 'R019', '2024-01-26'),
('H04', '1', '1', 'R020', '2024-01-26'),
('H04', '1', '1', 'R020', '2024-01-27'),
('H04', '1', '1', 'R020', '2024-01-28'),
('H04', '1', '2', 'R020', '2024-01-26'),
('H04', '1', '2', 'R020', '2024-01-27'),
('H04', '1', '2', 'R020', '2024-01-28'),
('H04', '1', '3', 'R020', '2024-01-26'),
('H04', '1', '3', 'R020', '2024-01-27'),
('H04', '1', '3', 'R020', '2024-01-28'),
('H04', '1', '1', 'R023', '2024-01-27'),
('H04', '1', '1', 'R023', '2024-01-28'),
('H04', '1', '2', 'R023', '2024-01-27'),
('H04', '1', '2', 'R023', '2024-01-28'),
('H04', '1', '3', 'R027', '2024-01-28'),
('H04', '1', '3', 'R027', '2024-01-29'),
('H04', '1', '4', 'R027', '2024-01-28'),
('H04', '1', '4', 'R027', '2024-01-29'),
('H04', '1', '1', 'R031', '2024-01-30'),
('H04', '1', '1', 'R031', '2024-01-31'),
('H04', '1', '2', 'R031', '2024-01-30'),
('H04', '1', '2', 'R031', '2024-01-31'),
('H03', '1', '5', 'R034', '2024-01-30'),
('H03', '1', '5', 'R034', '2024-01-31'),
('H03', '1', '8', 'R034', '2024-01-30'),
('H03', '1', '8', 'R034', '2024-01-31'),
('H03', '1', '5', 'R035', '2024-01-30'),
('H03', '1', '5', 'R035', '2024-01-31'),
('H03', '1', '8', 'R035', '2024-01-30'),
('H03', '1', '8', 'R035', '2024-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` varchar(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `status`, `created_at`, `updated_at`) VALUES
('ADMN', 'Admin', '2023-10-28 15:51:28', '2023-10-28 15:51:28'),
('OWNR', 'Owner', '2023-10-28 15:51:28', '2023-10-28 15:51:28'),
('USR', 'User', '2023-10-28 15:51:28', '2023-10-28 15:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` varchar(2) NOT NULL,
  `service_provider_id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `unit_price` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_provider_id`, `name`, `price`, `unit_price`, `created_at`, `updated_at`) VALUES
('01', 'V1', 'Sewa Sepeda', 15000, 'jam', '2023-12-02 18:48:31', '2023-12-02 18:48:31'),
('02', 'V2', 'Sewa Kuda', 10000, 'orang', '2023-12-02 18:52:28', '2023-12-02 18:52:28'),
('03', 'V3', 'Sewa Tenda 200cm x 200cm', 40000, 'hari', '2023-12-02 18:59:28', '2023-12-02 19:01:28'),
('04', 'V3', 'Sewa Tenda 300cm x 400cm', 60000, 'hari', '2023-12-02 19:00:08', '2023-12-02 19:01:16'),
('05', 'V3', 'Sewa Lahan Camping 5m x 5m', 25000, 'hari', '2023-12-02 19:01:04', '2023-12-02 19:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider`
--

CREATE TABLE `service_provider` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `employee_name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` text,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service_provider`
--

INSERT INTO `service_provider` (`id`, `name`, `address`, `employee_name`, `phone`, `description`, `open`, `close`, `geom`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
('V1', 'Sewa Sepeda KTH Aka Barayun', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, NULL, '09:00:00', '17:00:00', 0xe610000001030000000100000005000000b5134df8912a594079dd338736a8b9bfb413c58e922a594065c0f9e679aab9bfb41375c1912a5940afaeb7060cadb9bfb513f523912a5940d7ebf60696aab9bfb5134df8912a594079dd338736a8b9bf, '-0.10025986', '100.66515192', '2023-12-02 18:45:51', '2023-12-02 18:45:51'),
('V2', 'Bintang Stable Sewa Kuda', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', NULL, NULL, NULL, '10:00:00', '17:00:00', 0xe610000001030000000100000009000000c42f1dfba42a59404e36d21ba4f3bcbfc32ffd54a72a59408efa611ae4febcbfc32fdd19a82a5940749eb21a6efcbcbfc32fdd54a92a5940dff7081bcbf9bcbfc22f7d00a92a5940b2007c1b47f6bcbfc32f7defaa2a5940880eec9bd9f2bcbfc42f5df2a92a5940c3b9ce1ce8ebbcbfc32f1d36a62a5940b1162e1cd4f0bcbfc42f1dfba42a59404e36d21ba4f3bcbf, '-0.11311949', '100.66650136', '2023-12-02 18:51:39', '2023-12-02 18:51:39'),
('V3', 'Camping Ground Sarasah Bunta', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Ujang', '082383456008', NULL, '00:00:00', '23:59:00', 0xe610000001030000000100000005000000ef5b8355562b5940171ae3c16601bcbff05b437a532b594079bf7fc0000dbcbfee5b8336572b594047a1c4be6a1bbcbfef5bc3e4592b5940af2b6ac0b40dbcbfef5b8355562b5940171ae3c16601bcbf, '-0.10959487', '100.67716587', '2023-12-02 18:55:32', '2023-12-02 18:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `service_provider_gallery`
--

CREATE TABLE `service_provider_gallery` (
  `id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `service_provider_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service_provider_gallery`
--

INSERT INTO `service_provider_gallery` (`id`, `service_provider_id`, `url`, `created_at`, `updated_at`) VALUES
('001', 'V1', '1701589464_267580ca681eb71884cd.jpg', '2023-12-02 18:45:51', '2023-12-02 18:45:51'),
('002', 'V2', '1701589894_c903375fc48414ed15a2.jpg', '2023-12-02 18:51:39', '2023-12-02 18:51:39'),
('003', 'V2', '1701589892_e1f5a9232cc1d3bf1e9f.jpg', '2023-12-02 18:51:39', '2023-12-02 18:51:39'),
('004', 'V2', '1701589892_b4ce413b557157751272.jpg', '2023-12-02 18:51:39', '2023-12-02 18:51:39'),
('005', 'V2', '1701589895_0245544432070344d7d0.jpg', '2023-12-02 18:51:39', '2023-12-02 18:51:39'),
('006', 'V3', '1701590090_09ab969c2dfe9507a551.jpg', '2023-12-02 18:55:32', '2023-12-02 18:55:32'),
('007', 'V3', '1701590091_b70ccb4a5b3f64fc7d04.jpg', '2023-12-02 18:55:32', '2023-12-02 18:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_place`
--

CREATE TABLE `souvenir_place` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `employee_name` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `souvenir_place`
--

INSERT INTO `souvenir_place` (`id`, `name`, `address`, `employee_name`, `phone`, `open`, `close`, `geom`, `lat`, `lng`, `description`, `created_at`, `updated_at`) VALUES
('S1', 'Wida Gallery 99 Sarasah Bunta', 'Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Wida', '082344125645', '10:00:00', '18:00:00', 0xe61000000103000000010000000500000086127dfd3a2b59400c2bed4b08e9bbbf8512fdf43b2b5940e17ff24bdbe8bbbf86127d0b3c2b5940517b374b02efbbbf8612bd083b2b5940232c424ba8eebbbf86127dfd3a2b59400c2bed4b08e9bbbf, '-0.10906880', '100.67550766', 'Selamat datang di Wida Gallery 99, destinasi yang memukau untuk menemukan cinderamata istimewa, yang terletak di dekat Sarasah Bunta! Wida Gallery 99 merupakan surga bagi para pencinta souvenir, menawarkan pengalaman berbelanja yang tak terlupakan di tengah-tengah keindahan lokal yang khas.', '2023-12-01 21:13:53', '2023-12-01 23:15:15'),
('S2', 'Harau Collection & Souvenir', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Iwan', '082267348821', '10:00:00', '18:00:00', 0xe610000001030000000100000006000000fa7e921d732a5940edfd04e0c8febcbffa7e0215752a59402e0a0a80a1febcbffa7e1223752a594030bc775f1703bdbffb7ed228732a59407f346c5f7103bdbffa7e921d732a5940edfd04e0c8febcbffa7e921d732a5940edfd04e0c8febcbf, '-0.11329707', '100.66333778', 'Selamat datang di Harau Collection & Souvenir, destinasi yang memukau untuk menemukan cinderamata istimewa, yang terletak di Lembah Harau. Harau Collection & Souvenir merupakan surga bagi para pencinta souvenir, menawarkan pengalaman berbelanja yang tak terlupakan di tengah-tengah keindahan lokal yang khas.', '2023-12-01 23:44:52', '2023-12-01 23:45:32'),
('S3', 'Harau Cell & Fashion', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Andi', '082211213349', '10:00:00', '18:00:00', 0xe610000001030000000100000006000000df514b7e4b2b5940b3e53046e1e0bbbfdd51b3524b2b594083f9ae252ae5bbbfdd5173554c2b5940c44d94250be6bbbfdd51f36b4c2b594095961926a6e1bbbfdf51b3ac4b2b5940dd902b460ee1bbbfdf514b7e4b2b5940b3e53046e1e0bbbf, '-0.10893954', '100.67650588', 'Harau Cell & Fashion bukan hanya sekadar toko, melainkan pusat inspirasi yang memadukan kecantikan budaya dan fesyen terkini. Dengan atmosfer yang ramah dan penuh semangat, setiap pengunjung diundang untuk menjelajahi koleksi souvenir yang dipilih dengan cermat dan penuh cinta.', '2023-12-02 00:16:18', '2023-12-02 00:17:47'),
('S4', 'Sarasah Bunta Garden', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 'Wan', '081287723412', '09:00:00', '18:00:00', 0xe61000000103000000010000000500000038c2b2224d2b5940e301fbf550e7bbbf37c2f2684e2b59407c50d0f5b8e8bbbf37c2f20e4e2b5940757455f5c3ecbbbf38c272ea4c2b5940d83990f5d4eabbbf38c2b2224d2b5940e301fbf550e7bbbf, '-0.10903993', '100.67661517', 'Sarasah Bunta Garden bagaikan oase yang memelihara tanaman-tanaman endemik yang tumbuh subur di kawasan ini. Setiap sudut taman dipenuhi dengan keindahan alami dan aroma harum dari berbagai jenis tanaman yang khas. Dari flora yang langka hingga tanaman hias yang menawan, setiap pot dan wadah dipilih dengan hati untuk memamerkan keunikan dan keindahan masing-masing.', '2023-12-02 00:44:34', '2023-12-02 00:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_place_gallery`
--

CREATE TABLE `souvenir_place_gallery` (
  `id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `souvenir_place_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `souvenir_place_gallery`
--

INSERT INTO `souvenir_place_gallery` (`id`, `souvenir_place_id`, `url`, `created_at`, `updated_at`) VALUES
('001', 'S1', '1701519268_9fff60bc6ae6ba25f098.jpg', '2023-12-01 23:15:16', '2023-12-01 23:15:16'),
('002', 'S1', '1701519269_360883c311b3780bdbea.jpg', '2023-12-01 23:15:16', '2023-12-01 23:15:16'),
('003', 'S2', '1701521121_078662c6c4362c585600.jpg', '2023-12-01 23:45:32', '2023-12-01 23:45:32'),
('004', 'S2', '1701521122_9255c08f8161b4c5fbbd.jpg', '2023-12-01 23:45:32', '2023-12-01 23:45:32'),
('005', 'S2', '1701521123_484adc9d37e668b14722.jpg', '2023-12-01 23:45:32', '2023-12-01 23:45:32'),
('006', 'S3', '1701523039_8b9a5cc00b3df8e7b33b.jpg', '2023-12-02 00:17:47', '2023-12-02 00:17:47'),
('007', 'S3', '1701523039_d8f3f90737be1907f1a8.jpg', '2023-12-02 00:17:47', '2023-12-02 00:17:47'),
('008', 'S4', '1701524624_25016f64ba86d4c2fa7a.jpg', '2023-12-02 00:44:34', '2023-12-02 00:44:34'),
('009', 'S4', '1701524624_765bb9bd1b055d746d2a.jpg', '2023-12-02 00:44:34', '2023-12-02 00:44:34'),
('010', 'S4', '1701524626_f5d8b8ca12e3a1ce31cd.jpg', '2023-12-02 00:44:34', '2023-12-02 00:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_product`
--

CREATE TABLE `souvenir_product` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `souvenir_product`
--

INSERT INTO `souvenir_product` (`id`, `name`, `created_at`, `updated_at`) VALUES
('02', 'Baju Piyama Wisata', '2023-11-07 01:19:46', '2023-12-01 23:25:14'),
('03', 'Gantungan Kunci', '2023-11-07 01:22:31', '2023-12-01 23:25:41'),
('04', 'Miniatur Rumah Gadang', '2023-11-07 19:03:04', '2023-12-01 23:25:57'),
('05', 'Baju Kaos Wisata', '2023-11-07 23:45:41', '2023-12-01 23:26:13'),
('06', 'Tas Rajutan', '2023-12-01 23:26:28', '2023-12-01 23:26:28'),
('07', 'Gelang Tangan', '2023-12-01 23:26:40', '2023-12-01 23:26:40'),
('08', 'Pakis Monyet', '2023-12-01 23:27:00', '2023-12-01 23:27:00'),
('09', 'Topi Pantai', '2023-12-02 00:28:44', '2023-12-02 00:28:44'),
('10', 'Kacamata Sunglasses', '2023-12-02 00:37:44', '2023-12-02 00:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_product_detail`
--

CREATE TABLE `souvenir_product_detail` (
  `souvenir_place_id` varchar(2) NOT NULL,
  `souvenir_product_id` varchar(2) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `image_url` text,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `souvenir_product_detail`
--

INSERT INTO `souvenir_product_detail` (`souvenir_place_id`, `souvenir_product_id`, `price`, `image_url`, `description`, `created_at`, `updated_at`) VALUES
('S1', '03', 2000, '1701520701_29b8d0454cce9dbd32f7.jpg', NULL, '2023-12-01 23:38:30', '2023-12-01 23:38:30'),
('S1', '05', 30000, '1701520554_c0aa350f25cddc062249.jpg', 'Setiap baju kaos ini adalah potongan fesyen yang menceritakan cerita destinasi yang memikat. Dibuat dengan perhatian terhadap detail, kaos ini menjadi pilihan sempurna untuk mereka yang ingin merayakan dan mengenang setiap perjalanan mereka. Desainnya yang cerdas dan nyaman memastikan bahwa Anda tidak hanya terlihat modis, tetapi juga merasa nyaman sepanjang hari.', '2023-12-01 23:37:01', '2023-12-01 23:37:01'),
('S1', '06', 35000, '1701520085_4f482d7e8d2fa2f46da5.jpg', 'Tas rajutan ini bukan sekadar aksesori, melainkan cerminan seni dan dedikasi pengrajinnya. Terbuat dari serat alami yang lembut dan tahan lama, setiap tas menjadi sebuah karya seni yang menggabungkan keanggunan fungsionalitas dengan daya tarik estetika.', '2023-12-01 23:29:17', '2023-12-01 23:29:17'),
('S1', '07', 4000, '1701520747_4552f210f12dfcf9a9fc.jpg', 'Gelang ini adalah perwujudan sempurna dari seni kerajinan tangan yang menggabungkan kehalusan dan keindahan. Dibuat dengan hati-hati oleh tangan ahli pengrajin, gelang ini bukan hanya sebuah aksesori, melainkan simbol dari keterampilan tinggi dan dedikasi terhadap seni.', '2023-12-01 23:34:31', '2023-12-01 23:39:09'),
('S2', '02', 35000, '1701521208_1379e1557db6df979bfc.jpg', 'Setiap baju piyama ini adalah penggabungan harmonis antara kenyamanan dan inspirasi perjalanan. Terbuat dari bahan lembut yang memeluk tubuh dengan lembut, setiap sentuhan kain seperti memeluk kehangatan kasih sayang. Desainnya yang cerdas dan ergonomis memastikan tidur Anda menjadi pengalaman yang mewah, seolah-olah Anda berada dalam perjalanan indah di malam hari.', '2023-12-01 23:47:41', '2023-12-01 23:47:41'),
('S2', '03', 2000, '1701521325_dc604d4708d79706e403.jpg', NULL, '2023-12-01 23:49:25', '2023-12-01 23:49:25'),
('S2', '04', 120000, '1701521404_3117a6457c1040ca41ba.jpg', 'Setiap miniatur rumah gadang adalah pameran keahlian tinggi pengrajin yang mengabadikan kecantikan dan keunikannya. Dengan cermat dan teliti, setiap goresan menggambarkan keindahan arsitektur khas, dari atap bergonjong hingga hiasan-hiasan artistik yang menghiasi dindingnya. Setiap detail mengandung pesan sejarah dan nilai-nilai kultural yang diwariskan dari generasi ke generasi.', '2023-12-01 23:50:55', '2023-12-01 23:50:55'),
('S3', '02', 35000, '1701523576_af138b74fceab150e66f.jpg', NULL, '2023-12-02 00:26:19', '2023-12-02 00:26:19'),
('S3', '05', 30000, '1701523615_dd114197051bbdfebc55.jpg', NULL, '2023-12-02 00:26:57', '2023-12-02 00:26:57'),
('S3', '09', 40000, '1701523856_2b0db57e90f66fe83a31.jpg', NULL, '2023-12-02 00:30:59', '2023-12-02 00:30:59'),
('S3', '10', 35000, '1701524305_9bc577ed3044b59698ee.jpg', NULL, '2023-12-02 00:38:27', '2023-12-02 00:38:27'),
('S4', '08', 25000, '1701524804_48f7265b4c1c57774efb.jpg', NULL, '2023-12-02 00:46:48', '2023-12-02 00:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict`
--

CREATE TABLE `subdistrict` (
  `id` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `geom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subdistrict`
--

INSERT INTO `subdistrict` (`id`, `name`, `geom`) VALUES
('S01', 'Akabiluru', 'S01.geojson'),
('S02', 'Bukik Barisan', 'S02.geojson'),
('S03', 'Guguak', 'S03.geojson'),
('S04', 'Gunuang Omeh', 'S04.geojson'),
('S05', 'Harau', 'S05.geojson'),
('S06', 'Kapur IX', 'S06.geojson'),
('S07', 'Lareh Sago Halaban', 'S07.geojson'),
('S08', 'Luak', 'S08.geojson'),
('S09', 'Mungka', 'S09.geojson'),
('S10', 'Pangkalan Koto Baru', 'S10.geojson'),
('S11', 'Payakumbuh', 'S11.geojson'),
('S12', 'Situjuah Limo Nagari', 'S12.geojson'),
('S13', 'Suliki', 'S13.geojson');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_area`
--

CREATE TABLE `tourist_area` (
  `id` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL,
  `ticket_price` int NOT NULL,
  `contact_person` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `facebook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `instagram` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `youtube` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tiktok` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tourist_area`
--

INSERT INTO `tourist_area` (`id`, `name`, `address`, `open`, `close`, `ticket_price`, `contact_person`, `description`, `video_url`, `geom`, `lat`, `lng`, `facebook`, `instagram`, `youtube`, `tiktok`) VALUES
('1', 'Lembah Harau', 'Lembah Harau Street, Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia, 25156', '08:00:00', '05:00:00', 5000, '081261499095', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ex lectus, malesuada ut feugiat id, scelerisque ac dui. Phasellus egestas posuere vestibulum. Proin ac elementum erat. Nunc gravida sollicitudin gravida. Sed quis diam non nisl imperdiet porttitor. Vivamus molestie arcu non mauris finibus gravida non eu erat. In eget enim a nisi dapibus elementum vitae id leo. Nunc sit amet neque non lacus molestie varius. Cras gravida ornare nisl, sed imperdiet augue efficitur id. Sed ac felis blandit, blandit nisl ac, mollis nisl. Nam nibh dolor, laoreet vel justo sed, aliquet maximus massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 0xe610000001030000000100000035000000c33bc741202a5940476a4554f3c7bebf4681caf2242a594087d1d3ee53d0bebfacc1814e322a5940d55c11a635e1bebfabc1814a452a5940dc9b9ca315f2bebfadc1818c5d2a5940c32725a1f502bfbfacc1812e702a594048431da0fd09bfbfacc1817e892a5940a3e8149f0511bfbfacc18190a42a5940ae07ab9ed513bfbfabc1819ab82a59407d0cd79d7519bfbfacc1817ac92a5940d7a99797a543bfbfacc18152d32a5940f8876e907573bfbfacc1812add2a5940e3c38a887da7bfbfabc181b6e72a59406cdce57fbddfbfbf6576822df52a59400a25a73ccd02c0bf6376828ffc2a594066468f3a2910c0bf647682171a2b594072fe478892a4bfbf64768295232b594088620b8e9a7ebfbf647682b3322b594087d5dd9ad228bfbf64768257522b5940ef9f4ac04223bebf637682975d2b594004eb06cc7acdbdbf6476823f6a2b5940a823fde31218bdbf6576828d762b5940eba688fc9a54bcbf647682b38c2b5940f85ac3203b1fbbbf637682479e2b59400ab08f34d369babf6476827dc22b59401d5a7e4d8b76b9bf647682cbce2b59400246155bebe9b8bf64768217ce2b5940f897ac5c0bd9b8bf6476825fb32b59402c3473675364b8bf64768231962b594069191f6b8b3bb8bf64768229622b5940ec9e7f6b5337b8bfac001d8a0c2b5940e40735321e66b8bfab001d76e42a59400c010830067eb8bfab001dc4c32a594056505e2ba6b0b8bf45d34089b02a59403bf82e9681efb8bf45d3408d9d2a5940f1bb2a8c9157b9bf45d3404b852a59405580f88011c8b9bf45d340fb6b2a5940700abc771122babf46d340e1492a5940a1321a69e1abbabf45d34045312a5940818be36569c9babf45d340ad052a5940d84ecf66f9c0babf45d34033e92959409ea5cb6d4980babf45d340abcb2959403aed4b6f3972babf44d340d9bb2959400d33ff6e0975babf45d340ef96295940456c706cf18cbabf45d3403dd0295940b67c5a41a108bcbf46d3408ff62959401ceb1a2669e5bcbf45d3408b092a5940e21265175157bdbf45d340d9152a5940c5bb810a59b8bdbf45d340791b2a5940f79e890171fabdbf44d340b11f2a594057a725fbd828bebf45d34043242a59406d1b20f09877bebf45d340e9232a5940b77e86e900a6bebfc33bc741202a5940476a4554f3c7bebf, '-0.11004370', '100.66716704', NULL, NULL, NULL, NULL),
('L1', 'Lembah Harau', 'Lembah Harau Street, Tarantang village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province, Indonesia, 25156', '08:00:00', '17:00:00', 5000, '081261499095', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ex lectus, malesuada ut feugiat id, scelerisque ac dui. Phasellus egestas posuere vestibulum. Proin ac elementum erat. Nunc gravida sollicitudin gravida. Sed quis diam non nisl imperdiet porttitor. Vivamus molestie arcu non mauris finibus gravida non eu erat. In eget enim a nisi dapibus elementum vitae id leo. Nunc sit amet neque non lacus molestie varius. Cras gravida ornare nisl, sed imperdiet augue efficitur id. Sed ac felis blandit, blandit nisl ac, mollis nisl. Nam nibh dolor, laoreet vel justo sed, aliquet maximus massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 0xe610000001030000000100000040000000639fc0741f2a5940645edea446cebebf639fc06b282a59408ad093a218debebf639f40bf362a5940f3ed749f8af3bebf639f4080482a5940dd0bfa9a2012bfbf649f40ec632a5940327eda988a20bfbf649fc0aa702a5940ffebbf983e21bfbf639fc068852a5940255148986824bfbf909b1e3ca22a5940dc94a1406d2bbfbf909b1e8cbb2a59406157cc3f0d31bfbf919b1ed4cd2a5940f247ef396d58bfbf909b1e14d92a594098914f320d8bbfbfb4cd0881e72a594093fb5f2a15bfbfbfb4cd0807f82a59404f1ec6224df0bfbfb4cd0877002b59407dd0318f3606c0bfb4cd0837222b5940fbfdcc333581bfbfb3cd089e332b594024f881a07523bfbfb4cd084e472b5940d656c489557abebf912010cd5c2b59407a32b3a15dcdbdbf912010186c2b5940659b5b543bfbbcbf90201085772b594082ec3faff936bcbf902010a3862b5940e9a4f5c6e16dbbbf2dcace028c2b5940b2ce39e5a11fbbbf2ccace42972b59401957b6f091b7babf2dcacefe9e2b59403273ba26356dbabf8205c07bb02b5940bc3f2251fdf1b9bff253197dc32b5940963e245e9d70b9bfde8dee69cf2b5940b96ef66bdfeeb8bfdf8deed4cd2b5940a71ae36d7bdab8bfbf26ec6bb32b5940952c745ceb5eb8bfbe26ec10962b59402c897d5f2b3db8bfc026ecb9652b5940011dde5ff338b8bfc026ec783d2b59401bad985d4352b8bfc026ec09252b5940f203a55ccf5cb8bfc026ec67122b59409d1a025cd763b8bfc026ec4be32a59407e596259ab80b8bf8a6705edc32a594053f31b5513afb8bf8ad46348b02a594068ca7dd52deeb8bf8ad4631ca02a59401f4fc8cce148b9bf89d463ed922a59408b668fc62988b9bf8953cd08822a5940092302ec6ed3b9bf8953cd74702a594049e5a9e54e11babfd8fd95d9682a5940cd3e0fc09f2dbabfd7fd9537562a5940f78131b82778babf24e727e9482a594054590d6b45abbabf24e727a7302a594003d6d667cdc8babf24e727b2072a594083cbe968f5bebabf25e7273be8295940e34ff86f917dbabf24e727cfcc295940ff708b71cd6ebabf89e8dd45bb29594092410571b973babf89e8dd0f97295940956b636e558cbabf89e8dd2da62959409669e061f1febabf88e8dd0fc429594005708f4b69c2bbbf89e8dd5dd0295940b2cf0b429112bcbf89e8ddade929594064a3d530319fbcbfa9d73197f4295940ff17677932d8bcbfaad731dc092a59405c232e690e56bdbf1f1056df0f2a59406723df435286bdbf1f10562a1f2a5940df0b022f4e20bebf2e8e046d222a5940b00c143dbd57bebf308e0402242a594069939f386177bebf2e8e04d5232a5940edc16e34e994bebf2e8e0421232a5940ad3f85314da9bebf2f8e0432212a59407cdd972eb1bdbebf639fc0741f2a5940645edea446cebebf, '-0.10990430', '100.66718981', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_area_gallery`
--

CREATE TABLE `tourist_area_gallery` (
  `id` varchar(2) NOT NULL,
  `tourist_area_id` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tourist_area_gallery`
--

INSERT INTO `tourist_area_gallery` (`id`, `tourist_area_id`, `url`) VALUES
('1', '1', 'L01.jpg'),
('2', '1', 'L02.jpg'),
('3', '1', 'L03.png'),
('4', '1', 'L04.jpg'),
('5', '1', 'L05.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT 'default.jpg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `first_name`, `last_name`, `address`, `phone`, `avatar`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'accuser1@email.com', 'accuser1', 'User 1', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '081966159032', 'default.jpg', '$2y$10$W2TphwPWSmS9S/XIIWOU7eiCg7SxapyAuGRwXZ/7oPmSngs8vZJuO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:28', '2023-10-28 22:51:28', NULL),
(2, 'accuser2@email.com', 'accuser2', 'User 2', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '081211536051', 'default.jpg', '$2y$10$PyeB88Z/oU0ZpS7EqejH5unNVhWqwXGmRk0f5f1TeRgXdZ37s.g6e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:28', '2023-10-28 22:51:28', NULL),
(3, 'accuser3@email.com', 'accuser3', 'User 3', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '081673777122', 'default.jpg', '$2y$10$7YbcXjv8uL2bsYbdX1EJPucZr7v.F1lDXOmNiHalcUVo2.BeA0oY6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(4, 'accuser4@email.com', 'accuser4', 'User 4', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '081375337211', 'default.jpg', '$2y$10$2AmltcPtgE0h0FyHBvzjB.96QAvoZ1JPgTc5qmpzt5NOYRo//TNZW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(5, 'accowner1@email.com', 'accowner1', 'Pokdarwis', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '081711822434', 'default.jpg', '$2y$10$G/8lvXiJBAwh/mMilt9iTuPxdDUwFxpxIrQ43fg9QTk.IJnm02A3.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(6, 'accowner2@email.com', 'accowner2', 'Warga', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '081851858447', 'default.jpg', '$2y$10$iP6JHl.Ep3.sbJh4ujCyu.b6de/rRmSAVwqyaTSlHmI.kWHjWRnCa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(7, 'accadmin1@email.com', 'accadmin1', 'Zuherman', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '08111678345', 'default.jpg', '$2y$10$Qj.hWZHW4uLNI2G8TMxSH.iY3A.B6auTcHB3lVPwPWkNsDyC5esRi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(8, 'untunggjamari@gmail.com', 'ujamari', NULL, NULL, NULL, NULL, 'default.jpg', '$2y$10$sxOSxOHQ8UHtYZ12KFe5VeqS131nfLJNWPppjBG2JL/.wYiA7PlVa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-11-16 08:47:45', '2023-11-16 08:47:45', NULL),
(9, 'andi@gmail.com', 'andi', 'Andi', NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '085213100756', 'default.jpg', '$2y$10$VumDbbWe08c0kNuMKeSpJuvhpgPcdYM9NEQ2t/qjYZzIfK5Fg4U5e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-08 10:27:24', '2023-12-08 10:27:24', NULL),
(10, 'ari@gmail.com', 'arie', NULL, NULL, NULL, NULL, 'default.jpg', '$2y$10$I76ASpG4aFnFakR212BTm.MkremdoUllq7dJkJRa1aDK2OC.4IPpa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-14 01:20:26', '2023-12-14 01:20:26', NULL),
(11, 'daffa@gmail.com', 'daffa', 'Daffa', 'Muyassar', 'Bukittinggi', '082223556788', 'default.jpg', '$2y$10$6dlvr8vNqXtFACvXFTAhx.g4DQXUt9ED9zuIkljB3jTHuRgzyqiMO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-14 20:28:36', '2023-12-14 20:28:36', NULL),
(12, 'ade@gmail.com', 'mhdade', 'ade', NULL, NULL, '081270263970', 'default.jpg', '$2y$10$KM6AVz0trtyW6kZKKbYYpu5Ad4hwj2IoWwSsJJx.it3q1v1hXpENu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-22 19:40:42', '2023-12-22 19:40:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_account`
--

CREATE TABLE `user_bank_account` (
  `id` varchar(3) NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_code` varchar(3) DEFAULT NULL,
  `account_number` varchar(25) NOT NULL,
  `account_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_bank_account`
--

INSERT INTO `user_bank_account` (`id`, `user_id`, `bank_name`, `bank_code`, `account_number`, `account_name`) VALUES
('001', 9, 'Bank Central Asia (BCA)', '014', '3214467122', 'Andi'),
('002', 11, 'Bank BRI', '323', '231334122', 'Daffa'),
('003', 12, 'Bank Central Asia (BCA)', '014', '2317787642', 'Muhammad Ade');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(50) NOT NULL,
  `district` varchar(30) DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `geom_file` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`id`, `name`, `district`, `geom`, `geom_file`, `created_at`, `updated_at`) VALUES
('1', 'Tarantang', 'Kabupaten Lima Puluh Kota', 0xe610000001030000000100000049000000022b6433972959406b287dc4558bbabfac2da471be295940b8374b473b71babfc4236457cd295940b21162077c70babf5727445be9295940cdf3be45a57fbabf132e8456082a5940bd49d73eedbebabf6d360481302a59408389bebddbc8babfd86a2c96492a5940230f16017eaababf0c5a3ca5662a5940a64f2c4d3937babf975e3c98822a5940a75ee35791d0b9bf4263bc399d2a5940f6880e64fb57b9bf77685c95b02a5940d574716e75edb8bf3d6c0cd2c32a5940e671567468afb8bf3f748ce6e32a59404811ad38f580b8bf3e7bccd80b2b59404818143bf166b8bfb778cce42c2b5940cfbb113cb15bb8bf03864cd0662b5940d5e6453f8938b8bffa8db857972b5940dd0423d8053fb8bf3095b82bb42b59403610ccd49563b8bfda9838bfcd2b59405b21c6c92ed9b8bf2b9bf875cf2b5940057802c8a3ebb8bf9cf62356c32b59407ee6a882706fb9bf2767ad619f2b59408f21bf3cb868babff623e7c68c2b59406e8a047a7e1cbbbfa9dff4a9772b5940948d13e19f39bcbfac48a31d5d2b5940c94d3d49a7ccbdbf8d10c64e332b5940fc4bfdb12625bfbf7d7824cb222b5940efde0800f781bfbfdc5047fcf82a594051d5083c6f15c0bfc2511a87e02a59403b45a5d6874ac0bf230b0b0fd12a59400f5a3aabf882c0bf44c0c8fac52a59409ac78f62bdb9c0bfd6c618f2bb2a59400262c720edf0c0bfd922c858b72a59401a1e1de68728c1bf817918a1b42a5940acc3fba77342c1bf498fbfa9992a59402a2a0e556f87c1bf6b3d4af9922a5940bafe9bd7f58ec1bfe70100d8782a59402495b9bf569cc1bf8a1bd362602a5940e997ff001aa0c1bf00282a744f2a59402afbbef9ae9fc1bfdc312267402a594058ce3debd89ec1bf43950b84302a5940982e4742dda3c1bf9ea036131d2a594052f5442531a2c1bf7fcaa3650d2a59402f60fee36d9ec1bfbb1faaddf729594023c8a2ba498dc1bf77def983e6295940a98e303a2177c1bfb042cd5fd5295940a70040022765c1bf4c4892b6ca295940e879ab7fa05dc1bfad074fafa929594052f94cca2c53c1bf014e51fe90295940b4147f718f52c1bf4d4e31149b2959400f2aa5597325c1bfbc513173a5295940f812ef60abfcc0bf745eb16fb029594097a4e8676ad4c0bf335031c0c1295940a7025c721197c0bf1952b1c7d0295940d394a07bfe5ec0bf294e3186dd29594017e373845328c0bf2e4f312eea29594069d375192fe7bfbfa559b1e4ef2959406d8fe81fffbcbfbf814fb14efe29594081bb032a8d7abfbf2051b136162a5940b9ef6c3a830cbfbf054f3106212a5940de190d4563c3bebf6650b1ec232a5940770b284cd191bebfbb4eb119242a59403eaec8501f71bebf8f4db1001f2a59409ca6535cdb1ebebfff59316c152a59402922ef6903bbbdbf465bb1990d2a59402f6314737576bdbf184eb1a5012a5940a0f0727d0127bdbf714d3109f129594036f5198a37c4bcbf5f4cb104df2959402f2120968963bcbf974db108cc29594083e770a325f5bbbf054d318bba295940eb93eab02f82bbbfbd4c31faa52959400b21efbfa5fdbabf165bb1959929594096265bca059ebabf022b6433972959406b287dc4558bbabf, 'V01.geojson', NULL, NULL),
('10', 'Solok Bio-Bio', NULL, NULL, 'V10.geojson', NULL, NULL),
('11', 'Taram', NULL, NULL, 'V11.geojson', NULL, NULL),
('2', 'Batu Balang', '', 0xe610000001030000000100000011000000ca666527511f5940dd6c24de8dd8e0bfcc66e502501f594036fe7b8158d7e0bf9a593909731f5940753d6ffbc2b1e0bf9a59b9a99d1f594020ef62b45ab4e0bf9a5979339f1f5940e17a6190d3b5e0bf9959f9eca11f5940df8e881209b5e0bf9a59f9cda21f5940966d569179b5e0bf995939559f1f59404cb9b40e71b6e0bff7f800a9a91f5940d7fe1b6265bee0bff5f8807dbe1f594094f1a40af7c6e0bff6f88098a31f594019a19bfdb5cbe0bff7f880fda71f59400861bdf91dcde0bff7f880fda71f59401cdd34737dcfe0bff6f880d3a41f594033e492efced0e0bff6f88038a91f59407aa281e1e7d5e0bff6f88034621f59404846514d33dde0bfca666527511f5940dd6c24de8dd8e0bf, 'V02.geojson', '2023-10-28 15:51:29', '2023-10-28 15:51:29'),
('3', 'Bukik Limbuku', 'Kabupaten Lima Puluh Kota', 0xe610000001030000000100000049000000022b6433972959406b287dc4558bbabfac2da471be295940b8374b473b71babfc4236457cd295940b21162077c70babf5727445be9295940cdf3be45a57fbabf132e8456082a5940bd49d73eedbebabf6d360481302a59408389bebddbc8babfd86a2c96492a5940230f16017eaababf0c5a3ca5662a5940a64f2c4d3937babf975e3c98822a5940a75ee35791d0b9bf4263bc399d2a5940f6880e64fb57b9bf77685c95b02a5940d574716e75edb8bf3d6c0cd2c32a5940e671567468afb8bf3f748ce6e32a59404811ad38f580b8bf3e7bccd80b2b59404818143bf166b8bfb778cce42c2b5940cfbb113cb15bb8bf03864cd0662b5940d5e6453f8938b8bffa8db857972b5940dd0423d8053fb8bf3095b82bb42b59403610ccd49563b8bfda9838bfcd2b59405b21c6c92ed9b8bf2b9bf875cf2b5940057802c8a3ebb8bf9cf62356c32b59407ee6a882706fb9bf2767ad619f2b59408f21bf3cb868babff623e7c68c2b59406e8a047a7e1cbbbfa9dff4a9772b5940948d13e19f39bcbfac48a31d5d2b5940c94d3d49a7ccbdbf8d10c64e332b5940fc4bfdb12625bfbf7d7824cb222b5940efde0800f781bfbfdc5047fcf82a594051d5083c6f15c0bfc2511a87e02a59403b45a5d6874ac0bf230b0b0fd12a59400f5a3aabf882c0bf44c0c8fac52a59409ac78f62bdb9c0bfd6c618f2bb2a59400262c720edf0c0bfd922c858b72a59401a1e1de68728c1bf817918a1b42a5940acc3fba77342c1bf498fbfa9992a59402a2a0e556f87c1bf6b3d4af9922a5940bafe9bd7f58ec1bfe70100d8782a59402495b9bf569cc1bf8a1bd362602a5940e997ff001aa0c1bf00282a744f2a59402afbbef9ae9fc1bfdc312267402a594058ce3debd89ec1bf43950b84302a5940982e4742dda3c1bf9ea036131d2a594052f5442531a2c1bf7fcaa3650d2a59402f60fee36d9ec1bfbb1faaddf729594023c8a2ba498dc1bf77def983e6295940a98e303a2177c1bfb042cd5fd5295940a70040022765c1bf4c4892b6ca295940e879ab7fa05dc1bfad074fafa929594052f94cca2c53c1bf014e51fe90295940b4147f718f52c1bf4d4e31149b2959400f2aa5597325c1bfbc513173a5295940f812ef60abfcc0bf745eb16fb029594097a4e8676ad4c0bf335031c0c1295940a7025c721197c0bf1952b1c7d0295940d394a07bfe5ec0bf294e3186dd29594017e373845328c0bf2e4f312eea29594069d375192fe7bfbfa559b1e4ef2959406d8fe81fffbcbfbf814fb14efe29594081bb032a8d7abfbf2051b136162a5940b9ef6c3a830cbfbf054f3106212a5940de190d4563c3bebf6650b1ec232a5940770b284cd191bebfbb4eb119242a59403eaec8501f71bebf8f4db1001f2a59409ca6535cdb1ebebfff59316c152a59402922ef6903bbbdbf465bb1990d2a59402f6314737576bdbf184eb1a5012a5940a0f0727d0127bdbf714d3109f129594036f5198a37c4bcbf5f4cb104df2959402f2120968963bcbf974db108cc29594083e770a325f5bbbf054d318bba295940eb93eab02f82bbbfbd4c31faa52959400b21efbfa5fdbabf165bb1959929594096265bca059ebabf022b6433972959406b287dc4558bbabf, 'V03.geojson', NULL, NULL),
('4', 'Gurun', NULL, NULL, 'V04.geojson', NULL, NULL),
('5', 'Harau', NULL, NULL, 'V05.geojson', NULL, NULL),
('6', 'Koto Tuo', NULL, NULL, 'V06.geojson', NULL, NULL),
('7', 'Lubuak Batingkok', NULL, NULL, 'V07.geojson', NULL, NULL),
('8', 'Pilubang', NULL, NULL, 'V08.geojson', NULL, NULL),
('9', 'Sarilamak', NULL, NULL, 'V09.geojson', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `worship_place`
--

CREATE TABLE `worship_place` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `worship_place_category` varchar(2) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `worship_place`
--

INSERT INTO `worship_place` (`id`, `name`, `worship_place_category`, `address`, `capacity`, `geom`, `lat`, `lng`, `description`, `created_at`, `updated_at`) VALUES
('W1', 'Masjid Raya Al-Muttaqin', '01', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 100, 0xe610000001030000000100000005000000f5a554ee772a5940ba53f3e79f3abcbff5a59437762a594043365666e547bcbff5a514ff792a59408f7588e57c4ebcbff4a554727b2a5940ad453167dd40bcbff5a554ee772a5940ba53f3e79f3abcbf, '-0.11042109', '100.66362499', 'Masjid Raya Al-Muttaqin adalah sebuah tempat ibadah Islam yang menakjubkan dan penuh makna, terletak di tengah Nagari Tarantang. Dibangun dengan arsitektur yang megah dan indah, masjid ini menjadi ikon keagamaan di Nagari Tarantang.', '2023-12-02 17:11:28', '2023-12-02 17:11:28'),
('W2', 'Mushalla Nurul Ikhlas', '02', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 50, 0xe61000000103000000010000000900000061c9dd3b7d2a594028bbc2bcab9ebcbf60c91d557e2a5940d015e93d7195bcbf62c95df87c2a5940b7dc313e2893bcbf61c9fda37c2a59407049cabd6896bcbf62c93d557c2a5940334bd83df895bcbf61c9dd2d7c2a5940b9779dbdd097bcbf60c95d717c2a5940a440843d9b98bcbf61c99df57b2a59409db00bbd629cbcbf61c9dd3b7d2a594028bbc2bcab9ebcbf, '-0.11170828', '100.66388830', NULL, '2023-12-02 17:16:46', '2023-12-02 17:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `worship_place_category`
--

CREATE TABLE `worship_place_category` (
  `id` varchar(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `worship_place_category`
--

INSERT INTO `worship_place_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
('01', 'Masjid', NULL, NULL),
('02', 'Mushalla', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `worship_place_gallery`
--

CREATE TABLE `worship_place_gallery` (
  `id` varchar(3) NOT NULL,
  `worship_place_id` varchar(2) NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `worship_place_gallery`
--

INSERT INTO `worship_place_gallery` (`id`, `worship_place_id`, `url`, `created_at`, `updated_at`) VALUES
('001', 'W1', '1701583850_fb7d28cbb0d58be5c263.jpg', '2023-12-02 17:11:28', '2023-12-02 17:11:28'),
('002', 'W2', '1701584264_16f1e6ff6ad27213f2f8.jpg', '2023-12-02 17:17:48', '2023-12-02 17:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `account_role_id_foreign` (`role_id`);

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attraction_facility`
--
ALTER TABLE `attraction_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attraction_facility_detail`
--
ALTER TABLE `attraction_facility_detail`
  ADD PRIMARY KEY (`attraction_id`,`attraction_facility_id`),
  ADD KEY `attraction_facility_detail_attraction_facility_id_foreign` (`attraction_facility_id`),
  ADD KEY `attraction_facility_detail_attraction_id_foreign` (`attraction_id`);

--
-- Indexes for table `attraction_gallery`
--
ALTER TABLE `attraction_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attraction_gallery_attraction_id_foreign` (`attraction_id`);

--
-- Indexes for table `attraction_ticket_price`
--
ALTER TABLE `attraction_ticket_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attraction_ticket_price_attraction_id_foreign` (`attraction_id`);

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culinary_place`
--
ALTER TABLE `culinary_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culinary_place_gallery`
--
ALTER TABLE `culinary_place_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `culinary_place_gallery_culinary_place_id_foreign` (`culinary_place_id`);

--
-- Indexes for table `culinary_product`
--
ALTER TABLE `culinary_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culinary_product_detail`
--
ALTER TABLE `culinary_product_detail`
  ADD PRIMARY KEY (`culinary_place_id`,`culinary_product_id`),
  ADD KEY `culinary_product_detail_culinary_product_id_foreign` (`culinary_product_id`),
  ADD KEY `culinary_product_detail_culinary_place_id_foreign` (`culinary_place_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_date`
--
ALTER TABLE `event_date`
  ADD PRIMARY KEY (`event_id`,`date`),
  ADD KEY `event_date_ibfk_1` (`event_id`);

--
-- Indexes for table `event_gallery`
--
ALTER TABLE `event_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_gallery_ibfk_1` (`event_id`);

--
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homestay_owner_foreign` (`owner`);

--
-- Indexes for table `homestay_exclusive_activity`
--
ALTER TABLE `homestay_exclusive_activity`
  ADD PRIMARY KEY (`homestay_id`,`activity_id`),
  ADD KEY `homestay_exclusive_activity_ibfk_1` (`homestay_id`);

--
-- Indexes for table `homestay_facility`
--
ALTER TABLE `homestay_facility`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `homestay_facility_detail`
--
ALTER TABLE `homestay_facility_detail`
  ADD PRIMARY KEY (`homestay_id`,`facility_id`),
  ADD KEY `homestay_facility_detail_facility_id_foreign` (`facility_id`),
  ADD KEY `homestay_facility_detail_homestay_id_foreign` (`homestay_id`);

--
-- Indexes for table `homestay_gallery`
--
ALTER TABLE `homestay_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homestay_gallery_homestay_id_foreign` (`homestay_id`);

--
-- Indexes for table `homestay_unit`
--
ALTER TABLE `homestay_unit`
  ADD PRIMARY KEY (`homestay_id`,`unit_type`,`unit_number`),
  ADD KEY `homestay_unit_unit_type_foreign` (`unit_type`),
  ADD KEY `homestay_unit_homestay_id_foreign` (`homestay_id`);

--
-- Indexes for table `homestay_unit_facility`
--
ALTER TABLE `homestay_unit_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homestay_unit_facility_detail`
--
ALTER TABLE `homestay_unit_facility_detail`
  ADD PRIMARY KEY (`homestay_id`,`unit_type`,`unit_number`,`facility_id`),
  ADD KEY `facility_id` (`facility_id`);

--
-- Indexes for table `homestay_unit_gallery`
--
ALTER TABLE `homestay_unit_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homestay_id` (`homestay_id`,`unit_type`,`unit_number`);

--
-- Indexes for table `homestay_unit_type`
--
ALTER TABLE `homestay_unit_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`homestay_id`,`package_id`),
  ADD KEY `package_ibfk_1` (`homestay_id`);

--
-- Indexes for table `package_day`
--
ALTER TABLE `package_day`
  ADD PRIMARY KEY (`homestay_id`,`package_id`,`day`),
  ADD KEY `package_day_ibfk_1` (`homestay_id`,`package_id`);

--
-- Indexes for table `package_detail`
--
ALTER TABLE `package_detail`
  ADD PRIMARY KEY (`homestay_id`,`package_id`,`day`,`activity`),
  ADD KEY `package_detail_ibfk_1` (`homestay_id`,`package_id`,`day`);

--
-- Indexes for table `package_service`
--
ALTER TABLE `package_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_service_detail`
--
ALTER TABLE `package_service_detail`
  ADD PRIMARY KEY (`homestay_id`,`package_id`,`package_service_id`),
  ADD KEY `package_service_detail_ibfk_2` (`package_service_id`),
  ADD KEY `package_service_detail_ibfk_1` (`homestay_id`,`package_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_ibfk_1` (`customer_id`),
  ADD KEY `reservation_ibfk_2` (`homestay_id`,`package_id`);

--
-- Indexes for table `reservation_homestay_activity_detail`
--
ALTER TABLE `reservation_homestay_activity_detail`
  ADD PRIMARY KEY (`homestay_id`,`homestay_activity_id`,`reservation_id`),
  ADD KEY `reservation_homestay_activity_detail_ibfk_2` (`reservation_id`),
  ADD KEY `reservation_homestay_activity_detail_ibfk_1` (`homestay_id`,`homestay_activity_id`);

--
-- Indexes for table `reservation_homestay_unit_detail`
--
ALTER TABLE `reservation_homestay_unit_detail`
  ADD PRIMARY KEY (`homestay_id`,`unit_type`,`unit_number`,`date`),
  ADD KEY `reservation_homestay_unit_detail_ibfk_2` (`reservation_id`),
  ADD KEY `reservation_homestay_unit_detail_ibfk_1` (`homestay_id`,`unit_type`,`unit_number`);

--
-- Indexes for table `reservation_homestay_unit_detail_backup`
--
ALTER TABLE `reservation_homestay_unit_detail_backup`
  ADD PRIMARY KEY (`homestay_id`,`unit_type`,`unit_number`,`date`,`reservation_id`),
  ADD KEY `reservation_homestay_unit_detail_backup_ibfk_2` (`reservation_id`),
  ADD KEY `reservation_homestay_unit_detail_backup_ibfk_1` (`homestay_id`,`unit_type`,`unit_number`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_service_provider_id_foreign` (`service_provider_id`);

--
-- Indexes for table `service_provider`
--
ALTER TABLE `service_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provider_gallery`
--
ALTER TABLE `service_provider_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_provider_gallery_service_provider_id_foreign` (`service_provider_id`);

--
-- Indexes for table `souvenir_place`
--
ALTER TABLE `souvenir_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenir_place_gallery`
--
ALTER TABLE `souvenir_place_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `souvenir_place_gallery_souvenir_place_id_foreign` (`souvenir_place_id`);

--
-- Indexes for table `souvenir_product`
--
ALTER TABLE `souvenir_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenir_product_detail`
--
ALTER TABLE `souvenir_product_detail`
  ADD PRIMARY KEY (`souvenir_place_id`,`souvenir_product_id`),
  ADD KEY `souvenir_product_detail_souvenir_product_id_foreign` (`souvenir_product_id`),
  ADD KEY `souvenir_product_detail_souvenir_place_id_foreign` (`souvenir_place_id`);

--
-- Indexes for table `subdistrict`
--
ALTER TABLE `subdistrict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourist_area`
--
ALTER TABLE `tourist_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourist_area_gallery`
--
ALTER TABLE `tourist_area_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourist_area_id` (`tourist_area_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_bank_account`
--
ALTER TABLE `user_bank_account`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worship_place`
--
ALTER TABLE `worship_place`
  ADD PRIMARY KEY (`id`),
  ADD KEY `worship_place_worship_place_category_foreign` (`worship_place_category`);

--
-- Indexes for table `worship_place_category`
--
ALTER TABLE `worship_place_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worship_place_gallery`
--
ALTER TABLE `worship_place_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `worship_place_gallery_worship_place_id_foreign` (`worship_place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `attraction_facility_detail`
--
ALTER TABLE `attraction_facility_detail`
  ADD CONSTRAINT `attraction_facility_detail_attraction_facility_id_foreign` FOREIGN KEY (`attraction_facility_id`) REFERENCES `attraction_facility` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attraction_facility_detail_attraction_id_foreign` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attraction_gallery`
--
ALTER TABLE `attraction_gallery`
  ADD CONSTRAINT `attraction_gallery_attraction_id_foreign` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attraction_ticket_price`
--
ALTER TABLE `attraction_ticket_price`
  ADD CONSTRAINT `attraction_ticket_price_attraction_id_foreign` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `culinary_place_gallery`
--
ALTER TABLE `culinary_place_gallery`
  ADD CONSTRAINT `culinary_place_gallery_culinary_place_id_foreign` FOREIGN KEY (`culinary_place_id`) REFERENCES `culinary_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `culinary_product_detail`
--
ALTER TABLE `culinary_product_detail`
  ADD CONSTRAINT `culinary_product_detail_culinary_place_id_foreign` FOREIGN KEY (`culinary_place_id`) REFERENCES `culinary_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `culinary_product_detail_culinary_product_id_foreign` FOREIGN KEY (`culinary_product_id`) REFERENCES `culinary_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_date`
--
ALTER TABLE `event_date`
  ADD CONSTRAINT `event_date_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_gallery`
--
ALTER TABLE `event_gallery`
  ADD CONSTRAINT `event_gallery_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay`
--
ALTER TABLE `homestay`
  ADD CONSTRAINT `homestay_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay_exclusive_activity`
--
ALTER TABLE `homestay_exclusive_activity`
  ADD CONSTRAINT `homestay_exclusive_activity_ibfk_1` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay_facility_detail`
--
ALTER TABLE `homestay_facility_detail`
  ADD CONSTRAINT `homestay_facility_detail_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `homestay_facility` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homestay_facility_detail_homestay_id_foreign` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay_gallery`
--
ALTER TABLE `homestay_gallery`
  ADD CONSTRAINT `homestay_gallery_homestay_id_foreign` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay_unit`
--
ALTER TABLE `homestay_unit`
  ADD CONSTRAINT `homestay_unit_homestay_id_foreign` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homestay_unit_unit_type_foreign` FOREIGN KEY (`unit_type`) REFERENCES `homestay_unit_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `homestay_unit_facility_detail`
--
ALTER TABLE `homestay_unit_facility_detail`
  ADD CONSTRAINT `homestay_unit_facility_detail_ibfk_1` FOREIGN KEY (`homestay_id`,`unit_type`,`unit_number`) REFERENCES `homestay_unit` (`homestay_id`, `unit_type`, `unit_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `homestay_unit_facility_detail_ibfk_2` FOREIGN KEY (`facility_id`) REFERENCES `homestay_unit_facility` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `homestay_unit_gallery`
--
ALTER TABLE `homestay_unit_gallery`
  ADD CONSTRAINT `homestay_unit_gallery_ibfk_1` FOREIGN KEY (`homestay_id`,`unit_type`,`unit_number`) REFERENCES `homestay_unit` (`homestay_id`, `unit_type`, `unit_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_day`
--
ALTER TABLE `package_day`
  ADD CONSTRAINT `package_day_ibfk_1` FOREIGN KEY (`homestay_id`,`package_id`) REFERENCES `package` (`homestay_id`, `package_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_detail`
--
ALTER TABLE `package_detail`
  ADD CONSTRAINT `package_detail_ibfk_1` FOREIGN KEY (`homestay_id`,`package_id`,`day`) REFERENCES `package_day` (`homestay_id`, `package_id`, `day`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `package_service_detail`
--
ALTER TABLE `package_service_detail`
  ADD CONSTRAINT `package_service_detail_ibfk_1` FOREIGN KEY (`homestay_id`,`package_id`) REFERENCES `package` (`homestay_id`, `package_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `package_service_detail_ibfk_2` FOREIGN KEY (`package_service_id`) REFERENCES `package_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`homestay_id`,`package_id`) REFERENCES `package` (`homestay_id`, `package_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reservation_homestay_activity_detail`
--
ALTER TABLE `reservation_homestay_activity_detail`
  ADD CONSTRAINT `reservation_homestay_activity_detail_ibfk_1` FOREIGN KEY (`homestay_id`,`homestay_activity_id`) REFERENCES `homestay_exclusive_activity` (`homestay_id`, `activity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_homestay_activity_detail_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation_homestay_unit_detail`
--
ALTER TABLE `reservation_homestay_unit_detail`
  ADD CONSTRAINT `reservation_homestay_unit_detail_ibfk_1` FOREIGN KEY (`homestay_id`,`unit_type`,`unit_number`) REFERENCES `homestay_unit` (`homestay_id`, `unit_type`, `unit_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_homestay_unit_detail_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation_homestay_unit_detail_backup`
--
ALTER TABLE `reservation_homestay_unit_detail_backup`
  ADD CONSTRAINT `reservation_homestay_unit_detail_backup_ibfk_1` FOREIGN KEY (`homestay_id`,`unit_type`,`unit_number`) REFERENCES `homestay_unit` (`homestay_id`, `unit_type`, `unit_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_homestay_unit_detail_backup_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `service_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_provider_gallery`
--
ALTER TABLE `service_provider_gallery`
  ADD CONSTRAINT `service_provider_gallery_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `service_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `souvenir_place_gallery`
--
ALTER TABLE `souvenir_place_gallery`
  ADD CONSTRAINT `souvenir_place_gallery_souvenir_place_id_foreign` FOREIGN KEY (`souvenir_place_id`) REFERENCES `souvenir_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `souvenir_product_detail`
--
ALTER TABLE `souvenir_product_detail`
  ADD CONSTRAINT `souvenir_product_detail_souvenir_place_id_foreign` FOREIGN KEY (`souvenir_place_id`) REFERENCES `souvenir_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `souvenir_product_detail_souvenir_product_id_foreign` FOREIGN KEY (`souvenir_product_id`) REFERENCES `souvenir_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tourist_area_gallery`
--
ALTER TABLE `tourist_area_gallery`
  ADD CONSTRAINT `tourist_area_gallery_ibfk_1` FOREIGN KEY (`tourist_area_id`) REFERENCES `tourist_area` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `user_bank_account`
--
ALTER TABLE `user_bank_account`
  ADD CONSTRAINT `user_bank_account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `worship_place`
--
ALTER TABLE `worship_place`
  ADD CONSTRAINT `worship_place_worship_place_category_foreign` FOREIGN KEY (`worship_place_category`) REFERENCES `worship_place_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `worship_place_gallery`
--
ALTER TABLE `worship_place_gallery`
  ADD CONSTRAINT `worship_place_gallery_worship_place_id_foreign` FOREIGN KEY (`worship_place_id`) REFERENCES `worship_place` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
