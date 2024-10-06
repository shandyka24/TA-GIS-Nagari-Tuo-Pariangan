-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 11:09 AM
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
-- Database: `pariangan`
--

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
(2, 9),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
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
(313, '::1', 'andi@gmail.com', 9, '2024-01-27 01:01:35', 1),
(314, '::1', 'accadmin1@email.com', 7, '2024-02-25 20:25:15', 1),
(315, '::1', 'accadmin1@email.com', 7, '2024-02-26 19:03:06', 1),
(316, '::1', 'aurahomesta@gmail.com', 13, '2024-02-26 19:27:40', 1),
(317, '::1', 'accadmin1@email.com', 7, '2024-02-27 02:08:36', 1),
(318, '::1', 'accadmin1@email.com', 7, '2024-02-27 02:56:55', 1),
(319, '::1', 'accadmin1@email.com', 7, '2024-02-27 06:23:56', 1),
(320, '::1', 'andi@gmail.com', 9, '2024-02-27 08:38:46', 1),
(321, '::1', 'accadmin1@email.com', 7, '2024-02-27 08:58:10', 1),
(322, '::1', 'andi@gmail.com', 9, '2024-02-27 20:28:47', 1),
(323, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-02-28 01:45:13', 1),
(324, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-02-28 01:46:22', 1),
(325, '::1', 'homestayauraaccount', NULL, '2024-02-28 03:47:09', 0),
(326, '::1', 'aurahomesta@gmail.com', 13, '2024-02-28 03:47:26', 1),
(327, '::1', 'accadmin1@email.com', 7, '2024-02-28 03:58:49', 1),
(328, '::1', 'accadmin1@email.com', 7, '2024-05-30 02:38:57', 1),
(329, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-05-30 02:39:34', 1),
(330, '::1', 'accadmin1@email.com', 7, '2024-05-30 02:41:00', 1),
(331, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-05-30 02:50:43', 1),
(332, '::1', 'daffa@gmail.com', 11, '2024-05-30 02:54:32', 1),
(333, '::1', 'accadmin1@email.com', 7, '2024-05-30 02:55:36', 1),
(334, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-05-30 02:56:31', 1),
(335, '::1', 'daffa@gmail.com', 11, '2024-05-30 03:04:29', 1),
(336, '::1', 'daffa@gmail.com', 11, '2024-06-03 05:25:43', 1),
(337, '::1', 'daffa@gmail.com', 11, '2024-06-03 05:27:06', 1),
(338, '::1', 'accadmin1', NULL, '2024-06-03 05:35:31', 0),
(339, '::1', 'accadmin1', NULL, '2024-06-03 05:35:34', 0),
(340, '::1', 'accadmin1@email.com', 7, '2024-06-03 05:35:38', 1),
(341, '::1', 'accadmin1', NULL, '2024-08-27 09:41:46', 0),
(342, '::1', 'accadmin1', NULL, '2024-08-27 09:41:54', 0),
(343, '::1', 'accadmin1@email.com', 7, '2024-08-27 09:42:04', 1),
(344, '::1', 'accadmin1@email.com', 7, '2024-08-27 10:29:44', 1),
(345, '::1', 'accadmin1@email.com', 7, '2024-09-11 02:09:30', 1),
(346, '::1', 'aa', NULL, '2024-09-14 03:50:57', 0),
(347, '::1', 'accadmin1@email.com', 7, '2024-09-14 03:51:29', 1),
(348, '::1', 'accadmin1@email.com', 7, '2024-09-14 03:52:07', 1),
(349, '::1', 'accadmin1@email.com', 7, '2024-09-14 03:53:55', 1),
(350, '::1', 'accadmin1@email.com', 7, '2024-09-14 03:54:07', 1),
(351, '::1', 'accadmin1@email.com', 7, '2024-09-14 03:56:58', 1),
(352, '::1', 'accadmin1@email.com', 7, '2024-09-14 04:01:15', 1),
(353, '::1', 'accadmin1@email.com', 7, '2024-09-14 04:01:27', 1),
(354, '::1', 'accadmin1@email.com', 7, '2024-09-15 01:35:20', 1),
(355, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-09-15 01:35:39', 1),
(356, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-09-15 01:39:48', 1),
(357, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-09-15 01:40:17', 1),
(358, '::1', 'daffa@gmail.com', 11, '2024-09-15 01:43:07', 1),
(359, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-09-15 01:44:11', 1),
(360, '::1', 'accadmin1', NULL, '2024-09-15 01:45:13', 0),
(361, '::1', 'accadmin1@email.com', 7, '2024-09-15 01:45:22', 1),
(362, '::1', 'daffa@gmail.com', 11, '2024-09-15 01:47:33', 1),
(363, '::1', 'daffa@gmail.com', 11, '2024-09-15 01:48:56', 1),
(364, '::1', 'accadmin1', NULL, '2024-09-15 08:52:13', 0),
(365, '::1', 'accadmin1@email.com', 7, '2024-09-15 08:52:22', 1),
(366, '::1', 'accadmin1@email.com', 7, '2024-09-15 08:53:18', 1),
(367, '::1', 'daffamuyassar', NULL, '2024-09-15 09:58:31', 0),
(368, '::1', 'daffamuyassar', NULL, '2024-09-15 09:58:44', 0),
(369, '::1', 'daffamuyassar', NULL, '2024-09-15 09:59:02', 0),
(370, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-09-15 09:59:25', 1),
(371, '::1', 'accadmin1@email.com', 7, '2024-09-15 10:00:08', 1),
(372, '::1', 'accadmin1@email.com', 7, '2024-09-15 10:01:29', 1),
(373, '::1', 'accadmin1@email.com', 7, '2024-09-15 10:05:56', 1),
(374, '::1', 'homestayharausyafiq@gmail.com', 9, '2024-09-15 22:32:15', 1),
(375, '::1', 'accadmin1@email.com', 7, '2024-09-15 22:32:28', 1),
(376, '::1', 'accadmin1@email.com', 7, '2024-09-16 02:35:08', 1),
(377, '::1', 'accadmin1@email.com', 7, '2024-09-16 07:49:56', 1),
(378, '::1', 'accadmin1@email.com', 7, '2024-09-17 06:41:15', 1),
(379, '::1', 'accadmin1@email.com', 7, '2024-09-18 08:22:45', 1),
(380, '::1', 'accadmin1@email.com', 7, '2024-09-19 03:14:49', 1),
(381, '::1', 'accadmin1@email.com', 7, '2024-09-21 07:51:10', 1),
(382, '::1', 'accadmin1@email.com', 7, '2024-09-23 08:42:08', 1),
(383, '::1', 'accadmin1', NULL, '2024-09-23 08:42:44', 0),
(384, '::1', 'accadmin1@email.com', 7, '2024-09-23 08:57:57', 1),
(385, '::1', 'accadmin1@email.com', 7, '2024-09-26 05:32:57', 1),
(386, '::1', 'accadmin1@email.com', 7, '2024-09-26 11:36:49', 1),
(387, '::1', 'accadmin1@email.com', 7, '2024-09-28 05:02:46', 1),
(388, '::1', 'accadmin1@email.com', 7, '2024-09-28 10:09:28', 1),
(389, '::1', 'accadmin1', NULL, '2024-09-28 22:16:46', 0),
(390, '::1', 'accadmin1@email.com', 7, '2024-09-28 22:16:56', 1),
(391, '::1', 'accadmin1@email.com', 7, '2024-09-29 07:38:31', 1),
(392, '::1', 'homestayaaa@gmail.com', 23, '2024-09-29 07:56:52', 1),
(393, '::1', 'daffamuyassar', NULL, '2024-09-29 08:01:59', 0),
(394, '::1', 'daffamuyassar', NULL, '2024-09-29 08:02:06', 0),
(395, '::1', 'daffa', NULL, '2024-09-29 08:02:41', 0),
(396, '::1', 'daffa@gmail.com', 11, '2024-09-29 08:02:48', 1),
(397, '::1', 'homestayaaa@gmail.com', 23, '2024-09-29 08:04:37', 1),
(398, '::1', 'daffa@gmail.com', 11, '2024-09-29 08:08:38', 1),
(399, '::1', 'accadmin1@email.com', 7, '2024-09-30 07:14:55', 1),
(400, '::1', 'daffa@gmail.com', 11, '2024-09-30 07:15:39', 1),
(401, '::1', 'homestayaaa', NULL, '2024-09-30 07:44:33', 0),
(402, '::1', 'homestayaaa@gmail.com', 23, '2024-09-30 07:44:42', 1),
(403, '::1', 'daffa@gmail.com', 11, '2024-09-30 10:29:55', 1),
(404, '::1', 'daffa@gmail.com', 11, '2024-10-02 02:10:37', 1),
(405, '::1', 'homestayaaa@gmail.com', 23, '2024-10-02 02:21:16', 1),
(406, '::1', 'daffa@gmail.com', 11, '2024-10-02 09:05:43', 1),
(407, '::1', 'daffa', NULL, '2024-10-03 08:08:34', 0),
(408, '::1', 'daffa@gmail.com', 11, '2024-10-03 08:08:46', 1),
(409, '::1', 'homestayaaa@gmail.com', 23, '2024-10-03 08:16:34', 1),
(410, '::1', 'daffa', NULL, '2024-10-03 10:42:14', 0),
(411, '::1', 'daffa@gmail.com', 11, '2024-10-03 10:42:23', 1),
(412, '::1', 'homestayaaa@gmail.com', 23, '2024-10-03 10:43:34', 1),
(413, '::1', 'daffa', NULL, '2024-10-04 06:40:23', 0),
(414, '::1', 'daffa@gmail.com', 11, '2024-10-04 06:40:31', 1),
(415, '::1', 'homestayaaa@gmail.com', 23, '2024-10-04 06:51:33', 1),
(416, '::1', 'homestayaaa@gmail.com', 23, '2024-10-04 10:07:56', 1),
(417, '::1', 'daffa@gmail.com', 11, '2024-10-04 21:54:32', 1),
(418, '::1', 'homestayaaa@gmail.com', 23, '2024-10-04 22:03:12', 1),
(419, '::1', 'daffa', NULL, '2024-10-05 01:46:37', 0),
(420, '::1', 'daffa@gmail.com', 11, '2024-10-05 01:46:47', 1),
(421, '::1', 'homestayaaa@gmail.com', 23, '2024-10-05 01:48:01', 1),
(422, '::1', 'daffa@gmail.com', 11, '2024-10-05 03:27:01', 1),
(423, '::1', 'homestayaaa@gmail.com', 23, '2024-10-05 05:51:00', 1);

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
('004', 'C2', 'C2-1.jpg', '2023-12-02 01:29:02', '2023-12-02 01:29:02'),
('005', 'C3', 'C3-1.jpg', '2023-12-02 13:14:54', '2023-12-02 13:14:54'),
('006', 'C4', 'C4-1.jpg', '2023-12-02 13:18:41', '2023-12-02 13:18:41'),
('007', 'C5', 'C5-1.jpg', '2023-12-02 13:22:18', '2023-12-02 13:22:18'),
('008', 'C6', 'C6-1.jpg', '2023-12-02 13:25:11', '2023-12-02 13:25:11'),
('009', 'C7', 'C7-1.jpg', '2023-12-02 13:27:05', '2023-12-02 13:27:05'),
('010', 'C8', 'C8-1.jpg', '2023-12-02 13:30:53', '2023-12-02 13:30:53'),
('011', 'C9', 'C9-1.jpg', '2023-12-02 14:33:08', '2023-12-02 14:33:08'),
('012', 'C1', 'C1-1.jpg', '2023-12-03 16:13:40', '2023-12-03 16:13:40'),
('013', 'C1', 'C1-2.jpg', '2023-12-03 16:13:40', '2023-12-03 16:13:40'),
('015', 'C10', 'C10-1.jpg', '2023-12-03 16:15:09', '2023-12-03 16:15:09'),
('016', 'C11', 'C11-1.jpg', '2023-12-03 16:15:48', '2023-12-03 16:15:48'),
('017', 'C12', 'C12-1.jpg', '2023-12-03 16:16:40', '2023-12-03 16:16:40'),
('018', 'C13', 'C13-1.jpg', '2023-12-03 16:17:36', '2023-12-03 16:17:36'),
('019', 'C13', 'C13-2.jpg', '2023-12-03 16:17:36', '2023-12-03 16:17:36');

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
('C1', '02', 5000, 'C1P-1.jpg', NULL, '2023-12-02 01:23:06', '2023-12-02 01:23:06'),
('C13', '04', 20000, 'C13P-1.jpg', NULL, '2023-12-02 15:17:05', '2023-12-02 15:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `homestay`
--

CREATE TABLE `homestay` (
  `id` varchar(3) NOT NULL,
  `village_id` varchar(3) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `geom` geometry DEFAULT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `owner` int UNSIGNED NOT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` char(1) NOT NULL,
  `profil_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `homestay`
--

INSERT INTO `homestay` (`id`, `village_id`, `name`, `address`, `geom`, `lat`, `lng`, `owner`, `open`, `close`, `description`, `created_at`, `updated_at`, `category`, `profil_link`) VALUES
('H01', NULL, 'Homestay Harau Syafiq', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe6100000010300000001000000090000005a4b0163b62a5940655a3f7f85dbbcbf594b4149bd2a59403e620c7ca8f4bcbf594bc11ec22a5940d697c6796906bdbf594b4173c02a59405a28cbf80e0ebdbf584b81cabf2a594040dd65782211bdbf594ba146ba2a594085b2737a2301bdbf4a390f21b32a594040c41cc5abe5bcbf4b398f48b12a5940b949544617dcbcbf5a4b0163b62a5940655a3f7f85dbbcbf, '-0.11313367', '100.66758434', 9, '10:00:00', '18:00:00', 'Homestay Harau Syafiq adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 12:22:25', '2024-02-26 12:22:25', '', ''),
('H02', NULL, 'Homestay Aura', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe610000001030000000100000005000000564e8a909f2a594017a1314be2eebabf564e0a8b9d2a59401970e44b8ee8babf574eca47992a594058e5f749f5f9babf574eca639b2a5940e82ff948ec02bbbf564e8a909f2a594017a1314be2eebabf, '-0.10531219', '100.66579727', 13, '10:00:00', '18:00:00', 'Homestay Aura adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 12:59:05', '2024-02-26 14:05:06', '', ''),
('H03', NULL, 'Meliya Homestay', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe61000000103000000010000000600000018eccacd8c2a5940e7fa5eed7961bbbf18eccaec8b2a5940648434ecab6bbbbf18ecca388b2a5940cb5a4ceb9473bbbf18ec0a28892a594091e0dceba86ebbbf18eccade8a2a5940c391c0ed225ebbbf18eccacd8c2a5940e7fa5eed7961bbbf, '-0.10706877', '100.66473267', 14, '10:00:00', '18:00:00', 'Meliya Homestay adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 15:58:36', '2024-02-26 15:58:36', '', ''),
('H04', NULL, 'Abyan Homestay', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe610000001030000000100000007000000f2a9ae22802a594044bcf1de0b67bcbff3a94e09812a59400fe9e35e7c67bcbff4a9ae03812a5940c80f3d615354bcbff2a9ce5d7f2a5940ff0e53619f53bcbff3a9ee4c7f2a5940c151b05ffb60bcbff3a98e527f2a5940e58bff5e9b66bcbff2a9ae22802a594044bcf1de0b67bcbf, '-0.11080252', '100.66407278', 15, '10:00:00', '18:00:00', 'Abyan Homestay adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:04:25', '2024-02-26 16:06:12', '', ''),
('H05', NULL, 'Homestay Bilza', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe61000000103000000010000000b0000007bfb35a98d2a59400487a321773bbdbf7bfb150e942a5940672d9ca2fe33bdbf7bfb151c952a59400e49d5a1f839bdbf7cfbb55f932a594081c05b619e3dbdbf7bfbc59a932a5940ab371341cb3fbdbf7afb1598912a5940ad3384201444bdbf7afbd513922a5940e035c81fb449bdbf7bfb5568902a594029c17b1ffd4bbdbf7afb35c58f2a59403d5d20201147bdbf7afb55a68e2a5940613df71f4c48bdbf7bfb35a98d2a59400487a321773bbdbf, '-0.11425769', '100.66512362', 16, '10:00:00', '18:00:00', 'Homestay Bilza adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:12:45', '2024-02-26 16:12:45', '', ''),
('H06', NULL, 'Homestay IBU', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe610000001030000000100000005000000fadfac346a2a5940ef6629841954bebffadf6cf96c2a594059de71041452bebffbdfac5e6d2a5940b77372833259bebffadfacbb6a2a594052321d03925bbebffadfac346a2a5940ef6629841954bebf, '-0.11851233', '100.66282884', 17, '10:00:00', '18:00:00', 'Homestay IBU adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:24:11', '2024-02-26 16:24:11', '', ''),
('H07', NULL, 'Dangau Pitossa', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe610000001030000000100000007000000cd71909ce82a59402f6520800d9bbcbfcd711050f12a5940bfb6887dcbafbcbfcd7110c0f92a59409c158d796fcfbcbfcc711033ff2a59408ddc177d4fb3bcbfcc711061ef2a5940094a9e83ed7ebcbfcc71101ee72a5940ef167a803d98bcbfcd71909ce82a59402f6520800d9bbcbf, '-0.11192599', '100.67109121', 18, '10:00:00', '18:00:00', 'Dangau pitossa adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:36:27', '2024-02-26 16:36:27', '', ''),
('H08', NULL, 'Oston Homestay', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe61000000103000000010000000500000076db4060f92a5940f8d7ecf1a131bcbf75db0060fd2a594083633b73d226bcbf75db4038032b59402b7fefee3d4abcbf75dbc0caff2a59404c96376e2150bcbf76db4060f92a5940f8d7ecf1a131bcbf, '-0.11028254', '100.67177111', 19, '10:00:00', '18:00:00', 'Oston Homestay adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:43:34', '2024-02-26 16:43:34', '', ''),
('H09', NULL, 'Megahomestay', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe6100000010300000001000000050000003c1b76f5082b594075ac5c818d15bcbf3c1bf6fa0a2b5940d7cd907ec12cbcbf3b1b36b70e2b59400bbf187f5c28bcbf3c1b36f50c2b59400e667980ef1cbcbf3c1b76f5082b594075ac5c818d15bcbf, '-0.10988089', '100.67259749', 20, '10:00:00', '18:00:00', 'Oston Homestay adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:47:02', '2024-02-26 16:47:02', '', ''),
('H10', NULL, 'Dangau Abah Homestay', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe61000000103000000010000000b0000006d9223fd2a2b59407b6a1e0c4e06bcbf6e92e3dd2f2b5940b31efe0b5c07bcbf6e9263c72f2b594053cd2409171fbcbf6d9223e6322b594094b20909f81fbcbf6e92a3cf322b59404e4ba307922bbcbf6e92e321282b594068dd9d07bf2bbcbf6e92632a272b5940ad4404092520bcbf6d9223492a2b59400a275009af1dbcbf6e92233b292b59407905720bee0bbcbf6e92e3c42a2b5940a168770bc10bbcbf6d9223fd2a2b59407b6a1e0c4e06bcbf, '-0.10975686', '100.67462355', 21, '10:00:00', '18:00:00', 'Oston Homestay adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 16:55:41', '2024-02-26 16:55:41', '', ''),
('H11', NULL, 'Limpato Homestay', 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', 0xe61000000103000000010000000500000080afea2f6b2a59406e3aed395306bebf80afcaf46b2a5940f281c4b6431dbebf81af4a276e2a59405be7ec361f1cbebf80afaa6d6d2a59400e1c0c3a7205bebf80afea2f6b2a59406e3aed395306bebf, '-0.11745232', '100.66288271', 22, '10:00:00', '18:00:00', 'Limpato Homestay adalah sebuah penginapan yang nyaman dan bersahaja yang terletak di Lembah Harau, sebuah destinasi alam yang indah di Sumatera Barat, Indonesia. Penginapan ini menawarkan pengalaman menginap yang autentik dan dekat dengan alam, dengan pemandangan yang memukau dari tebing batu yang mengelilingi lembah.', '2024-02-26 19:17:47', '2024-02-26 19:20:24', '', ''),
('H12', '1', 'Homestay aaa', 'Address 1 ', 0xe6100000010300000001000000050000000613e5e17f1f5940cf06575bfd1eddbf051345bd801f5940807d9cdc5f1eddbf05134509801f5940c203101f301dddbf0413c5117f1f5940d384edbdbc1dddbf0613e5e17f1f5940cf06575bfd1eddbf, '-0.45496148', '100.49218166', 23, '00:00:00', '23:59:00', 'des', '2024-09-26 05:27:13', '2024-09-26 05:27:13', '', ''),
('H13', '1', 'Homestay bbb', 'Address 1 ', 0xe610000001030000000100000005000000181ce04c891f5940b5c731b3ac9edcbf181ca07c8a1f5940ca6ae5b3529edcbf181c002b8b1f5940b911f590cb9fdcbf181cc0e4891f5940b2baf2ef4ca0dcbf181ce04c891f5940b5c731b3ac9edcbf, '-0.44722362', '100.49281214', 24, '00:00:00', '23:59:00', 'des', '2024-09-27 22:09:00', '2024-09-27 22:09:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_additional_amenities`
--

CREATE TABLE `homestay_additional_amenities` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `additional_amenities_id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(1) NOT NULL,
  `price` int NOT NULL,
  `is_order_count_per_day` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `is_order_count_per_person` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `is_order_count_per_room` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `stock` int NOT NULL,
  `description` text NOT NULL,
  `image_url` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_additional_amenities`
--

INSERT INTO `homestay_additional_amenities` (`homestay_id`, `additional_amenities_id`, `name`, `category`, `price`, `is_order_count_per_day`, `is_order_count_per_person`, `is_order_count_per_room`, `stock`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
('H01', '01', 'Breakfast', '2', 15000, '1', '1', '', 0, 'Sarapan dengan menu yang dapat dipilih ketika menginap', '1709108441_15e566c51441ddbb6f12.jpg', '2024-02-27 19:20:43', '2024-02-27 19:20:43'),
('H01', '02', 'Lunch', '2', 25000, '1', '1', '', 0, 'Makan siang dengan menu yang dapat dipilih ketika menginap', '1709108493_8acb29efb0b2f28978f1.jpg', '2024-02-27 19:21:42', '2024-02-27 19:21:42'),
('H01', '03', 'Dinner', '2', 25000, '1', '1', '', 0, 'Makan malam dengan menu yang dapat dipilih ketika menginap', '1709108535_ef01c134ee1e28296108.jpg', '2024-02-27 19:22:17', '2024-02-27 19:22:17'),
('H01', '04', 'Mattress', '1', 50000, '', '', '1', 5, 'Kasur tambahan', '1709108595_9cb67fef27d471f093ce.jpg', '2024-02-27 19:23:18', '2024-02-27 19:23:18'),
('H01', '05', 'Bathroom amenities', '1', 20000, '', '1', '', 0, 'Perlengkapan mandi', '1709108729_0c2892841396fba08924.jpeg', '2024-02-27 19:25:32', '2024-02-27 19:25:32'),
('H01', '06', 'Equipment for grilling', '1', 30000, '', '', '', 5, 'Perlengkapan untuk bakar-bakar', '1709108832_5a375e35ec18bb648e8f.jpg', '2024-02-27 19:27:20', '2024-02-27 19:27:20'),
('H12', '01', 'Kasur', '1', 100000, '0', '0', '0', 5, 'des', '1727615240_1cb4af5b1784dcfbaf7d.png', '2024-09-29 01:07:22', '2024-09-29 01:07:22'),
('H12', '02', 'Pijat Relaksasi', '2', 100000, '0', '1', '0', 0, 'tes', '1727615278_b042c7317103edd06d63.png', '2024-09-29 01:08:13', '2024-09-29 01:08:13'),
('H12', '03', 'Sarapan', '2', 15000, '1', '1', '0', 0, 'sarapan enak', '1727700339_8f7c6229898833d4d8a2.png', '2024-09-30 00:45:42', '2024-09-30 00:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_certification`
--

CREATE TABLE `homestay_certification` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `certification_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `certificate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `certificate_num` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `certifying_agency` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date` date NOT NULL,
  `description` text,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `homestay_certification`
--

INSERT INTO `homestay_certification` (`homestay_id`, `certification_id`, `certificate_name`, `certificate_num`, `certifying_agency`, `date`, `description`, `image_url`) VALUES
('H12', '001', 'aaaa', '111', 'aaa', '2024-10-05', 'aaa', '1728133396_9210f340d84dbc9449db.png'),
('H12', '002', 'bbb', '222', 'bbb', '2024-10-05', 'bbb', '1728132235_031fe81fdba4d90c9c3f.png');

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
('H01', '01', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('H01', '02', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('H01', '03', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('H01', '04', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('H01', '05', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('H01', '06', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('H02', '01', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('H02', '02', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('H02', '03', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('H02', '06', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('H03', '01', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('H03', '03', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('H03', '05', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('H03', '06', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('H04', '01', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('H04', '02', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('H04', '03', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('H05', '01', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('H05', '02', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('H05', '03', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('H05', '05', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('H05', '06', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('H06', '01', '2024-02-26 16:24:11', '2024-02-26 16:24:11'),
('H07', '01', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('H07', '02', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('H07', '03', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('H07', '04', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('H07', '05', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('H07', '06', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('H08', '01', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('H08', '02', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('H08', '03', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('H08', '04', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('H08', '05', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('H08', '06', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('H09', '01', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('H09', '02', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('H09', '03', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('H09', '05', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('H09', '06', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('H10', '01', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('H10', '02', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('H10', '03', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('H10', '04', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('H10', '06', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('H11', '01', '2024-02-26 19:20:24', '2024-02-26 19:20:24'),
('H11', '06', '2024-02-26 19:20:24', '2024-02-26 19:20:24'),
('H12', '01', '2024-09-26 05:27:13', '2024-09-26 05:27:13'),
('H12', '06', '2024-09-26 05:27:13', '2024-09-26 05:27:13'),
('H13', '01', '2024-09-27 22:09:00', '2024-09-27 22:09:00'),
('H13', '04', '2024-09-27 22:09:00', '2024-09-27 22:09:00'),
('H13', '06', '2024-09-27 22:09:00', '2024-09-27 22:09:00');

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
('001', 'H01', '1708996942_a0187ce30534a5d19779.jpg', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('002', 'H01', '1708996756_23818827877eb8777f4f.jpg', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('003', 'H01', '1708996733_0459e7788d8cd3204108.jpg', '2024-02-26 12:22:25', '2024-02-26 12:22:25'),
('004', 'H01', '1708996735_ad723e3380fffc979c22.jpg', '2024-02-26 12:22:26', '2024-02-26 12:22:26'),
('005', 'H01', '1708996733_669be0e9573b4cc7bd81.jpg', '2024-02-26 12:22:26', '2024-02-26 12:22:26'),
('006', 'H01', '1708996704_30f2c3d0080c208f327f.jpg', '2024-02-26 12:22:26', '2024-02-26 12:22:26'),
('007', 'H02', '1709003046_136681fff32821764426.jpg', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('008', 'H02', '1709003048_526e1184880a0be1b510.jpg', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('009', 'H02', '1709003048_cea56da3bcd3e294d4ca.jpg', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('010', 'H02', '1709003046_fa1fd3796cf0e0a6524f.jpg', '2024-02-26 14:05:06', '2024-02-26 14:05:06'),
('011', 'H03', '1709009913_38ec234c6c8410d8f024.jpg', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('012', 'H03', '1709009901_64202b8e394cc2aad90f.jpg', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('013', 'H03', '1709009902_7aa91ee4c6b4b7664b38.jpg', '2024-02-26 15:58:36', '2024-02-26 15:58:36'),
('014', 'H04', '1709010307_2ab7305c50f7691a1a3c.jpg', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('015', 'H04', '1709010307_e958d35b54973534718a.jpg', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('016', 'H04', '1709010311_59592c3b76ed99cdbc40.jpg', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('017', 'H04', '1709010311_9a0dca992e1bdcc61496.jpg', '2024-02-26 16:06:12', '2024-02-26 16:06:12'),
('018', 'H05', '1709010753_123aa13d80dceeebc438.jpg', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('019', 'H05', '1709010753_fb8b97fef7c9b5726fd6.jpg', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('020', 'H05', '1709010756_20509d45f03a50ec2795.jpg', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('021', 'H05', '1709010756_37ea35ccf9b09dd17bc2.jpg', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('022', 'H05', '1709010751_05d184d986687335ea72.jpg', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('023', 'H05', '1709010750_b848d619d4223be3749a.jpg', '2024-02-26 16:12:46', '2024-02-26 16:12:46'),
('024', 'H06', '1709011448_819d97a6d86d3dc6294f.jpg', '2024-02-26 16:24:11', '2024-02-26 16:24:11'),
('025', 'H07', '1709012184_96150c0d81232727ad9d.jpg', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('026', 'H07', '1709012157_192c3c457d626e89d983.jpg', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('027', 'H07', '1709012136_a35f9801b8f5f331eff8.jpg', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('028', 'H07', '1709012113_5c38dcf83657d231773c.jpg', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('029', 'H07', '1709012112_83b76692148ec9b1b9d3.jpg', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('030', 'H07', '1709012115_6b82af8c4149003fdf52.jpg', '2024-02-26 16:36:27', '2024-02-26 16:36:27'),
('031', 'H08', '1709012606_c7b17b2ec7e4c265d284.jpg', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('032', 'H08', '1709012604_c399f4fadbeb4e943625.jpg', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('033', 'H08', '1709012603_8256e6540187320d4a74.jpg', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('034', 'H08', '1709012606_4a8028d98071cdc4dafc.jpg', '2024-02-26 16:43:34', '2024-02-26 16:43:34'),
('035', 'H09', '1709012814_d99a10ab32c005a0c3d7.jpg', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('036', 'H09', '1709012811_80bd16e0bfb315386cb2.jpg', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('037', 'H09', '1709012811_8a5597f02c03e659b2ae.jpg', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('038', 'H09', '1709012813_6633d657e10d01382dcb.jpg', '2024-02-26 16:47:02', '2024-02-26 16:47:02'),
('039', 'H10', '1709013336_9cf3df566c684739671d.jpg', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('040', 'H10', '1709013328_235f274ef77dad5b9707.jpg', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('041', 'H10', '1709013308_880ffbabd9297a05a02a.jpg', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('042', 'H10', '1709013312_eab8d2fd7f414955cbb7.jpg', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('043', 'H10', '1709013308_bba2e566121a4fd432b7.jpg', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('044', 'H10', '1709013311_f6a981f624467a133917.jpg', '2024-02-26 16:55:41', '2024-02-26 16:55:41'),
('045', 'H11', '1709022020_203ac63eadbc7865792b.jpg', '2024-02-26 19:20:24', '2024-02-26 19:20:24'),
('046', 'H11', '1709022021_0c0449818d7637b39352.jpg', '2024-02-26 19:20:24', '2024-02-26 19:20:24'),
('047', 'H11', '1709022022_ea237737fe250c819431.jpg', '2024-02-26 19:20:24', '2024-02-26 19:20:24'),
('048', 'H12', '1727371628_3542b44db898a7086570.png', '2024-09-26 05:27:13', '2024-09-26 05:27:13'),
('049', 'H12', '1727371629_43f46daaeffa22ad3b94.png', '2024-09-26 05:27:13', '2024-09-26 05:27:13'),
('050', 'H12', '1727371630_078d47c2f5afac16855d.png', '2024-09-26 05:27:13', '2024-09-26 05:27:13'),
('051', 'H13', '1727518067_7b1f7491c7731379d7d4.png', '2024-09-27 22:09:00', '2024-09-27 22:09:00'),
('052', 'H13', '1727518066_3a842ba3f1336f493577.png', '2024-09-27 22:09:00', '2024-09-27 22:09:00'),
('053', 'H13', '1727518068_81cb9bae51fb9f8dddc9.png', '2024-09-27 22:09:00', '2024-09-27 22:09:00');

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
('H01', '1', '1', 'Kamar 1', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 01:56:15', '2024-02-27 02:36:04'),
('H01', '1', '10', 'Kamar 10', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 13:39:10', '2024-02-27 13:39:10'),
('H01', '1', '11', 'Kamar 11', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 13:42:10', '2024-02-27 13:42:10'),
('H01', '1', '12', 'Kamar 12', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 13:43:37', '2024-02-27 13:43:37'),
('H01', '1', '13', 'Kamar 13', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 13:44:48', '2024-02-27 13:44:48'),
('H01', '1', '14', 'Rumah Barbie', 600000, 8, 'This villa is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 14:28:13', '2024-02-27 14:28:13'),
('H01', '1', '2', 'Kamar 2', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 02:49:40', '2024-02-27 02:49:40'),
('H01', '1', '3', 'Kamar 3', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 02:51:43', '2024-02-27 02:51:43'),
('H01', '1', '4', 'Kamar 4', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 02:54:11', '2024-02-27 02:54:11'),
('H01', '1', '5', 'Kamar 5', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 02:56:21', '2024-02-27 02:56:21'),
('H01', '1', '6', 'Kamar 6', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 02:58:49', '2024-02-27 02:58:49'),
('H01', '1', '7', 'Kamar 7', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 03:01:02', '2024-02-27 03:01:02'),
('H01', '1', '8', 'Kamar 8', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 13:36:04', '2024-02-27 13:36:04'),
('H01', '1', '9', 'Kamar 9', 350000, 3, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 13:37:49', '2024-02-27 13:37:49'),
('H02', '1', '1', 'Kamar 1', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 20:58:10', '2024-02-27 20:58:10'),
('H02', '1', '2', 'Kamar 2', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:00:43', '2024-02-27 21:00:43'),
('H02', '1', '3', 'Kamar 3', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:01:09', '2024-02-27 21:01:09'),
('H02', '1', '4', 'Kamar 4', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:02:08', '2024-02-27 21:02:08'),
('H02', '1', '5', 'Kamar 5', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:02:52', '2024-02-27 21:02:52'),
('H02', '1', '6', 'Kamar 6', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:11:35', '2024-02-27 21:11:35'),
('H02', '1', '7', 'Kamar 7', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:12:31', '2024-02-27 21:12:31'),
('H02', '1', '8', 'Kamar 8', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:13:30', '2024-02-27 21:13:30'),
('H02', '1', '9', 'Kamar 9 ', 350000, 2, 'This homestay room is a comfortable place to rest during your holiday. With simple but attractive decoration, this room is equipped with a comfortable bed and is clean', '2024-02-27 21:14:30', '2024-02-27 21:14:30'),
('H12', '1', '1', 'Kamar 1', 100000, 2, NULL, '2024-09-29 01:05:21', '2024-09-29 01:05:21'),
('H12', '1', '2', 'Kamar 2', 200000, -1, NULL, '2024-09-29 01:05:52', '2024-09-29 01:05:52'),
('H12', '1', '3', 'Kamar 3', 150000, 2, NULL, '2024-09-29 01:06:32', '2024-09-29 01:06:32');

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
('03', 'Stove', '2023-12-06 14:34:47', '2024-02-27 02:40:22'),
('04', 'TV', '2023-12-06 14:47:37', '2023-12-06 14:47:37'),
('05', 'Refridgerator', '2023-12-07 15:00:07', '2024-02-27 02:40:01'),
('06', 'Toilet', '2024-02-27 01:58:47', '2024-02-27 01:58:47'),
('07', 'Bed', '2024-02-27 02:00:17', '2024-02-27 02:00:17'),
('08', 'Fan', '2024-02-27 20:59:04', '2024-02-27 20:59:04');

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
('H01', '1', '1', '06', 'toilet in room', '2024-02-27 02:39:15', '2024-02-27 02:39:15'),
('H01', '1', '1', '07', '1 single bed, 1 double bed', '2024-02-27 02:37:17', '2024-02-27 02:37:17'),
('H01', '1', '10', '06', 'toilet in room', '2024-02-27 13:39:49', '2024-02-27 13:39:49'),
('H01', '1', '10', '07', '1 single bed, 1 double bed', '2024-02-27 13:39:31', '2024-02-27 13:39:31'),
('H01', '1', '11', '06', 'toilet in room', '2024-02-27 13:42:57', '2024-02-27 13:42:57'),
('H01', '1', '11', '07', '1 single bed, 1 double bed', '2024-02-27 13:42:41', '2024-02-27 13:42:41'),
('H01', '1', '12', '06', 'toilet in room', '2024-02-27 13:43:55', '2024-02-27 13:43:55'),
('H01', '1', '12', '07', '1 single bed, 1 double bed', '2024-02-27 13:44:08', '2024-02-27 13:44:08'),
('H01', '1', '2', '06', 'toilet in room', '2024-02-27 02:50:11', '2024-02-27 02:50:11'),
('H01', '1', '2', '07', '1 single bed, 1 double bed', '2024-02-27 02:50:37', '2024-02-27 02:50:37'),
('H01', '1', '3', '06', 'toilet in room', '2024-02-27 02:52:57', '2024-02-27 02:52:57'),
('H01', '1', '3', '07', '1 single bed, 1 double bed', '2024-02-27 02:52:39', '2024-02-27 02:52:39'),
('H01', '1', '4', '06', 'toilet in room', '2024-02-27 02:55:18', '2024-02-27 02:55:18'),
('H01', '1', '4', '07', '1 single bed, 1 double bed', '2024-02-27 02:55:34', '2024-02-27 02:55:34'),
('H01', '1', '5', '06', 'toilet in room', '2024-02-27 02:56:41', '2024-02-27 02:56:41'),
('H01', '1', '5', '07', '1 single bed, 1 double bed', '2024-02-27 02:56:58', '2024-02-27 02:56:58'),
('H01', '1', '6', '06', 'toilet in room', '2024-02-27 02:59:46', '2024-02-27 02:59:46'),
('H01', '1', '6', '07', '1 single bed, 1 double bed', '2024-02-27 02:59:19', '2024-02-27 02:59:19'),
('H01', '1', '7', '06', 'toilet in room', '2024-02-27 03:01:35', '2024-02-27 03:01:35'),
('H01', '1', '7', '07', '1 single bed, 1 double bed', '2024-02-27 03:01:22', '2024-02-27 03:01:22'),
('H01', '1', '8', '06', 'toilet in room', '2024-02-27 13:36:24', '2024-02-27 13:36:24'),
('H01', '1', '8', '07', '1 single bed, 1 double bed', '2024-02-27 13:36:46', '2024-02-27 13:36:46'),
('H01', '1', '9', '06', 'toilet in room', '2024-02-27 13:40:04', '2024-02-27 13:40:04'),
('H01', '1', '9', '07', '1 single bed, 1 double bed', '2024-02-27 13:40:19', '2024-02-27 13:40:19'),
('H02', '1', '1', '07', 'Double bed', '2024-02-27 20:59:32', '2024-02-27 20:59:32'),
('H02', '1', '1', '08', NULL, '2024-02-27 20:59:52', '2024-02-27 20:59:52'),
('H02', '1', '3', '07', 'Double bed', '2024-02-27 21:01:23', '2024-02-27 21:01:23'),
('H02', '1', '3', '08', NULL, '2024-02-27 21:01:32', '2024-02-27 21:01:32'),
('H02', '1', '4', '07', 'Double bed', '2024-02-27 21:03:49', '2024-02-27 21:03:49'),
('H02', '1', '4', '08', NULL, '2024-02-27 21:03:57', '2024-02-27 21:03:57'),
('H02', '1', '5', '07', 'Double bed', '2024-02-27 21:03:09', '2024-02-27 21:03:09'),
('H02', '1', '5', '08', NULL, '2024-02-27 21:03:16', '2024-02-27 21:03:16'),
('H02', '1', '6', '07', 'Double bed', '2024-02-27 21:11:52', '2024-02-27 21:11:52'),
('H02', '1', '6', '08', NULL, '2024-02-27 21:12:00', '2024-02-27 21:12:00'),
('H02', '1', '7', '07', 'Double bed', '2024-02-27 21:12:44', '2024-02-27 21:12:44'),
('H02', '1', '7', '08', NULL, '2024-02-27 21:12:52', '2024-02-27 21:12:52'),
('H02', '1', '8', '07', 'Double bed', '2024-02-27 21:13:46', '2024-02-27 21:13:46'),
('H02', '1', '8', '08', NULL, '2024-02-27 21:13:56', '2024-02-27 21:13:56');

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
('001', 'H01', '1', '1', '1709048137_33da4cd2457d45d6753f.jpg', '2024-02-27 02:36:04', '2024-02-27 02:36:04'),
('002', 'H01', '1', '1', '1709048136_f4828cd6163e17399e0a.jpg', '2024-02-27 02:36:04', '2024-02-27 02:36:04'),
('003', 'H01', '1', '2', '1709048959_a639287ae4825fa670c1.jpg', '2024-02-27 02:49:41', '2024-02-27 02:49:41'),
('004', 'H01', '1', '2', '1709048941_7ab7c9172b40439ad887.jpg', '2024-02-27 02:49:41', '2024-02-27 02:49:41'),
('005', 'H01', '1', '3', '1709049101_4e58552968da3d2aacb4.jpg', '2024-02-27 02:51:43', '2024-02-27 02:51:43'),
('006', 'H01', '1', '3', '1709049092_c731f125bfd623c1bb31.jpg', '2024-02-27 02:51:43', '2024-02-27 02:51:43'),
('007', 'H01', '1', '4', '1709049246_2eb0c8f50bbe8ed7fe07.jpg', '2024-02-27 02:54:11', '2024-02-27 02:54:11'),
('008', 'H01', '1', '4', '1709049236_3d72adadc95e451e0aa5.jpg', '2024-02-27 02:54:11', '2024-02-27 02:54:11'),
('009', 'H01', '1', '5', '1709049379_a0ab403704768fe12008.jpg', '2024-02-27 02:56:21', '2024-02-27 02:56:21'),
('010', 'H01', '1', '6', '1709049526_05e84963f460200fb9ed.jpg', '2024-02-27 02:58:49', '2024-02-27 02:58:49'),
('011', 'H01', '1', '6', '1709049517_7cf01fd8a1b057ec0d67.jpg', '2024-02-27 02:58:49', '2024-02-27 02:58:49'),
('012', 'H01', '1', '7', '1709049658_2dd9b63de577f65f2be7.jpg', '2024-02-27 03:01:02', '2024-02-27 03:01:02'),
('013', 'H01', '1', '7', '1709049650_9763ebc12c88a6d0a6be.jpg', '2024-02-27 03:01:02', '2024-02-27 03:01:02'),
('014', 'H01', '1', '8', '1709087762_8c322c07fbb8715a6c16.jpg', '2024-02-27 13:36:05', '2024-02-27 13:36:05'),
('015', 'H01', '1', '9', '1709087866_d45d26763fc16c4b5221.jpg', '2024-02-27 13:37:49', '2024-02-27 13:37:49'),
('016', 'H01', '1', '9', '1709087857_eb25ebd9258f1a26e023.jpg', '2024-02-27 13:37:49', '2024-02-27 13:37:49'),
('017', 'H01', '1', '10', '1709087947_b581c478dd5447dcc977.jpg', '2024-02-27 13:39:10', '2024-02-27 13:39:10'),
('018', 'H01', '1', '10', '1709087935_58eaa6d4557ca3b2efd7.jpg', '2024-02-27 13:39:10', '2024-02-27 13:39:10'),
('019', 'H01', '1', '11', '1709088128_3cce2f9c10e18c639b46.jpg', '2024-02-27 13:42:10', '2024-02-27 13:42:10'),
('020', 'H01', '1', '11', '1709088121_060e6b763bb9c2103c78.jpg', '2024-02-27 13:42:10', '2024-02-27 13:42:10'),
('021', 'H01', '1', '12', '1709088215_2e2f53467cca2fa7913f.jpg', '2024-02-27 13:43:37', '2024-02-27 13:43:37'),
('022', 'H01', '1', '12', '1709088210_e929bf3e5f0a9de6002f.jpg', '2024-02-27 13:43:37', '2024-02-27 13:43:37'),
('023', 'H01', '1', '13', '1709088285_18320006cf92743d41a5.jpg', '2024-02-27 13:44:48', '2024-02-27 13:44:48'),
('024', 'H01', '1', '14', '1709090887_7bcaf37569300e0ea0d3.jpg', '2024-02-27 14:28:13', '2024-02-27 14:28:13'),
('025', 'H01', '1', '14', '1709090818_eb933525341cffa99209.jpg', '2024-02-27 14:28:13', '2024-02-27 14:28:13'),
('026', 'H01', '1', '14', '1709090807_7f4892280beb29e29565.jpg', '2024-02-27 14:28:13', '2024-02-27 14:28:13'),
('027', 'H01', '1', '14', '1709090806_e32135f2176fd80b698a.jpg', '2024-02-27 14:28:13', '2024-02-27 14:28:13'),
('028', 'H01', '1', '14', '1709090808_ac04f57d00c9b6512a8e.jpg', '2024-02-27 14:28:13', '2024-02-27 14:28:13'),
('029', 'H02', '1', '1', '1709114288_fbcd38b91d0eaa988aaf.jpg', '2024-02-27 20:58:10', '2024-02-27 20:58:10'),
('030', 'H02', '1', '3', '1709114466_53ec48de09dcce5be4c9.jpg', '2024-02-27 21:01:09', '2024-02-27 21:01:09'),
('031', 'H02', '1', '4', '1709114525_68d14ad42431ebf669dd.jpg', '2024-02-27 21:02:08', '2024-02-27 21:02:08'),
('032', 'H02', '1', '5', '1709114569_c7c42f2f1b61d3cf5506.jpg', '2024-02-27 21:02:52', '2024-02-27 21:02:52'),
('033', 'H02', '1', '5', '1709114569_d516b2cba42f8ccd5b81.jpg', '2024-02-27 21:02:52', '2024-02-27 21:02:52'),
('034', 'H02', '1', '2', '1709114525_68d14ad42431ebf669dd.jpg', NULL, NULL),
('035', 'H02', '1', '6', '1709115093_c8f85854a59c47400402.jpg', '2024-02-27 21:11:35', '2024-02-27 21:11:35'),
('036', 'H02', '1', '7', '1709115149_d0b5039619b5aedce3b2.jpg', '2024-02-27 21:12:31', '2024-02-27 21:12:31'),
('037', 'H02', '1', '8', '1709115208_635d071e0621807372b0.jpg', '2024-02-27 21:13:30', '2024-02-27 21:13:30'),
('038', 'H02', '1', '9', '1709115268_fa9e6da631963f15a510.jpg', '2024-02-27 21:14:30', '2024-02-27 21:14:30'),
('039', 'H12', '1', '1', '1727615118_f2516067a8b74a009b0f.png', '2024-09-29 01:05:21', '2024-09-29 01:05:21'),
('040', 'H12', '1', '1', '1727615118_6c476410ff00a155fcd1.png', '2024-09-29 01:05:21', '2024-09-29 01:05:21'),
('041', 'H12', '1', '2', '1727615149_b031537f8d8f3ad0b4a3.png', '2024-09-29 01:05:52', '2024-09-29 01:05:52'),
('042', 'H12', '1', '2', '1727615150_5d82169020b981420316.png', '2024-09-29 01:05:52', '2024-09-29 01:05:52'),
('043', 'H12', '1', '3', '1727615187_d2b8c00e51de9750d277.png', '2024-09-29 01:06:32', '2024-09-29 01:06:32'),
('044', 'H12', '1', '3', '1727615187_b09a9153ab96b6a162d9.png', '2024-09-29 01:06:32', '2024-09-29 01:06:32');

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
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `geom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
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
('P09', 'Kepulauan Riau', 'P10.geojson'),
('P10', 'Bangka Belitung', 'P09.geojson');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` varchar(4) NOT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `check_in` datetime NOT NULL,
  `total_people` int DEFAULT NULL,
  `review` text,
  `rating` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `deposit` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `snap_token` text,
  `reservation_finish_at` timestamp NULL DEFAULT NULL,
  `is_rejected` varchar(1) DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `feedback` text,
  `canceled_at` timestamp NULL DEFAULT NULL,
  `cancelation_reason` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_refund` char(1) DEFAULT NULL,
  `refund_paid_at` timestamp NULL DEFAULT NULL,
  `account_refund` text,
  `refund_proof` text,
  `is_refund_proof_correct` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refund_paid_confirmed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `customer_id`, `request_date`, `check_in`, `total_people`, `review`, `rating`, `total_price`, `deposit`, `status`, `snap_token`, `reservation_finish_at`, `is_rejected`, `confirmed_at`, `feedback`, `canceled_at`, `cancelation_reason`, `is_refund`, `refund_paid_at`, `account_refund`, `refund_proof`, `is_refund_proof_correct`, `refund_paid_confirmed_at`) VALUES
('R002', 11, '2024-10-02 14:54:09', '2024-10-05 14:00:00', 3, NULL, NULL, 390000, 78000, '1', NULL, '2024-10-02 07:54:28', '1', '2024-10-02 08:44:46', '', '2024-10-04 16:05:00', '2', '0', NULL, NULL, NULL, NULL, NULL),
('R003', 11, '2024-10-03 20:18:54', '2024-10-06 14:00:00', 5, NULL, NULL, 700000, 140000, '1', NULL, '2024-10-03 13:19:00', '1', '2024-10-03 13:19:14', '', '2024-10-04 16:05:00', '2', '0', NULL, NULL, NULL, NULL, NULL),
('R004', 11, '2024-10-03 20:19:40', '2024-10-06 14:00:00', 5, NULL, NULL, 800000, 160000, 'Payment Successful', NULL, '2024-10-03 13:20:49', '0', '2024-10-03 13:21:05', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R005', 11, '2024-10-03 23:29:35', '2024-10-06 14:00:00', 3, NULL, NULL, 300000, 60000, '1', NULL, '2024-10-03 16:29:42', '1', '2024-10-03 16:29:55', '', '2024-10-04 16:05:00', '2', '0', NULL, NULL, NULL, NULL, NULL),
('R006', 11, '2024-10-03 23:30:18', '2024-10-06 14:00:00', 3, NULL, NULL, 300000, 60000, 'Payment Expired', '65a45428-5af5-4ce8-b553-801ddeb01d91', '2024-10-03 16:30:23', '0', '2024-10-03 16:30:57', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R007', 11, '2024-10-04 18:47:53', '2024-10-10 14:00:00', 5, NULL, NULL, 600000, 120000, 'Payment Successful', 'c4c96bdd-c9d2-43c3-839f-01a7ca136aef', '2024-10-04 11:50:55', '0', '2024-10-04 11:51:47', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R008', 11, '2024-10-04 19:16:47', '2024-10-07 14:00:00', 3, NULL, NULL, 150000, 30000, 'Payment Successful', '40a5c12d-748b-4923-b77e-aeb47f1ec9f2', '2024-10-04 12:16:54', '0', '2024-10-04 12:17:15', '', '2024-10-04 14:19:00', '1', '1', '2024-10-04 15:16:14', 'aaa - bank aaa - 1112', '1728054972_c6cf3b6f27c6b1966981.jpg', '1', '2024-10-04 15:20:15'),
('R009', 11, '2024-10-04 22:23:03', '2024-10-05 14:00:00', 3, NULL, NULL, 300000, 60000, 'Done', 'bcf0ed75-736b-4895-b6e1-ed3900598c3f', '2024-10-04 15:24:39', '0', '2024-10-04 15:25:09', '', '2024-10-04 15:29:00', '1', '0', NULL, NULL, NULL, NULL, NULL),
('R010', 11, '2024-10-04 22:50:54', '2024-10-02 14:00:00', 3, 'Bagus', 5, 300000, 60000, 'Done', 'de6b0a0f-6a6f-47e6-9104-967ffe9dfa3b', '2024-10-04 15:51:02', '0', '2024-10-04 15:51:32', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R011', 11, '2024-10-04 23:00:10', '2024-10-05 14:00:00', 2, NULL, NULL, 100000, 20000, '1', 'aa6d42bc-acf4-47fc-88f5-c16b553cb3c0', '2024-10-04 16:00:48', '0', '2024-10-04 16:01:45', '', '2024-10-04 16:04:00', '2', '0', NULL, NULL, NULL, NULL, NULL),
('R012', NULL, '2024-10-05 15:25:55', '2024-10-05 14:00:00', 3, NULL, NULL, 100000, NULL, 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_homestay_additional_amenities_detail`
--

CREATE TABLE `reservation_homestay_additional_amenities_detail` (
  `homestay_id` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `additional_amenities_id` varchar(3) NOT NULL,
  `reservation_id` varchar(4) NOT NULL,
  `day_order` int NOT NULL,
  `person_order` int NOT NULL,
  `room_order` int NOT NULL,
  `total_order` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservation_homestay_additional_amenities_detail`
--

INSERT INTO `reservation_homestay_additional_amenities_detail` (`homestay_id`, `additional_amenities_id`, `reservation_id`, `day_order`, `person_order`, `room_order`, `total_order`, `total_price`) VALUES
('H12', '01', 'R004', 0, 0, 0, 2, 200000),
('H12', '03', 'R002', 2, 3, 0, 6, 90000);

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
('H12', '1', '1', '2024-10-06', 'R004'),
('H12', '1', '1', '2024-10-07', 'R004'),
('H12', '1', '2', '2024-10-06', 'R004'),
('H12', '1', '2', '2024-10-07', 'R004'),
('H12', '1', '1', '2024-10-10', 'R007'),
('H12', '1', '1', '2024-10-11', 'R007'),
('H12', '1', '2', '2024-10-10', 'R007'),
('H12', '1', '2', '2024-10-11', 'R007'),
('H12', '1', '3', '2024-10-07', 'R010'),
('H12', '1', '3', '2024-10-08', 'R010'),
('H12', '1', '1', '2024-10-05', 'R012');

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
('H12', '1', '3', 'R002', '2024-10-05'),
('H12', '1', '3', 'R002', '2024-10-06'),
('H12', '1', '2', 'R003', '2024-10-06'),
('H12', '1', '2', 'R003', '2024-10-07'),
('H12', '1', '3', 'R003', '2024-10-06'),
('H12', '1', '3', 'R003', '2024-10-07'),
('H12', '1', '3', 'R005', '2024-10-06'),
('H12', '1', '3', 'R005', '2024-10-07'),
('H12', '1', '3', 'R006', '2024-10-06'),
('H12', '1', '3', 'R006', '2024-10-07'),
('H12', '1', '3', 'R008', '2024-10-07'),
('H12', '1', '3', 'R009', '2024-10-07'),
('H12', '1', '3', 'R009', '2024-10-08'),
('H12', '1', '1', 'R011', '2024-10-12');

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
('001', 'S1', 'S1-1.jpg', '2023-12-01 23:15:16', '2023-12-01 23:15:16'),
('002', 'S1', 'S1-2.jpg', '2023-12-01 23:15:16', '2023-12-01 23:15:16'),
('003', 'S2', 'S2-1.jpg', '2023-12-01 23:45:32', '2023-12-01 23:45:32'),
('004', 'S2', 'S2-2.jpg', '2023-12-01 23:45:32', '2023-12-01 23:45:32'),
('005', 'S2', 'S2-3.jpg', '2023-12-01 23:45:32', '2023-12-01 23:45:32'),
('006', 'S3', 'S3-1.jpg', '2023-12-02 00:17:47', '2023-12-02 00:17:47'),
('007', 'S3', 'S3-2.jpg', '2023-12-02 00:17:47', '2023-12-02 00:17:47'),
('008', 'S4', 'S4-1.jpg', '2023-12-02 00:44:34', '2023-12-02 00:44:34'),
('009', 'S4', 'S4-2.jpg', '2023-12-02 00:44:34', '2023-12-02 00:44:34'),
('010', 'S4', 'S4-3.jpg', '2023-12-02 00:44:34', '2023-12-02 00:44:34');

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
('S1', '03', 2000, 'S1P-1.jpg', NULL, '2023-12-01 23:38:30', '2023-12-01 23:38:30'),
('S1', '05', 30000, 'S1P-2.jpg', 'Setiap baju kaos ini adalah potongan fesyen yang menceritakan cerita destinasi yang memikat. Dibuat dengan perhatian terhadap detail, kaos ini menjadi pilihan sempurna untuk mereka yang ingin merayakan dan mengenang setiap perjalanan mereka. Desainnya yang cerdas dan nyaman memastikan bahwa Anda tidak hanya terlihat modis, tetapi juga merasa nyaman sepanjang hari.', '2023-12-01 23:37:01', '2023-12-01 23:37:01'),
('S1', '06', 35000, 'S1P-3.jpg', 'Tas rajutan ini bukan sekadar aksesori, melainkan cerminan seni dan dedikasi pengrajinnya. Terbuat dari serat alami yang lembut dan tahan lama, setiap tas menjadi sebuah karya seni yang menggabungkan keanggunan fungsionalitas dengan daya tarik estetika.', '2023-12-01 23:29:17', '2023-12-01 23:29:17'),
('S1', '07', 4000, 'S1P-4.jpg', 'Gelang ini adalah perwujudan sempurna dari seni kerajinan tangan yang menggabungkan kehalusan dan keindahan. Dibuat dengan hati-hati oleh tangan ahli pengrajin, gelang ini bukan hanya sebuah aksesori, melainkan simbol dari keterampilan tinggi dan dedikasi terhadap seni.', '2023-12-01 23:34:31', '2023-12-01 23:39:09'),
('S2', '02', 35000, 'S2P-1.jpg', 'Setiap baju piyama ini adalah penggabungan harmonis antara kenyamanan dan inspirasi perjalanan. Terbuat dari bahan lembut yang memeluk tubuh dengan lembut, setiap sentuhan kain seperti memeluk kehangatan kasih sayang. Desainnya yang cerdas dan ergonomis memastikan tidur Anda menjadi pengalaman yang mewah, seolah-olah Anda berada dalam perjalanan indah di malam hari.', '2023-12-01 23:47:41', '2023-12-01 23:47:41'),
('S2', '03', 2000, 'S2P-2.jpg', NULL, '2023-12-01 23:49:25', '2023-12-01 23:49:25'),
('S2', '04', 120000, 'S2P-3.jpg', 'Setiap miniatur rumah gadang adalah pameran keahlian tinggi pengrajin yang mengabadikan kecantikan dan keunikannya. Dengan cermat dan teliti, setiap goresan menggambarkan keindahan arsitektur khas, dari atap bergonjong hingga hiasan-hiasan artistik yang menghiasi dindingnya. Setiap detail mengandung pesan sejarah dan nilai-nilai kultural yang diwariskan dari generasi ke generasi.', '2023-12-01 23:50:55', '2023-12-01 23:50:55'),
('S3', '02', 35000, 'S3P-1.jpg', NULL, '2023-12-02 00:26:19', '2023-12-02 00:26:19'),
('S3', '05', 30000, 'S3P-2.jpg', NULL, '2023-12-02 00:26:57', '2023-12-02 00:26:57'),
('S3', '09', 40000, 'S3P-3.jpg', NULL, '2023-12-02 00:30:59', '2023-12-02 00:30:59'),
('S3', '10', 35000, 'S3P-4.jpg', NULL, '2023-12-02 00:38:27', '2023-12-02 00:38:27'),
('S4', '08', 25000, 'S4P-1.jpg', NULL, '2023-12-02 00:46:48', '2023-12-02 00:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `subdistrict`
--

CREATE TABLE `subdistrict` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `geom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
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
(7, 'accadmin1@email.com', 'accadmin1', 'Zuherman', 'Account', 'Desa Wisata Kampuang Minang Nagari Sumpu', '08111678345', 'default.jpg', '$2y$10$Qj.hWZHW4uLNI2G8TMxSH.iY3A.B6auTcHB3lVPwPWkNsDyC5esRi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(9, 'homestayharausyafiq@gmail.com', 'homestayharausyafiqaccount', 'Andi', NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '085213100756', 'default.jpg', '$2y$10$VumDbbWe08c0kNuMKeSpJuvhpgPcdYM9NEQ2t/qjYZzIfK5Fg4U5e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-08 10:27:24', '2023-12-08 10:27:24', NULL),
(10, 'ari@gmail.com', 'arie', NULL, NULL, NULL, NULL, 'default.jpg', '$2y$10$I76ASpG4aFnFakR212BTm.MkremdoUllq7dJkJRa1aDK2OC.4IPpa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-14 01:20:26', '2023-12-14 01:20:26', NULL),
(11, 'daffa@gmail.com', 'daffa', 'Daffa', 'Muyassar', 'Bukittinggi', '082223556788', 'default.jpg', '$2y$10$6dlvr8vNqXtFACvXFTAhx.g4DQXUt9ED9zuIkljB3jTHuRgzyqiMO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-14 20:28:36', '2023-12-14 20:28:36', NULL),
(13, 'aurahomesta@gmail.com', 'aurahomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '081270263970', 'default.jpg', '$2y$10$tXgnmtgKzebhj7t6.EBqR.IkxWMLp1biVfgle2HKx1EJgapvRQIFO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 19:27:21', '2024-02-26 19:27:21', NULL),
(14, 'meliyahomestay@gmail.com', 'meliyahomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '085274265850', 'default.jpg', '$2y$10$LeHmdAe2g.22UfdwkHquLeZl1nK7.AtIu2HuYgtpBLWoW02lfQ6zi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 22:54:14', '2024-02-26 22:54:14', NULL),
(15, 'abyanhomestay@gmail.com', 'abyanhomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '081270377333', 'default.jpg', '$2y$10$DHia3.HzTpmHJANPOJM4ReyM7EJ8pyWbhOcZqOh8RDcR.AvPV/rb6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 22:59:42', '2024-02-26 22:59:42', NULL),
(16, 'homestaybilza@gmail.com', 'homestaybilzaaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '081363876893', 'default.jpg', '$2y$10$5sod.IT34FbcaKDwIRgD9.NB.6sjciZcb5clPjW0uXlYAP99No5wK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:08:20', '2024-02-26 23:08:20', NULL),
(17, 'homestayibu@gmail.com', 'homestayibuaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '082381976256', 'default.jpg', '$2y$10$Sm3bMZsbox0B7PCXekXiw.WMMf7KusogYbD1T7oh0NkgHvQuNilwm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:14:20', '2024-02-26 23:14:20', NULL),
(18, 'dangaupitossa@gmail.com', 'dangaupitossaaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '085285333018', 'default.jpg', '$2y$10$oaMkGwJ6P2dtvfNacFm2tOWkAKBVYED1nj/C3cLyfCq85M0y5HMRC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:28:12', '2024-02-26 23:28:12', NULL),
(19, 'ostonhomestay@gmail.com', 'ostonhomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '082174854400', 'default.jpg', '$2y$10$Av7FOrEUF5/M33bIJiQwIueHlpae.2WgIKquWCqf9OQZMijp4bjhW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:37:28', '2024-02-26 23:37:28', NULL),
(20, 'megahomestay@gmail.com', 'megahomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '081266724140', 'default.jpg', '$2y$10$hLY4EbUhD29vSBcTu7Q3P.FL9mWl..QzYgaXy/6hsh6nY/nFMCkJS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:44:25', '2024-02-26 23:44:25', NULL),
(21, 'dangauabahhomestay@gmail.com', 'dangauabahhomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '082391158500', 'default.jpg', '$2y$10$AJA4Um/doSqcEvhi1FJGaeRIYt9noTCycT6OMdg9rmYpILkUhmqWW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:47:49', '2024-02-26 23:47:49', NULL),
(22, 'limpatohomesaty@gmail.com', 'limpatohomestayaccount', NULL, NULL, 'Tarantang Village, Harau Subdistrict, Lima Puluh Kota Regency, West Sumatra Province', '081364348921', 'default.jpg', '$2y$10$388h3htWTvMWy19Yk4uhY.2wto/Y.Fx5ASRHkuwWJ3k4JG1o.FuNC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-26 23:56:58', '2024-02-26 23:56:58', NULL),
(23, 'homestayaaa@gmail.com', 'homestayaaa', NULL, NULL, NULL, NULL, 'default.jpg', '$2y$10$jsPLyiULsgQuOb00IhcWAONVhuqQ.Mz/Nuxj08sLVi9wTRSYAbv3e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-09-26 11:40:48', '2024-09-26 11:40:48', NULL),
(24, 'homestaybbb@gmail.com', 'homestaybbb', NULL, NULL, NULL, NULL, 'default.jpg', '$2y$10$ctEctlQP2cUs4/dUcYLFG.QKFpsfHsnnMnQ1GCdaeTHSDzvi1PS1O', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-09-28 05:04:12', '2024-09-28 05:04:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `geom_file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `selected` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `description` text,
  `ticket_price` int DEFAULT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `email` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `youtube` varchar(50) DEFAULT NULL,
  `tiktok` varchar(50) DEFAULT NULL,
  `video_url` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`id`, `name`, `geom_file`, `selected`, `description`, `ticket_price`, `open`, `close`, `address`, `email`, `facebook`, `instagram`, `youtube`, `tiktok`, `video_url`, `created_at`, `updated_at`) VALUES
('1', 'Nagari Tuo Pariangan', 'Pariangan.geojson', '1', 'desc', 1, '00:00:00', '23:59:00', 'Pariangan, Kecamatan Pariangan, Kabupaten Tanah Datar, Sumatera Barat', 'pariangan@gmail.com', 'f', 'i', NULL, 't', '1727614484_c2e89f13f679fb18a052.mp4', NULL, NULL),
('10', 'Danau Ateh Alahan Panjang', 'Alahan_Panjang.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11', 'Kumanis', 'Kumanis.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('12', 'Sisawah', 'Sisawah.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13', 'Marapalam Batu Bulek', 'Marapalam_Batu_Bulek.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14', 'Guranjhil', 'Kuranji_Hilir.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('15', 'Sintuak', 'Sintuak.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16', 'Panampuang', 'Panampuang.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17', 'Dalko', 'Dalko_Tanjung_Sani.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18', 'Kamang Mudiak', 'Kamang_Mudiak.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('19', 'Koto Gadang', 'Koto_Gadang.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2', 'Silabu', 'Silabu.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('20', 'Simarasok', 'Simarasok.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('21', 'Koto Kaciak', 'Koto_Kaciak.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('22', 'Pesona Pagadih', 'Pagadih.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('23', 'Nagata', 'Nagata_Talang_Anau.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('24', 'Kampung Bung Hatta Batuhampar', 'Kampung_Bung_Hatta_Batuhampar.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('25', 'Kapalo Banda Taram', 'Kapalo_Banda_Taram.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('26', 'Ganggo Mudiak', 'Ganggo_Mudiak.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('27', 'Ganggo Hilia', 'Ganggo_Hilia.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('28', 'Teluk Buo', 'Teluk_Buo_Teluk_Kabung_Tengah.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('29', 'Parit Antang \"The Heart of Kurai\"', 'Parit_Rantang.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3', 'Salido', 'Salido.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('30', 'Parik Natuang', 'Pulai_Anak_Aia.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('31', 'Desa Wisata Sanjai', 'Manggis_Ganting.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('32', 'Pendakian Gunung Marapi Koto Baru', 'Koto_Baru_X_Koto.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4', 'Pesona Palmurah', 'Palmurah_Pasar_Lama.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5', 'Carocok Pantai Painan', 'Carocok_Painan.geojson\r\n', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6', 'Nyalo', 'Nyalo_Mudiak_Aia.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7', 'Ekowisata Nagari Amping Parak', 'Amping_Parak.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('8', 'Kampung Batu Dalam', 'Kampung_Batu_Dalam.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('9', 'Tabek Talang Babungo', 'Talang_Babungo.geojson', '0', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `village_gallery`
--

CREATE TABLE `village_gallery` (
  `id` varchar(3) NOT NULL,
  `village_id` varchar(3) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `village_gallery`
--

INSERT INTO `village_gallery` (`id`, `village_id`, `url`) VALUES
('001', '1', '1727614495_f0ba376c28ae87e8df80.png'),
('002', '1', '1727614479_2f0ee2c1ce316d37d3ca.jpg'),
('003', '1', '1727614479_5f9a92807eae6f09ccbd.jpg'),
('004', '1', '1727614482_37a4d005face04127013.jpg'),
('005', '1', '1727614481_20ae5c4e6ed020accd68.jpg');

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
('001', 'W1', 'W1-1.jpg', '2023-12-02 17:11:28', '2023-12-02 17:11:28'),
('002', 'W2', 'W2-1.jpg', '2023-12-02 17:17:48', '2023-12-02 17:17:48');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homestay_owner_foreign` (`owner`);

--
-- Indexes for table `homestay_additional_amenities`
--
ALTER TABLE `homestay_additional_amenities`
  ADD PRIMARY KEY (`homestay_id`,`additional_amenities_id`),
  ADD KEY `homestay_additional_amenities_ibfk_1` (`homestay_id`);

--
-- Indexes for table `homestay_certification`
--
ALTER TABLE `homestay_certification`
  ADD PRIMARY KEY (`homestay_id`,`certification_id`),
  ADD KEY `homestay_id` (`homestay_id`);

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
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_ibfk_1` (`customer_id`);

--
-- Indexes for table `reservation_homestay_additional_amenities_detail`
--
ALTER TABLE `reservation_homestay_additional_amenities_detail`
  ADD PRIMARY KEY (`homestay_id`,`additional_amenities_id`,`reservation_id`),
  ADD KEY `reservation_homestay_additional_amenities_detail_ibfk_2` (`reservation_id`),
  ADD KEY `reservation_homestay_additional_amenities_detail_ibfk_1` (`homestay_id`,`additional_amenities_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village_gallery`
--
ALTER TABLE `village_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `village_id` (`village_id`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `homestay`
--
ALTER TABLE `homestay`
  ADD CONSTRAINT `homestay_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay_additional_amenities`
--
ALTER TABLE `homestay_additional_amenities`
  ADD CONSTRAINT `homestay_additional_amenities_ibfk_1` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homestay_certification`
--
ALTER TABLE `homestay_certification`
  ADD CONSTRAINT `homestay_certification_ibfk_1` FOREIGN KEY (`homestay_id`) REFERENCES `homestay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `reservation_homestay_additional_amenities_detail`
--
ALTER TABLE `reservation_homestay_additional_amenities_detail`
  ADD CONSTRAINT `reservation_homestay_additional_amenities_detail_ibfk_1` FOREIGN KEY (`homestay_id`,`additional_amenities_id`) REFERENCES `homestay_additional_amenities` (`homestay_id`, `additional_amenities_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_homestay_additional_amenities_detail_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `village_gallery`
--
ALTER TABLE `village_gallery`
  ADD CONSTRAINT `village_gallery_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
