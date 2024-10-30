-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2024 at 10:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.4

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
(1, 11),
(2, 23),
(2, 24),
(2, 25),
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
(423, '::1', 'homestayaaa@gmail.com', 23, '2024-10-05 05:51:00', 1),
(424, '::1', 'accadmin1@email.com', 7, '2024-10-10 02:41:38', 1),
(425, '::1', 'homestayddd@gmail.com', 26, '2024-10-10 04:13:27', 1),
(426, '::1', 'accadmin1@email.com', 7, '2024-10-10 04:17:22', 1),
(427, '::1', 'daffa@gmail.com', 11, '2024-10-10 05:42:51', 1),
(428, '::1', 'homestayaaa@gmail.com', 23, '2024-10-10 05:44:21', 1),
(429, '::1', 'daffa@gmail.com', 11, '2024-10-11 04:36:22', 1),
(430, '::1', 'homestayaaa@gmail.com', 23, '2024-10-11 04:41:46', 1),
(431, '::1', 'accadmin1', NULL, '2024-10-13 23:55:25', 0),
(432, '::1', 'accadmin1@email.com', 7, '2024-10-13 23:55:32', 1),
(433, '::1', 'daffa@gmail.com', 11, '2024-10-14 00:10:55', 1),
(434, '::1', 'homestayaaa', NULL, '2024-10-14 00:14:29', 0),
(435, '::1', 'homestayaaa@gmail.com', 23, '2024-10-14 00:14:36', 1),
(436, '::1', 'daffa@gmail.com', 11, '2024-10-14 01:25:56', 1),
(437, '::1', 'daffa@gmail.com', 11, '2024-10-14 06:21:34', 1),
(438, '::1', 'homestayaaa@gmail.com', 23, '2024-10-14 06:25:53', 1),
(439, '::1', 'homestayaaa@gmail.com', 23, '2024-10-14 08:47:30', 1),
(440, '::1', 'daffa@gmail.com', 11, '2024-10-14 11:14:20', 1),
(441, '::1', 'accadmin1@email.com', 7, '2024-10-14 11:17:44', 1),
(442, '::1', 'homestayaaa@gmail.com', 23, '2024-10-14 11:37:45', 1),
(443, '::1', 'accadmin1@email.com', 7, '2024-10-21 08:23:35', 1),
(444, '::1', 'homestayaaa@gmail.com', 23, '2024-10-21 09:21:10', 1),
(445, '::1', 'daffa@gmail.com', 11, '2024-10-21 09:21:21', 1),
(446, '::1', 'accadmin1@email.com', 7, '2024-10-24 09:52:36', 1),
(447, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-24 10:19:21', 1),
(448, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-24 12:29:59', 1),
(449, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-25 10:34:59', 1),
(450, '::1', 'homestayaaa@gmail.com', 23, '2024-10-25 13:39:39', 1),
(451, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-26 02:31:27', 1),
(452, '::1', 'umegahomestay@gmail.com', 23, '2024-10-26 02:37:01', 1),
(453, '::1', 'shandyka2403@gmail.com', 11, '2024-10-26 02:55:40', 1),
(454, '::1', 'gudesterhomestay@gmail.com', 24, '2024-10-26 02:56:27', 1),
(455, '::1', 'nabilahomestay@gmail.com', 25, '2024-10-26 03:05:31', 1),
(456, '::1', 'shandyka2403@gmail.com', 11, '2024-10-26 03:41:29', 1),
(457, '::1', 'gudesterhomestay@gmail.com', 24, '2024-10-26 03:41:46', 1),
(458, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-26 04:41:07', 1),
(459, '::1', 'shandyka2403@gmail.com', 11, '2024-10-26 04:42:13', 1),
(460, '::1', 'shandyka2403@gmail.com', 11, '2024-10-26 05:07:21', 1),
(461, '::1', 'umegahomestay@gmail.com', 23, '2024-10-26 05:08:30', 1),
(462, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-26 05:21:26', 1),
(463, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-30 04:15:30', 1),
(464, '::1', 'shandyka2403@gmail.com', 11, '2024-10-30 04:26:54', 1),
(465, '::1', 'pokdarwispariangan1@gmail.com', 7, '2024-10-30 05:12:17', 1);

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
  `village_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
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

INSERT INTO `culinary_place` (`id`, `village_id`, `name`, `address`, `employee_name`, `phone`, `open`, `close`, `geom`, `lat`, `lng`, `description`, `created_at`, `updated_at`) VALUES
('C1', '1', 'Kawa Daun Tanjuang Indah', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Putra', '082284978004', '09:00:00', '22:00:00', 0xe61000000103000000010000000600000042504c54fe1e5940c34e13d80286dcbf4350ac7bfe1e5940300ea234bf87dcbf44504c35ff1e59409e3268715f89dcbf43506ce6001f59408f995252e988dcbf42500c38001f5940fc6eaf18b485dcbf42504c54fe1e5940c34e13d80286dcbf, -0.44577259, 100.48435148, 'Kawa Daun Tanjung Indah merupakan sebuah cafe tradisional yang menyediakan berbagai macam makanan dan minuman. Lokasi Kawa Daun Tanjuang Indah ini sangat strategis dan memerikan pemandangan yang sangat indah.', '2024-10-25 04:34:18', '2024-10-25 04:39:07'),
('C2', '1', 'Kawa Daun  Tanjuang Putuih', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Nasrudin', '081272053141', '09:00:00', '20:00:00', 0xe610000001030000000100000005000000e326fb26001f59402b10e9e49f85dcbfe2267bf1001f5940bd9e5f9eeb88dcbfe2261b32021f5940fb07073f9788dcbfe2263bd5021f5940d1c39026ca84dcbfe326fb26001f59402b10e9e49f85dcbf, -0.44573090, 100.48446610, 'Kawa Daun  Tanjuang Putuih merupakan cafe tradisional yang menediakan berbagai macam makanan dan minuman. Lokasi Kawa Daun Tanjuang Putuih ini sangat strategis dan memerikan pemandangan yang sangat indah.', '2024-10-25 04:38:34', '2024-10-25 04:38:34'),
('C3', '1', 'Kawa Daun A & F', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Masril', NULL, '10:00:00', '18:00:00', 0xe61000000103000000010000000900000022318b27041f59401db8000c1f85dcbf20318b46031f5940f1b5218b8f85dcbf21316bd0021f5940cf88a6c94e86dcbf21316bd0021f5940a4f083676287dcbf2131eb6d031f594033f98184e688dcbf2131eb2f051f59406d19d024bf88dcbf21312b0e051f59406c3aff28a386dcbf21312b87041f59402877596b7385dcbf22318b27041f59401db8000c1f85dcbf, -0.44574041, 100.48461918, 'Kawa Daun A & F merupakan cafe tradisional yang menediakan berbagai makanan dan minuman. Terdapat juga ampera pada cafe ini. Cafe ini juga menyuguhkan pemandangan yang sangat indah', '2024-10-25 05:39:16', '2024-10-25 05:39:16'),
('C4', '1', 'Kawa Daun Puncak Mortir', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Hesti', NULL, '10:00:00', '20:00:00', 0xe610000001030000000100000006000000824285b9011f5940346f4dad1081dcbf8142c52c031f594014ae4def0d80dcbf81426540041f5940a14221b1217fdcbf81424505051f5940db9e9b8fe67fdcbf8142a5e3021f5940b23a204aab82dcbf824285b9011f5940346f4dad1081dcbf, -0.44536745, 100.48458085, 'Kawa Daun Puncak Mortir merupakan cafe tradisional yang menyuguhkan pemandangan yang sangat indah. Cafe ini menjual berbagai makanan dan minuman.', '2024-10-25 05:51:32', '2024-10-25 05:51:32'),
('C5', '1', 'Puncak Kawa Gudester', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Hana', '082283529664', '09:00:00', '20:00:00', 0xe6100000010300000001000000070000005d90c88b101f5940181d2855f496dcbf5e9068830f1f59405754f2af9199dcbf5e902867111f5940ca16d60c219bdcbf5d90886f121f594057ec3eafeb99dcbf5d90c8a7121f5940abc6bfb22998dcbf5d90e83c121f59407e5fdb559a96dcbf5d90c88b101f5940181d2855f496dcbf, -0.44683020, 100.48541775, 'Puncak Kawa Gudester merupakan sebuah cafe tradisional yang menyediakan berbagai macam makanan dan minuman. Cafe ini juga menyuguhkan pemandangan yang sangat indah.', '2024-10-25 06:11:07', '2024-10-25 06:11:07'),
('C6', '1', 'Sako Minang Cafe', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Zainul', '082122886454', '09:00:00', '18:00:00', 0xe61000000103000000010000000700000062582f14001f594036000374836cdcbf0086115f011f5940be25be27da6bdcbf008611e6011f5940417cad4bda69dcbfff85714b001f5940fefbb38e5068dcbfff859178fe1e594083abcbadc668dcbf0086119dff1e59402738c987d46bdcbf62582f14001f594036000374836cdcbf, -0.44399500, 100.48438628, 'Cafe ini menyediakan berbagai macam makanan dan minuman. Lokasi dari cafe ini diapit oleh pepohonan yang rimbun dan menyuguhi pemandangan yang indah.', '2024-10-25 06:16:41', '2024-10-25 06:16:41');

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
('003', 'C2', '1729874271_6dcb3841050ed240cb45.jpg', '2024-10-25 04:38:34', '2024-10-25 04:38:34'),
('004', 'C2', '1729874271_b98650fd3cf653723469.jpg', '2024-10-25 04:38:34', '2024-10-25 04:38:34'),
('005', 'C1', '1729874328_29c8ba153e9206fc2d8f.jpg', '2024-10-25 04:39:07', '2024-10-25 04:39:07'),
('006', 'C1', '1729874328_b7c2761e0920a2ad3870.jpg', '2024-10-25 04:39:07', '2024-10-25 04:39:07'),
('007', 'C3', '1729877912_fcb9f48e8c98011b588e.jpg', '2024-10-25 05:39:16', '2024-10-25 05:39:16'),
('008', 'C3', '1729877912_a29f0219713a054d082e.jpg', '2024-10-25 05:39:16', '2024-10-25 05:39:16'),
('009', 'C4', '1729878653_001f5740fde5888b3d9f.jpg', '2024-10-25 05:51:32', '2024-10-25 05:51:32'),
('010', 'C4', '1729878653_c07a033bd9dc8bff09f0.jpg', '2024-10-25 05:51:32', '2024-10-25 05:51:32'),
('011', 'C5', '1729879828_d16bcc84e1d538918170.jpg', '2024-10-25 06:11:07', '2024-10-25 06:11:07'),
('012', 'C5', '1729879828_29fdc45b9cbea7e208d0.jpg', '2024-10-25 06:11:07', '2024-10-25 06:11:07'),
('013', 'C6', '1729880115_bcebc18c9c5b742cc42f.jpg', '2024-10-25 06:16:41', '2024-10-25 06:16:41'),
('014', 'C6', '1729880107_871a7281a4a1d176bf16.jpg', '2024-10-25 06:16:41', '2024-10-25 06:16:41');

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
('01', 'Kawa Daun', '2024-10-25 20:24:26', '2024-10-25 20:24:26'),
('02', 'Nasi Goreng', '2024-10-25 20:24:34', '2024-10-25 20:24:34'),
('03', 'Mie Goreng', '2024-10-25 20:24:41', '2024-10-25 20:24:41'),
('04', 'Mie Rebus', '2024-10-25 20:24:47', '2024-10-25 20:25:46'),
('05', 'Mienas', '2024-10-25 20:24:53', '2024-10-25 20:24:53'),
('06', 'Kopi Hitam', '2024-10-25 20:25:00', '2024-10-25 20:25:00'),
('07', 'Gorengan', '2024-10-25 20:25:07', '2024-10-25 20:25:07'),
('08', 'Jus', '2024-10-25 20:25:12', '2024-10-25 20:25:12'),
('09', 'Teh Es', '2024-10-25 20:25:39', '2024-10-25 20:25:39'),
('10', 'Teh Hangat', '2024-10-25 20:25:53', '2024-10-25 20:25:58'),
('11', 'Cappucino', '2024-10-25 20:26:04', '2024-10-25 20:26:04'),
('12', 'Pop Mie', '2024-10-25 20:26:18', '2024-10-25 20:26:18');

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
('C1', '01', 7000, '1729931538_13fb5a9f880781ca59e9.webp', 'Minuman khas minang yang terbuat dari daun kopi', '2024-10-25 20:32:34', '2024-10-25 20:32:34'),
('C1', '02', 15000, '1729931626_9d941b2a491f24c460b3.jpg', 'Nasi goreng dengan telur\r\n', '2024-10-25 20:33:13', '2024-10-25 20:33:49'),
('C1', '03', 15000, '1729931608_f9d768cb5a469b73f149.jpeg', 'Mie goreng dengan sayuran dan telur\r\n', '2024-10-25 20:33:38', '2024-10-25 20:33:38'),
('C1', '04', 15000, '1729931718_9ecabc7ce38cdd9fdd76.webp', 'Mie rebus dengan sayuran dan telur', '2024-10-25 20:35:20', '2024-10-25 20:35:20'),
('C1', '05', 15000, '1729931735_d70317cae68d45ca4294.jpg', 'Percampuran antara nasi goreng dan mie goreng dan diberikan telur\r\n', '2024-10-25 20:35:52', '2024-10-25 20:35:52'),
('C1', '06', 5000, '1729931766_94d896c52956db5aaad3.jpg', 'Kopi hitam asli pariangan\r\n', '2024-10-25 20:36:17', '2024-10-25 20:36:17'),
('C1', '07', 1500, '1729931791_697674f518b52a2163e8.jpg', 'Berbagai macam gorengan\r\n', '2024-10-25 20:36:39', '2024-10-25 20:36:39'),
('C1', '08', 12000, '1729931813_1b38704500d350baa03e.jpg', 'Aneka macam jus buah', '2024-10-25 20:36:59', '2024-10-25 20:36:59'),
('C1', '09', 7000, '1729931831_1254a68a5065b3f61722.jpg', 'Kesegaran teh dipadukan dengan es batu\r\n', '2024-10-25 20:37:27', '2024-10-25 20:37:27'),
('C1', '10', 5000, '1729931857_0bc0788503a16a54c1e0.jpeg', 'Teh hangat memerikan kehangatan di cuaca yang sejuk seperti di pariangan', '2024-10-25 20:38:05', '2024-10-25 20:38:05'),
('C1', '11', 10000, '1729931900_504b51f5398bd9643b40.jpg', 'Cappucino ', '2024-10-25 20:38:37', '2024-10-25 20:38:37'),
('C1', '12', 10000, '1729931929_83dec133a260492bbc09.jpg', 'Pop Mie dan Mie Sedap Cup\r\n', '2024-10-25 20:39:08', '2024-10-25 20:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `homestay`
--

CREATE TABLE `homestay` (
  `id` varchar(3) NOT NULL,
  `village_id` varchar(3) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL DEFAULT '1',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `profil_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `homestay`
--

INSERT INTO `homestay` (`id`, `village_id`, `name`, `category`, `address`, `geom`, `lat`, `lng`, `owner`, `open`, `close`, `description`, `video_url`, `created_at`, `updated_at`, `profil_link`) VALUES
('H12', '1', 'Homestay Umega', '2', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 0xe6100000010300000001000000080000000713a515141f594075a82bd316a5dcbf0413e50f161f594056fa301514a4dcbf0613e5e2151f5940668b498887a2dcbf05134556151f5940477bc4ba49a1dcbf0613b534121f5940d6377fc7eca2dcbf0513c534111f5940e5707455f2a3dcbf0713e531121f594023f47431f2a5dcbf0713a515141f594075a82bd316a5dcbf, -0.44748639, 100.48557337, 23, '10:00:00', '23:59:00', 'Homestay Umega MD di Nagari Tuo Pariangan adalah penginapan yang menawarkan pengalaman menginap dengan nuansa lokal Minangkabau yang kental. Terletak di desa yang kaya akan sejarah dan budaya, homestay ini memberi kesempatan bagi pengunjung untuk merasakan langsung suasana kehidupan masyarakat tradisional Minangkabau sambil menikmati pemandangan alam yang indah, dengan latar belakang pegunungan dan hamparan sawah yang asri.', NULL, '2024-09-26 05:27:13', '2024-10-25 19:51:44', ''),
('H13', '1', 'Homestay Gudester', '2', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 0xe6100000010300000001000000050000001dc09e63081f59407ec8ede3dfa0dcbf1cc01e0f0a1f5940c98d5f80a7a2dcbf1ec0feb40b1f5940924004a4d4a0dcbf1dc0be140a1f5940e50692070d9fdcbf1dc09e63081f59407ec8ede3dfa0dcbf, -0.44731766, 100.48498829, 24, '10:00:00', '23:59:00', 'Homestay Gudester Pariangan merupakan homestay modern dimana homestay ini hanya menyediakan kamar. Pada tiap-tiap kamar memiliki pemandangan persawahan yang sangat indah', NULL, '2024-10-25 19:48:36', '2024-10-25 19:51:07', ''),
('H14', '1', 'Homestay Nabila', '2', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 0xe6100000010300000001000000070000006c9b975dc61e5940c422477d5b8edcbf6d9b779bc61e5940a53cea990c90dcbf6c9b973ec71e5940aac034576991dcbf6c9b97b4c91e5940385ed1971a91dcbf6c9b574fc91e5940ceae26feea8ddcbf6c9b97b7c61e5940ee5052dd558edcbf6c9b975dc61e5940c422477d5b8edcbf, -0.44626860, 100.48095920, 25, '10:00:00', '23:59:00', 'Homestay Nabila di Pariangan adalah penginapan nyaman yang menawarkan perpaduan antara arsitektur tradisional Minangkabau dan kenyamanan modern. Terletak di Desa Pariangan, Tanah Datar, homestay ini menghadirkan pemandangan sawah hijau yang luas serta bukit-bukit di sekitar, menjadikannya tempat sempurna bagi para tamu yang ingin menikmati ketenangan dan keindahan alam Sumatera Barat.', NULL, '2024-10-25 19:55:23', '2024-10-25 19:55:23', '');

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
('H12', '01', 'Kasur', '1', 100000, '0', '0', '1', 5, 'Kasur tambahan', '1729884917_a45c76bf7d804d9fdec4.jpg', '2024-09-29 01:07:22', '2024-10-25 07:35:23'),
('H12', '02', 'Sarapan', '2', 15000, '1', '1', '0', 0, 'Sarapan', '1729928412_ca7169662ad91e6733b4.jpeg', '2024-10-25 19:40:28', '2024-10-25 19:40:28'),
('H12', '03', 'Makan siang', '2', 15000, '1', '1', '0', 0, 'Request Makan Siang', '1729928449_649053ff8ddad903b730.jpeg', '2024-10-25 19:40:51', '2024-10-25 19:40:51'),
('H12', '04', 'Makan Malam', '2', 15000, '1', '1', '0', 0, 'Request Makan Malam', '1729928491_8652a5b7cd88d997e2b6.jpg', '2024-10-25 19:41:33', '2024-10-25 19:41:33'),
('H13', '01', 'Extra Bed', '1', 250000, '0', '1', '1', 3, 'Kasur Tambahan', '1729929786_7a8905841bc12e975475.jpg', '2024-10-25 20:03:17', '2024-10-25 20:03:17'),
('H13', '02', 'Makan siang', '2', 20000, '1', '1', '0', 0, 'Bisa Request', '1729929833_36273e691e8717a109a1.jpeg', '2024-10-25 20:03:55', '2024-10-25 20:03:55'),
('H13', '03', 'Makan Malam', '2', 20000, '1', '1', '0', 0, 'Bisa Request', '1729929895_3acd79ef24efa42d0ad4.jpg', '2024-10-25 20:04:58', '2024-10-25 20:04:58'),
('H14', '01', 'Sarapan', '2', 15000, '1', '1', '0', 0, 'Bisa Request', '1729930482_9973666a16a31dde1159.jpeg', '2024-10-25 20:14:44', '2024-10-25 20:14:44'),
('H14', '02', 'Extra Bed', '1', 250000, '1', '0', '0', 5, 'Kasur Tambahan', '1729930540_c556b1165d86231b345a.jpg', '2024-10-25 20:15:42', '2024-10-25 20:15:42'),
('H14', '03', 'Makan Siang', '2', 20000, '1', '1', '0', 0, 'Bisa Request', '1729930579_c46285355b6831b83f6e.jpeg', '2024-10-25 20:16:21', '2024-10-25 20:16:21'),
('H14', '04', 'Makan Malam', '2', 20000, '1', '1', '0', 0, 'BIsa Request', '1729930618_feae05476ecb4485033d.jpg', '2024-10-25 20:17:00', '2024-10-25 20:17:00'),
('H14', '05', 'Bajamba', '2', 30000, '0', '1', '0', 0, 'Makan Bajamba', '1729930848_b080699b1d12b4a89bcf.jpeg', '2024-10-25 20:20:51', '2024-10-25 20:20:51');

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
('H14', '001', 'CHSE STANDART', 'CH5E03399/2021', 'Mentri Pariwisata dan Ekonomi Kreatif', '2021-09-19', 'Sertifikat yang diberikan oleh Kementrian Pariwisata dan Ekonomi Kreatif / Kepala Badan Pariwisata dan Ekonomi Kreatif Republik Indonesia', '1729930091_716199ff1f02f963f6f7.jpg');

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
('H12', '01', '2024-10-25 19:51:44', '2024-10-25 19:51:44'),
('H12', '02', '2024-10-25 19:51:44', '2024-10-25 19:51:44'),
('H12', '03', '2024-10-25 19:51:44', '2024-10-25 19:51:44'),
('H13', '01', '2024-10-25 19:51:07', '2024-10-25 19:51:07'),
('H13', '03', '2024-10-25 19:51:07', '2024-10-25 19:51:07'),
('H13', '04', '2024-10-25 19:51:07', '2024-10-25 19:51:07'),
('H13', '05', '2024-10-25 19:51:07', '2024-10-25 19:51:07'),
('H14', '01', '2024-10-25 19:55:23', '2024-10-25 19:55:23'),
('H14', '02', '2024-10-25 19:55:23', '2024-10-25 19:55:23'),
('H14', '04', '2024-10-25 19:55:23', '2024-10-25 19:55:23');

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
('008', 'H13', '1729929046_c18347296961982ed7a1.jpg', '2024-10-25 19:51:07', '2024-10-25 19:51:07'),
('009', 'H12', '1729929097_ead6ae7d5786cb2500f4.jpg', '2024-10-25 19:51:44', '2024-10-25 19:51:44'),
('010', 'H12', '1729929097_5bcd0c30389b4127c18f.jpg', '2024-10-25 19:51:44', '2024-10-25 19:51:44'),
('011', 'H12', '1729929099_3045486a242c21cb0f25.jpg', '2024-10-25 19:51:44', '2024-10-25 19:51:44'),
('012', 'H14', '1729929320_7faf6d2fa8579c1adb8b.jpg', '2024-10-25 19:55:23', '2024-10-25 19:55:23');

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
('H12', '1', '1', 'Kamar 1', 350000, 2, 'Kamar 1', '2024-09-29 01:05:21', '2024-10-25 07:09:53'),
('H12', '1', '2', 'Kamar 2', 349999, 2, 'Kamar 2', '2024-09-29 01:05:52', '2024-10-25 07:25:39'),
('H12', '1', '3', 'Kamar 3', 350000, 2, 'Kamar 3', '2024-09-29 01:06:32', '2024-10-25 07:28:50'),
('H12', '1', '4', 'Kamar 4', 350000, 2, 'Kamar 4', '2024-10-25 07:29:25', '2024-10-25 07:31:40'),
('H12', '1', '5', 'Kamar 5', 350000, 2, 'Kamar 5', '2024-10-25 07:29:37', '2024-10-25 07:32:05'),
('H13', '1', '1', 'Kamar 1', 400000, 2, 'Free breakfast', '2024-10-25 20:00:05', '2024-10-25 20:00:05'),
('H13', '1', '2', 'Kamar 2', 400000, 2, 'Free breakfast', '2024-10-25 20:01:19', '2024-10-25 20:01:19'),
('H13', '1', '3', 'Kamar 3', 400000, 2, 'Free breakfast', '2024-10-25 20:02:05', '2024-10-25 20:02:05'),
('H14', '1', '1', 'Kamar 1', 300000, 2, 'Kamar 1', '2024-10-25 20:11:07', '2024-10-25 20:12:32'),
('H14', '1', '2', 'Kamar 2', 300000, 2, 'Kamar 2', '2024-10-25 20:14:01', '2024-10-25 20:14:01');

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
('08', 'Fan', '2024-02-27 20:59:04', '2024-02-27 20:59:04'),
('09', 'Wardrobe', '2024-10-25 07:20:38', '2024-10-25 07:27:37');

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
('H12', '1', '1', '07', NULL, '2024-10-25 07:10:23', '2024-10-25 07:10:23'),
('H12', '1', '1', '08', NULL, '2024-10-25 07:11:28', '2024-10-25 07:11:28'),
('H12', '1', '1', '09', NULL, '2024-10-25 07:26:10', '2024-10-25 07:26:10'),
('H12', '1', '2', '07', NULL, '2024-10-25 07:25:47', '2024-10-25 07:25:47'),
('H12', '1', '2', '08', NULL, '2024-10-25 07:25:59', '2024-10-25 07:25:59'),
('H12', '1', '2', '09', NULL, '2024-10-25 07:25:54', '2024-10-25 07:25:54'),
('H12', '1', '3', '07', NULL, '2024-10-25 07:28:04', '2024-10-25 07:28:04'),
('H12', '1', '3', '08', NULL, '2024-10-25 07:28:07', '2024-10-25 07:28:07'),
('H12', '1', '3', '09', NULL, '2024-10-25 07:28:12', '2024-10-25 07:28:12'),
('H12', '1', '4', '07', NULL, '2024-10-25 07:31:49', '2024-10-25 07:31:49'),
('H12', '1', '4', '08', NULL, '2024-10-25 07:31:45', '2024-10-25 07:31:45'),
('H12', '1', '4', '09', NULL, '2024-10-25 07:31:54', '2024-10-25 07:31:54'),
('H12', '1', '5', '07', NULL, '2024-10-25 07:29:42', '2024-10-25 07:29:42'),
('H12', '1', '5', '08', NULL, '2024-10-25 07:29:49', '2024-10-25 07:29:49'),
('H12', '1', '5', '09', NULL, '2024-10-25 07:29:53', '2024-10-25 07:29:53'),
('H13', '1', '1', '06', 'Shower', '2024-10-25 20:00:41', '2024-10-25 20:00:41'),
('H13', '1', '1', '07', 'King Size\r\n', '2024-10-25 20:00:25', '2024-10-25 20:00:25'),
('H13', '1', '1', '09', NULL, '2024-10-25 20:00:29', '2024-10-25 20:00:29'),
('H13', '1', '2', '06', 'Shower', '2024-10-25 20:01:29', '2024-10-25 20:01:29'),
('H13', '1', '2', '07', 'King Size', '2024-10-25 20:01:38', '2024-10-25 20:01:38'),
('H13', '1', '2', '09', NULL, '2024-10-25 20:01:42', '2024-10-25 20:01:42'),
('H13', '1', '3', '06', 'Shower', '2024-10-25 20:02:25', '2024-10-25 20:02:25'),
('H13', '1', '3', '07', 'King Size', '2024-10-25 20:02:13', '2024-10-25 20:02:13'),
('H13', '1', '3', '09', NULL, '2024-10-25 20:02:19', '2024-10-25 20:02:19'),
('H14', '1', '1', '06', NULL, '2024-10-25 20:12:43', '2024-10-25 20:12:43'),
('H14', '1', '1', '07', NULL, '2024-10-25 20:11:20', '2024-10-25 20:11:20'),
('H14', '1', '1', '09', NULL, '2024-10-25 20:11:16', '2024-10-25 20:11:16'),
('H14', '1', '2', '06', NULL, '2024-10-25 20:14:07', '2024-10-25 20:14:07'),
('H14', '1', '2', '07', NULL, '2024-10-25 20:14:17', '2024-10-25 20:14:17'),
('H14', '1', '2', '09', NULL, '2024-10-25 20:14:13', '2024-10-25 20:14:13');

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
('045', 'H12', '1', '1', '1729883391_f5b3347ad1ee53cd3e8a.jpg', '2024-10-25 07:09:53', '2024-10-25 07:09:53'),
('046', 'H12', '1', '2', '1729884332_38e77dd9f6e2ababa105.jpg', '2024-10-25 07:25:39', '2024-10-25 07:25:39'),
('047', 'H12', '1', '3', '1729884519_7293299c49c0176a2795.jpg', '2024-10-25 07:28:50', '2024-10-25 07:28:50'),
('049', 'H12', '1', '4', '1729884698_014796f4f33265b8c372.jpg', '2024-10-25 07:31:40', '2024-10-25 07:31:40'),
('050', 'H12', '1', '5', '1729884721_2a623bb00849724309d6.jpg', '2024-10-25 07:32:05', '2024-10-25 07:32:05'),
('051', 'H13', '1', '1', '1729929602_f121029ca16bd5e91ef4.jpg', '2024-10-25 20:00:05', '2024-10-25 20:00:05'),
('052', 'H13', '1', '2', '1729929677_e8fcf9c699dc2f2d9c40.jpeg', '2024-10-25 20:01:19', '2024-10-25 20:01:19'),
('053', 'H13', '1', '3', '1729929722_c5173c0859b6a60b9266.jpeg', '2024-10-25 20:02:05', '2024-10-25 20:02:05'),
('054', 'H14', '1', '1', '1729930348_3313b6e7273fc7ec409b.jpg', '2024-10-25 20:12:32', '2024-10-25 20:12:32'),
('055', 'H14', '1', '2', '1729930439_d61518894390505b60df.jpeg', '2024-10-25 20:14:01', '2024-10-25 20:14:01');

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
  `deposit_snap_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pay_full_snap_token` text,
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

INSERT INTO `reservation` (`id`, `customer_id`, `request_date`, `check_in`, `total_people`, `review`, `rating`, `total_price`, `deposit`, `status`, `deposit_snap_token`, `pay_full_snap_token`, `reservation_finish_at`, `is_rejected`, `confirmed_at`, `feedback`, `canceled_at`, `cancelation_reason`, `is_refund`, `refund_paid_at`, `account_refund`, `refund_proof`, `is_refund_proof_correct`, `refund_paid_confirmed_at`) VALUES
('R016', 11, '2024-10-11 17:27:25', '2024-10-17 14:00:00', 5, NULL, NULL, 600000, 120000, 'Full Pay Successful', '4833097b-9063-41f3-a17f-b69da590496d', 'e3ebbcd1-c32f-4463-90b2-e4e8881974b1', '2024-10-11 10:28:14', '0', '2024-10-11 10:28:36', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R017', 11, '2024-10-11 18:01:35', '2024-10-16 14:00:00', 3, NULL, NULL, 300000, 60000, 'Full Pay Successful', '102496c1-340b-46a6-8dc0-5d448bbfa432', 'dd38c12b-3253-48f4-8ab9-094672edd3fc', '2024-10-11 11:01:55', '0', '2024-10-11 11:02:05', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R018', 11, '2024-10-11 19:43:53', '2024-10-18 14:00:00', 3, NULL, NULL, 300000, 60000, 'Deposit Successful', '6adcf2de-e03a-4d34-8e0a-8386a3fd6122', NULL, '2024-10-11 12:44:00', '0', '2024-10-11 12:44:11', '', '2024-10-11 12:44:00', '1', '1', '2024-10-11 12:45:51', 'Dika - Bank ABC - 12345678', '1728650749_b4956a3c25ffc50fdb89.jpg', '1', '2024-10-11 12:46:09'),
('R019', 11, '2024-10-11 19:55:11', '2024-10-11 14:00:00', 5, NULL, NULL, 600000, 120000, '1', 'c99df471-3896-4fe0-86b2-ea1f7dbe3937', NULL, '2024-10-11 12:55:18', '0', '2024-10-11 12:55:34', '', '2024-10-11 12:57:00', '2', '0', NULL, NULL, NULL, NULL, NULL),
('R020', 11, '2024-10-11 19:57:46', '2024-10-11 14:00:00', 5, NULL, NULL, 600000, 120000, 'Deposit Successful', 'cd0ee0ad-a683-4789-8482-64b968721e80', '47366abc-d256-432d-9b9e-a4027ee6fbe7', '2024-10-11 12:57:53', '0', '2024-10-11 12:58:14', '', '2024-10-11 12:59:00', '3', '0', NULL, NULL, NULL, NULL, NULL),
('R021', 11, '2024-10-14 12:13:35', '2024-10-18 14:00:00', 2, NULL, NULL, 150000, 30000, 'Deposit Successful', NULL, NULL, '2024-10-14 05:13:43', '0', '2024-10-14 05:14:49', '', '2024-10-21 14:21:00', '3', '0', NULL, NULL, NULL, NULL, NULL),
('R022', 11, '2024-10-14 12:15:48', '2024-10-19 14:00:00', 2, NULL, NULL, 100000, 20000, 'Full Pay Successful', NULL, NULL, '2024-10-14 05:15:53', '0', '2024-10-14 05:16:05', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R023', 11, '2024-10-14 12:16:38', '2024-10-19 14:00:00', 2, NULL, NULL, 200000, 40000, 'Full Pay Successful', NULL, NULL, '2024-10-14 05:16:43', '0', '2024-10-14 05:16:58', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R024', 11, '2024-10-14 18:24:24', '2024-10-12 14:00:00', 3, '', 4, 250000, 50000, 'Done', '7aa3b21e-431e-4dba-9d61-306902c1781a', '1a47ed95-4544-464d-bc00-90d71d1c4b97', '2024-10-14 11:25:31', '0', '2024-10-14 11:26:01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R025', 11, '2024-10-14 18:42:36', '2024-10-20 14:00:00', 3, NULL, NULL, 400000, 80000, 'Deposit Successful', '36d6cb5a-8370-4db5-b724-7af3c77c2322', NULL, '2024-10-14 11:42:55', '0', '2024-10-14 11:43:14', '', '2024-10-14 11:45:00', '1', '1', '2024-10-14 11:47:45', 'Wawan - Bank CAB - 69696969', '1728906462_81e712e85c31e9c4bacd.jpg', '1', '2024-10-14 11:48:15'),
('R026', 11, '2024-10-14 18:49:16', '2024-10-12 14:00:00', 3, NULL, NULL, 100000, 20000, '1', '985d0337-858c-43e1-b76d-a5c617746694', NULL, '2024-10-14 11:49:21', '0', '2024-10-14 11:49:36', '', '2024-10-14 11:50:00', '2', '0', NULL, NULL, NULL, NULL, NULL),
('R027', 11, '2024-10-14 20:47:57', '2024-10-20 14:00:00', 2, NULL, NULL, 300000, 60000, 'Full Pay Successful', '7bf4ba9e-58ee-4923-8b9a-f2c1dcd04077', '818786ed-9c35-4397-883b-6d3c511ceefc', '2024-10-14 13:48:40', '0', '2024-10-14 13:48:48', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R028', 11, '2024-10-21 21:21:53', '2024-10-20 14:00:00', 2, 'mantap', 5, 300000, 60000, 'Done', '649e8678-240a-4860-839c-8a185389ab5c', '285a8c3e-fb15-4f52-9734-a97cf83d69d6', '2024-10-21 14:22:10', '0', '2024-10-21 14:22:29', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R029', 11, '2024-10-26 15:43:29', '2024-10-23 14:00:00', 2, 'bagus', 5, 840000, 168000, 'Done', '785c69af-5675-4a5c-8b7c-5adcdf4bd0ce', '8bc0f8f6-4246-4262-9712-baf745cf99fb', '2024-10-26 08:43:52', '0', '2024-10-26 08:44:07', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('R030', 11, '2024-10-26 17:07:52', '2024-10-31 14:00:00', 4, NULL, NULL, 350000, 70000, '1', NULL, NULL, '2024-10-26 10:08:15', '1', '2024-10-26 10:08:39', '', '2024-10-30 09:45:00', '2', '0', NULL, NULL, NULL, NULL, NULL);

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
('H12', '01', 'R024', 0, 0, 0, 1, 100000),
('H13', '02', 'R029', 1, 2, 0, 2, 40000);

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
('H12', '1', '1', '2024-10-17', 'R016'),
('H12', '1', '1', '2024-10-18', 'R016'),
('H12', '1', '2', '2024-10-17', 'R016'),
('H12', '1', '2', '2024-10-18', 'R016'),
('H12', '1', '3', '2024-10-16', 'R017'),
('H12', '1', '3', '2024-10-17', 'R017'),
('H12', '1', '1', '2024-10-19', 'R022'),
('H12', '1', '2', '2024-10-19', 'R023'),
('H12', '1', '3', '2024-10-19', 'R024'),
('H12', '1', '1', '2024-10-20', 'R027'),
('H12', '1', '1', '2024-10-25', 'R028'),
('H13', '1', '1', '2024-10-29', 'R029'),
('H13', '1', '1', '2024-10-30', 'R029');

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
('H12', '1', '3', 'R018', '2024-10-18'),
('H12', '1', '3', 'R018', '2024-10-19'),
('H12', '1', '1', 'R019', '2024-10-14'),
('H12', '1', '1', 'R019', '2024-10-15'),
('H12', '1', '2', 'R019', '2024-10-14'),
('H12', '1', '2', 'R019', '2024-10-15'),
('H12', '1', '1', 'R020', '2024-10-14'),
('H12', '1', '1', 'R020', '2024-10-15'),
('H12', '1', '2', 'R020', '2024-10-14'),
('H12', '1', '2', 'R020', '2024-10-15'),
('H12', '1', '3', 'R021', '2024-10-18'),
('H12', '1', '1', 'R025', '2024-10-20'),
('H12', '1', '1', 'R026', '2024-10-20'),
('H12', '1', '1', 'R030', '2024-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `souvenir_place`
--

CREATE TABLE `souvenir_place` (
  `id` varchar(2) NOT NULL,
  `village_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
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

INSERT INTO `souvenir_place` (`id`, `village_id`, `name`, `address`, `employee_name`, `phone`, `open`, `close`, `geom`, `lat`, `lng`, `description`, `created_at`, `updated_at`) VALUES
('S1', '1', 'Galeri Seni', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Putri', '085267256677', '09:00:00', '18:00:00', 0xe610000001030000000100000005000000f91c9feb981f5940b693dd870756ddbff91c9f539a1f594090ba82c8b855ddbff91c5f759a1f59400d3d9306a556ddbffa1cff3f991f594098a50586e856ddbff91c9feb981f5940b693dd870756ddbf, -0.45839325, 100.49375546, 'Galeri Seni merupakan sebuah toko souvenir di Nagari Tuo Pariangan. Galeri Seni menjual berbagai macam sovenir khas dari Nagari Tuo Pariangan.', '2024-10-25 03:51:07', '2024-10-25 03:51:07'),
('S2', '1', 'Rumah UKM Batik Nagari Tuo Pariangan', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 'Martini', '081266124955', '21:00:00', '06:00:00', 0xe610000001030000000100000006000000bb04dbc2681f59403dbd097af00addbfbc043bf8691f59402b655f7ed408ddbfbc04fb276b1f59409c9d259ef008ddbfba04fb086c1f5940c77b3e1d6109ddbfbc041bbd6a1f5940961124b8dc0bddbfbb04dbc2681f59403dbd097af00addbf, -0.45375648, 100.49086903, 'Rumah UKM Batik Nagari Tuo Pariangan merupakan sebuah UMKM yang membuat batik khas Nagari Tuo Pariangan', '2024-10-25 04:04:07', '2024-10-25 04:04:07');

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
('001', 'S1', '1729871401_671e3da426af550d5f5d.jpg', '2024-10-25 03:51:07', '2024-10-25 03:51:07'),
('002', 'S1', '1729871402_f57c197a3860b28a43e1.jpg', '2024-10-25 03:51:07', '2024-10-25 03:51:07'),
('003', 'S1', '1729871403_4a2dab39e3f99b8e216c.jpg', '2024-10-25 03:51:07', '2024-10-25 03:51:07'),
('004', 'S1', '1729871404_f9518595c7eec23848ec.jpg', '2024-10-25 03:51:07', '2024-10-25 03:51:07'),
('005', 'S1', '1729871403_6074b50d9f1c7720f2e1.jpg', '2024-10-25 03:51:07', '2024-10-25 03:51:07'),
('006', 'S2', '1729872184_7712cd186c4c942f5796.jpg', '2024-10-25 04:04:07', '2024-10-25 04:04:07'),
('007', 'S2', '1729872184_8085f26cc2893a3baa57.jpg', '2024-10-25 04:04:07', '2024-10-25 04:04:07'),
('008', 'S2', '1729872184_140b46e22304dd584409.jpg', '2024-10-25 04:04:07', '2024-10-25 04:04:07');

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
('01', 'Batik Nagari Tuo Pariangan', '2024-10-25 03:54:38', '2024-10-25 03:54:42'),
('02', 'Gantungan Kunci Sendal', '2024-10-25 03:55:22', '2024-10-25 03:55:22'),
('03', 'Songket Nagari Tuo Pariangan', '2024-10-25 03:55:35', '2024-10-25 03:55:35'),
('04', 'Topi Batik Khas Pariangan', '2024-10-25 03:56:13', '2024-10-25 03:56:13'),
('05', 'Kerajinan Tangan Limbah Plastik Tas Tangan', '2024-10-25 03:57:27', '2024-10-25 03:57:27'),
('06', 'Kerajinan Tangan Tas Kain', '2024-10-25 04:19:39', '2024-10-25 04:19:39');

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
('S1', '01', 200000, '1729872735_9afa37f516ad8beac01e.jpg', 'Batik Khas Nagari Tuo Pariangan\r\n', '2024-10-25 04:12:25', '2024-10-25 04:12:25'),
('S1', '02', 10000, '1729872762_ec76a4cd974506678e13.jpg', 'Kerajinan Tangan Gantungan Kunci Sendal terbuat dari   karet khusus dan kulit sintetis', '2024-10-25 04:14:16', '2024-10-25 04:14:16'),
('S1', '03', 350000, '1729872873_f10454f30383ec9bc3f6.jpg', 'Songket khas Nagari Tuo Pariangan dengan motif khas Pariangan', '2024-10-25 04:15:01', '2024-10-25 04:15:01'),
('S1', '04', 100000, '1729872974_44d689115c64690a6fa3.jpg', 'Bermotif batik khas Pariangan', '2024-10-25 04:16:40', '2024-10-25 04:16:40'),
('S1', '05', 35000, '1729873140_00df20a5ba32c35f7537.jpg', 'Terbuat dari limbah plastik', '2024-10-25 04:19:20', '2024-10-25 04:19:20'),
('S1', '06', 50000, '1729873199_826f4040b7787956ef47.jpg', 'Kerajinan tangan tas berbahan dasar kain bermotif\r\n', '2024-10-25 04:20:27', '2024-10-25 04:20:27'),
('S2', '01', 150000, '1729872687_689a5dc9724284bee54e.jpg', 'Batik Khas Nagari Tuo Pariangan', '2024-10-25 04:11:40', '2024-10-25 04:11:40');

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
(7, 'pokdarwispariangan1@gmail.com', 'pokdarwis.pariangan', 'Fakhrudoni Putra', 'Account', 'Desa Wisata Nagari Tuo Pariangan', '082218141289', 'default.jpg', '$2y$10$KKs/QMWOtQgv6eN0wOiCQO5SDa14h2o387oiOCPyn9nGDKFs0usAu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-10-28 22:51:29', '2023-10-28 22:51:29', NULL),
(11, 'shandyka2403@gmail.com', 'dykdyk', 'Dyka', 'Dyka', 'Padang', '081364928950', 'default.jpg', '$2y$10$fVxJTbgT/Ja7xSc56553suT/tYJA8XzUL9zkl61yBYR/qtNQ35OoG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-12-14 20:28:36', '2023-12-14 20:28:36', NULL),
(23, 'umegahomestay@gmail.com', 'umegahomestay', 'Owner Umega', 'Homestay', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', '081374106956', 'default.jpg', '$2y$10$t/tLnMQiHV.4x9rez4BozenBzYWYsax3IZy5apnWa729tS1p944xq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-09-26 11:40:48', '2024-09-26 11:40:48', NULL),
(24, 'gudesterhomestay@gmail.com', 'gudesterhomestay', 'Owner Gudester', 'Homestay', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', '082269375195', 'default.jpg', '$2y$10$e4cqmQwqIh8drtCvobmCuOodW.zIHGRwqIn9RKfG6u6MapDSJ2dva', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-09-28 05:04:12', '2024-09-28 05:04:12', NULL),
(25, 'nabilahomestay@gmail.com', 'nabilahomestay', 'Owner Nabila', 'Homestay', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', '082249063128', 'default.jpg', '$2y$10$hb.4auiFDNFb8uPEePqiauI2jyTKKm47b.4WXfMdB5hxSc6iWmTgq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-10-10 03:16:39', '2024-10-10 03:16:39', NULL);

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
('1', 'Nagari Tuo Pariangan', 'Pariangan.geojson', '1', 'Desa wisata Nagari Tuo Pariangan adalah sebuah desa indah yang terletak di lereng Gunung Marapi, sebuah gunung api aktif yang berada di dataran tinggi Provinsi Sumatera Barat. Berada di ketinggian 800 - 1000 mdpl, Pariangan memiliki topografi daerah perbukitan dan pegunungan dengan udara yang sejuk. Posisi geografis ini juga memberikan anugerah alam yang elok dan subur bagi desa wisata Pariangan dimana sawah berjenjang memanjakan mata dari lereng Gunung Marapi hingga lembah-lembah yang ada dibawahnya bahkan hingga ke Danau Singkarak.\r\n\r\nPariangan adalah sebuah desa yang istimewa. Tambo, tradisi lisan Masayarakat Minangkabau, menyebut Pariangan sebagai desa atau nagari tertua tempat nenek moyang dan peradaban mereka bermula. Hal ini tertuang dalam pepatah kuno “dari mano dating titiak palito, dari telong nan Batali. Dari mano asa nenek moyang kito, dari puncak gunuang Marapi.” Hingga saat ini, masih ditemukan berbagai bukti peradaban tua Masyarakat Minangkabau di nagari ini seperti Batu Lantak Tigo, Kuburan Panjang Datuak Tantejo Gurhano, Sawah Satampang Baniah, Lurah Indak Barayia dan masih banyak lagi yang lainnya. ', 1, '06:00:00', '23:59:00', 'Pariangan, Kecamatan Pariangan, Kabupaten Tanah Datar, Sumatera Barat', 'pokdarwispariangan1@gmail.com', 'pokdarwis.pariangan', 'pokdarwis.pariangan', NULL, 'pokdarwis.pariangan', '1729874403_b6f40f9b39e8ec29c967.mp4', NULL, NULL),
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
('001', '1', '1729874400_44ed68a82624a547c37a.webp'),
('002', '1', '1729874400_39ad3f97336f25c40b5a.jpg'),
('003', '1', '1729874402_1b5e09f9fe295370361a.jpg'),
('004', '1', '1729874402_940eb56dce211088c4f5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `worship_place`
--

CREATE TABLE `worship_place` (
  `id` varchar(2) NOT NULL,
  `village_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
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

INSERT INTO `worship_place` (`id`, `village_id`, `name`, `worship_place_category`, `address`, `capacity`, `geom`, `lat`, `lng`, `description`, `created_at`, `updated_at`) VALUES
('W1', '1', 'Masjid Ishlah', '01', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 300, 0xe610000001030000000100000008000000aa28c5e6801f59402eac9f117654ddbfaa28c505801f59408abbe06cb956ddbfa928451c801f59406dbc2fcc0d57ddbfaa284535851f59400dbaae48b958ddbfaa28a510861f59400e89b1eccf56ddbfaa284535851f594043481f8e2156ddbfaa284519831f5940707855901355ddbfaa28c5e6801f59402eac9f117654ddbf, -0.45841019, 100.49237328, 'Masjid Islah Nagari Tuo Pariangan adalah sebuah masjid bersejarah yang terletak di Nagari Pariangan, Kabupaten Tanah Datar, Sumatera Barat. Masjid ini dikenal sebagai salah satu bangunan religius tertua di Minangkabau, dengan arsitektur tradisional yang mencerminkan nilai budaya dan keagamaan yang kuat. Dibangun dengan dominasi gaya arsitektur Minangkabau, masjid ini memiliki atap berbentuk gonjong, mirip dengan rumah adat Minangkabau (rumah gadang), yang memberikan kesan megah dan khas. Bangunan ini menggunakan material alami seperti kayu dan batu, yang menjadikannya sejalan dengan lingkungan alam sekitarnya yang asri dan indah.', '2024-10-25 03:42:41', '2024-10-25 03:42:41'),
('W2', '1', 'Mesjid AT TAQWA Pariangan', '01', 'Pariangan, Kec. Pariangan, Kabupaten Tanah Datar, Sumatera Barat ', 250, 0xe6100000010300000001000000080000004f5e6bf6051f594064b19c518078dcbf505e4bcc041f594030bbb3cf7779dcbf505e4b45041f5940519666eda17adcbf4f5e6be8041f59406c4e670a267cdcbf505e0b18081f59409e13f8495e7cdcbf505ecb39081f59400d9f508c2e7bdcbf515e4b9c071f594069200111cf78dcbf4f5e6bf6051f594064b19c518078dcbf, -0.44497283, 100.48475636, 'Masjid At-Taqwa Pariangan adalah sebuah masjid ikonik yang berada di Nagari Pariangan, Kabupaten Tanah Datar, Sumatera Barat. Masjid ini terletak di kawasan yang terkenal sebagai salah satu desa tertua di Minangkabau, menjadikannya pusat spiritual dan sosial bagi masyarakat setempat. Meskipun tidak setua Masjid Islah, Masjid At-Taqwa tetap memiliki nilai penting dalam sejarah perkembangan Islam di Pariangan. Arsitektur masjid ini merupakan perpaduan antara desain modern dan tradisional Minangkabau. Atap masjid yang berbentuk limas dipadukan dengan ornamen khas lokal, memberikan keseimbangan antara estetika kontemporer dan nilai-nilai budaya setempat. Struktur bangunan ini dibangun dengan menggunakan bahan-bahan yang kuat dan tahan lama, serta didesain untuk menampung jamaah dalam jumlah yang cukup besar, khususnya pada saat perayaan hari-hari besar Islam.', '2024-10-25 03:44:16', '2024-10-25 03:44:16');

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
('001', 'W1', '1729870953_39736c9f5b1a82faaad3.jpg', '2024-10-25 03:42:41', '2024-10-25 03:42:41'),
('002', 'W1', '1729870950_679848b3cdf5dab16f8f.jpeg', '2024-10-25 03:42:41', '2024-10-25 03:42:41'),
('003', 'W1', '1729870951_ac3494ee57ef5f6caa2d.webp', '2024-10-25 03:42:41', '2024-10-25 03:42:41'),
('004', 'W2', '1729871032_52bd6ff5a3622ba75099.jpg', '2024-10-25 03:44:16', '2024-10-25 03:44:16'),
('005', 'W2', '1729871032_618ab41827c11668f78e.jpg', '2024-10-25 03:44:16', '2024-10-25 03:44:16');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `village_id` (`village_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `village_id` (`village_id`);

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
  ADD KEY `worship_place_worship_place_category_foreign` (`worship_place_category`),
  ADD KEY `village_id` (`village_id`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- Constraints for table `culinary_place`
--
ALTER TABLE `culinary_place`
  ADD CONSTRAINT `culinary_place_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `souvenir_place`
--
ALTER TABLE `souvenir_place`
  ADD CONSTRAINT `souvenir_place_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `worship_place_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `village` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
