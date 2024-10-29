-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2022 lúc 06:29 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `classes`
--

INSERT INTO `classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DHTI12A2HN', '2022-01-14 19:38:41', '2022-01-14 22:39:42'),
(2, 'DHTI12A1HN', '2022-01-14 19:38:41', '2022-01-14 22:39:55'),
(3, 'DHTI12A1ND', '2022-01-14 19:38:41', '2022-01-14 22:40:08'),
(4, 'DHD12A1HN', '2022-01-14 19:38:41', '2022-01-15 20:23:12'),
(5, 'DHD12A2HN', '2022-01-14 19:38:41', '2022-01-15 20:23:20'),
(6, 'DHTI12A3HN', '2022-01-14 19:38:41', '2022-01-15 20:23:29'),
(7, 'DHD12A3HN', '2022-01-14 19:38:41', '2022-01-15 20:23:41'),
(8, 'DHD12A4HN', '2022-01-14 19:38:41', '2022-01-15 20:24:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(231, '2014_10_12_000000_create_users_table', 1),
(232, '2014_10_12_100000_create_password_resets_table', 1),
(233, '2019_08_19_000000_create_failed_jobs_table', 1),
(234, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(235, '2022_01_13_015525_create_subjects_table', 1),
(236, '2022_01_13_015542_create_teacher_profiles_table', 1),
(237, '2022_01_13_020203_create_classes_table', 1),
(238, '2022_01_13_020204_create_student_profiles_table', 1),
(239, '2022_01_13_090426_create_teacher_subject_table', 1),
(240, '2022_01_13_100112_create_scores_table', 1),
(241, '2022_01_14_143526_create_request_edit_score_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `request_edit_score`
--

CREATE TABLE `request_edit_score` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `score_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `request_edit_score`
--

INSERT INTO `request_edit_score` (`id`, `score_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 'thầy / cô xem lại điểm cuối kì giúp e với ạ', '2022-01-17 20:54:49', '2022-01-17 20:54:49'),
(2, 25, 'thầy / cô xem lại cho e điểm thành phần 1 cho e với ạ', '2022-01-17 20:56:21', '2022-01-17 20:56:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `tp1` double(8,2) UNSIGNED NOT NULL,
  `tp2` double(8,2) UNSIGNED DEFAULT NULL,
  `qt` double(8,2) UNSIGNED DEFAULT NULL,
  `ck` double(8,2) UNSIGNED DEFAULT NULL,
  `tk` double(8,2) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `scores`
--

INSERT INTO `scores` (`id`, `student_id`, `subject_id`, `tp1`, `tp2`, `qt`, `ck`, `tk`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 8.00, 8.00, 8.00, 8.00, 8.00, '2022-01-14 21:29:12', '2022-01-14 21:29:12'),
(3, 1, 1, 7.00, 7.00, 7.00, 7.00, 7.00, '2022-01-14 23:02:00', '2022-01-14 23:02:00'),
(25, 1, 2, 10.00, 9.00, 10.00, 8.00, NULL, '2022-01-17 20:24:50', '2022-01-17 20:24:50'),
(26, 1, 3, 10.00, 7.00, 10.00, 8.00, NULL, '2022-01-17 20:25:08', '2022-01-17 20:25:08'),
(27, 1, 4, 9.00, 9.00, 10.00, 8.00, NULL, '2022-01-17 20:25:27', '2022-01-17 20:25:27'),
(28, 1, 5, 10.00, 7.00, 10.00, 9.00, NULL, '2022-01-17 20:25:50', '2022-01-17 20:25:50'),
(29, 1, 6, 10.00, 10.00, 10.00, 10.00, NULL, '2022-01-17 20:26:13', '2022-01-17 20:26:13'),
(30, 1, 7, 10.00, 8.00, 10.00, 8.00, NULL, '2022-01-17 20:26:42', '2022-01-17 20:26:42'),
(31, 1, 9, 8.00, 8.00, 10.00, 8.00, NULL, '2022-01-17 20:27:00', '2022-01-17 20:27:00'),
(32, 1, 10, 7.00, 8.00, 10.00, 9.00, NULL, '2022-01-17 20:27:22', '2022-01-17 20:27:22'),
(33, 1, 12, 8.00, 8.00, 8.00, 7.00, NULL, '2022-01-17 20:27:39', '2022-01-17 20:27:39'),
(36, 7, 4, 8.00, 9.00, 8.00, 8.00, NULL, '2022-01-17 20:29:19', '2022-01-17 20:29:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dob` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `dob`, `code`, `class_id`, `created_at`, `updated_at`) VALUES
(1, '2003-08-08 00:00:00', 'student', 6, '2022-01-14 19:38:41', '2022-01-18 19:38:01'),
(7, '2000-06-13 00:00:00', '18120110', 1, '2022-01-17 18:08:40', '2022-01-17 18:08:40'),
(11, '2000-12-01 00:00:00', '1810325', 6, '2022-01-17 18:25:11', '2022-01-17 18:25:11'),
(12, '1999-11-15 00:00:00', '18456', 5, '2022-01-17 18:25:55', '2022-01-17 18:25:55'),
(13, '2000-11-05 00:00:00', '181036', 8, '2022-01-17 18:26:41', '2022-01-17 18:26:41'),
(14, '2000-01-01 00:00:00', '181025', 4, '2022-01-17 18:27:51', '2022-01-17 18:27:51'),
(16, '2000-08-01 00:00:00', '181011', 1, '2022-01-17 18:28:54', '2022-01-17 18:28:54'),
(27, '2000-05-01 00:00:00', '18103125', 1, '2022-01-17 18:38:09', '2022-01-17 18:38:09'),
(28, '2000-08-01 00:00:00', '1810452', 2, '2022-01-17 18:39:04', '2022-01-17 18:39:04'),
(29, '2000-01-18 00:00:00', '1810521', 7, '2022-01-17 18:40:06', '2022-01-17 18:40:06'),
(30, '2000-05-01 00:00:00', '1810256', 8, '2022-01-17 18:40:50', '2022-01-17 18:40:50'),
(35, '2000-12-01 00:00:00', '181032', 1, '2022-01-17 18:42:53', '2022-01-17 18:42:53'),
(40, '2000-12-01 00:00:00', '1810321', 1, '2022-01-17 18:45:06', '2022-01-17 18:45:06'),
(41, '2000-12-12 00:00:00', '181256', 3, '2022-01-17 18:45:51', '2022-01-17 18:45:51'),
(42, '2000-12-13 00:00:00', '18152', 1, '2022-01-17 18:46:49', '2022-01-17 18:46:49'),
(47, '2000-01-01 00:00:00', '1810310', 3, '2022-01-17 18:50:27', '2022-01-17 18:50:27'),
(48, '2000-11-01 00:00:00', '1810462', 4, '2022-01-17 18:51:10', '2022-01-17 18:51:10'),
(49, '2000-11-01 00:00:00', '123456', 5, '2022-01-17 18:51:46', '2022-01-17 18:51:46'),
(50, '2000-01-02 00:00:00', '185102586', 7, '2022-01-17 18:52:33', '2022-01-17 18:52:33'),
(51, '2000-02-01 00:00:00', '1810654', 7, '2022-01-17 18:53:53', '2022-01-17 18:53:53'),
(60, '2000-02-01 00:00:00', '1810322', 1, '2022-01-17 18:57:28', '2022-01-17 18:57:28'),
(61, '2000-08-01 00:00:00', '18103102', 8, '2022-01-17 18:58:20', '2022-01-17 18:58:20'),
(78, '1999-10-12 00:00:00', '1810111', 5, '2022-01-17 19:27:33', '2022-01-17 19:27:33'),
(79, '2000-01-01 00:00:00', '123', 8, '2022-01-17 19:28:06', '2022-01-17 19:28:06'),
(86, '2000-12-17 00:00:00', '1810213', 5, '2022-01-17 19:30:47', '2022-01-17 21:20:42'),
(87, '2000-10-12 00:00:00', '18103256', 3, '2022-01-17 19:31:32', '2022-01-17 19:31:32'),
(93, '2000-12-11 00:00:00', '18102636', 6, '2022-01-17 19:33:55', '2022-01-17 19:33:55'),
(100, '2000-11-11 00:00:00', '18101123', 1, '2022-01-17 19:49:10', '2022-01-17 19:49:10'),
(101, '2000-10-15 00:00:00', '18102359', 8, '2022-01-17 19:49:50', '2022-01-17 19:49:50'),
(102, '2000-10-17 00:00:00', '181031256', 1, '2022-01-17 19:51:00', '2022-01-17 19:51:00'),
(103, '2000-01-01 00:00:00', '18103210', 7, '2022-01-17 19:51:25', '2022-01-17 19:51:25'),
(114, '2000-04-10 00:00:00', '18103215', 5, '2022-01-17 19:57:38', '2022-01-17 19:57:38'),
(115, '2000-02-01 00:00:00', '1810236', 2, '2022-01-17 19:58:34', '2022-01-17 19:58:34'),
(116, '1999-10-25 00:00:00', '18795263', 3, '2022-01-17 19:59:30', '2022-01-17 19:59:30'),
(123, '2000-12-16 00:00:00', '1811258', 6, '2022-01-17 20:01:31', '2022-01-17 20:01:31'),
(124, '2000-12-12 00:00:00', '1811444', 8, '2022-01-17 20:02:13', '2022-01-17 20:02:13'),
(125, '1999-02-01 00:00:00', '181458263', 4, '2022-01-17 20:02:50', '2022-01-17 20:02:50'),
(127, '2000-02-01 00:00:00', '1812369', 7, '2022-01-17 20:03:39', '2022-01-17 20:03:39'),
(132, '2000-06-17 00:00:00', '19103101', 6, '2022-01-17 20:05:09', '2022-01-17 20:05:09'),
(133, '2000-12-01 00:00:00', '18425610', 5, '2022-01-17 20:05:53', '2022-01-17 20:05:53'),
(134, '2000-06-17 00:00:00', '19103256', 4, '2022-01-17 20:06:39', '2022-01-17 20:06:39'),
(135, '1999-11-15 00:00:00', '18103600', 3, '2022-01-17 20:07:43', '2022-01-17 20:07:43'),
(136, '2001-03-31 00:00:00', '189652', 2, '2022-01-17 20:09:07', '2022-01-17 21:09:26'),
(137, '2000-10-14 00:00:00', '1816587', 1, '2022-01-17 20:10:02', '2022-01-17 20:10:02'),
(141, '2000-08-07 00:00:00', '18103356', 1, '2022-01-17 20:12:13', '2022-01-17 20:12:13'),
(143, '2000-11-12 00:00:00', '1910232', 1, '2022-01-17 20:39:23', '2022-01-17 20:39:23'),
(146, '2000-09-11 00:00:00', '1918265', 1, '2022-01-17 20:40:17', '2022-01-17 20:40:17'),
(147, '1970-01-01 00:00:00', '19103258', 1, '2022-01-17 20:40:53', '2022-01-17 20:40:53'),
(148, '2000-05-01 00:00:00', '1816523', 1, '2022-01-17 20:41:32', '2022-01-17 20:41:32'),
(149, '1970-01-01 00:00:00', '18103589', 1, '2022-01-17 20:41:58', '2022-01-17 20:41:58'),
(150, '2000-12-12 00:00:00', '1913658', 1, '2022-01-17 20:42:35', '2022-01-17 20:42:35'),
(151, '2000-12-10 00:00:00', '18102555', 1, '2022-01-17 20:43:03', '2022-01-17 20:43:03'),
(152, '2000-12-15 00:00:00', '1896523', 1, '2022-01-17 20:43:29', '2022-01-17 20:43:29'),
(153, '1970-01-01 00:00:00', '1815263', 1, '2022-01-17 20:43:59', '2022-01-17 20:43:59'),
(154, '1999-01-01 00:00:00', '1895236', 2, '2022-01-17 20:49:23', '2022-01-17 20:49:23'),
(155, '2000-12-12 00:00:00', '1847526', 2, '2022-01-17 20:49:56', '2022-01-17 20:49:56'),
(156, '2000-12-10 00:00:00', '18103288', 2, '2022-01-17 20:50:29', '2022-01-17 20:50:29'),
(157, '2000-12-05 00:00:00', '19874456', 2, '2022-01-17 20:51:00', '2022-01-17 20:51:00'),
(158, '2000-11-01 00:00:00', '198745', 2, '2022-01-17 20:51:33', '2022-01-17 20:51:33'),
(159, '1970-01-01 00:00:00', '174523', 2, '2022-01-17 20:51:56', '2022-01-17 20:51:56'),
(160, '2000-11-12 00:00:00', '1847563', 2, '2022-01-17 20:52:25', '2022-01-17 20:52:25'),
(161, '2000-04-01 00:00:00', '1874123', 2, '2022-01-17 20:53:01', '2022-01-17 20:53:01'),
(162, '2000-10-12 00:00:00', '178523', 3, '2022-01-17 20:59:02', '2022-01-17 20:59:02'),
(163, '2000-02-01 00:00:00', '17842323', 3, '2022-01-17 20:59:31', '2022-01-17 20:59:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'Toán Cao Cấp 1', 'TCC1', 1, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(2, 'Toán Cao Cấp 2', 'TCC2', 2, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(3, 'Toán Cao Cấp 3', 'TCC3', 1, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(4, 'Giải thuật lập trình', 'GTL', 3, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(5, 'Tư tưởng Hồ Chí Minh', 'TTH', 2, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(6, 'Mạng Máy Tính', 'MMT', 3, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(7, 'An Toàn Mạng', 'ATM', 4, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(9, 'Xác suất thống kê', 'XST', 4, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(10, 'Thể chất 1', 'TC1', 5, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(11, 'Thể chất 2', 'TC2', 6, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(12, 'Đường Lối', 'DL', 2, '2022-01-15 22:26:20', '2022-01-16 04:31:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `created_at`, `updated_at`) VALUES
(1, '2022-01-14 19:38:41', '2022-01-14 19:38:41'),
(2, '2022-01-15 20:22:42', '2022-01-15 20:22:42'),
(7, '2022-01-17 19:38:04', '2022-01-17 19:38:04'),
(8, '2022-01-17 19:38:50', '2022-01-17 19:38:50'),
(9, '2022-01-17 19:39:43', '2022-01-17 19:39:43'),
(10, '2022-01-17 19:40:34', '2022-01-17 19:40:34'),
(11, '2022-01-17 19:41:12', '2022-01-17 19:41:12'),
(12, '2022-01-17 19:41:48', '2022-01-17 19:41:48'),
(13, '2022-01-17 19:42:26', '2022-01-17 19:42:26'),
(14, '2022-01-17 19:43:15', '2022-01-17 19:43:15'),
(15, '2022-01-17 19:43:45', '2022-01-17 19:43:45'),
(17, '2022-01-17 19:44:32', '2022-01-17 19:44:32'),
(19, '2022-01-17 19:46:04', '2022-01-17 19:46:04'),
(23, '2022-01-17 19:48:01', '2022-01-17 19:48:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher_subject`
--

INSERT INTO `teacher_subject` (`id`, `teacher_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(2, 1, 11, '2022-01-15 22:26:36', '2022-01-15 22:26:36'),
(3, 2, 10, '2022-01-15 22:26:41', '2022-01-15 22:26:41'),
(4, 1, 7, '2022-01-15 22:26:45', '2022-01-15 22:26:45'),
(5, 1, 12, '2022-01-16 04:31:02', '2022-01-16 04:31:02'),
(8, 1, 1, '2022-01-18 09:13:12', '2022-01-18 09:13:12'),
(9, 2, 1, '2022-01-18 09:13:12', '2022-01-18 09:13:12'),
(10, 11, 2, '2022-01-18 09:13:24', '2022-01-18 09:13:24'),
(11, 12, 2, '2022-01-18 09:13:24', '2022-01-18 09:13:24'),
(12, 13, 2, '2022-01-18 09:13:24', '2022-01-18 09:13:24'),
(13, 14, 2, '2022-01-18 09:13:24', '2022-01-18 09:13:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `role`, `profile_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'student@gmail.com', 'student', 'student', 1, '$2y$10$Q26wIpFDUS.T5OYSBdYXxe.neCkOKPuawfSWooSxSZdMPGV5lS/Um', 'K59gyLDQYYXAyvU4D4CQFDoZ5NKX9W5RNxb79PXupLJ3yNJ1XaPgLUyQCXHR', '2022-01-14 19:38:41', '2022-01-15 20:29:48'),
(2, 'Nguyễn Văn B', 'teacher@gmail.com', 'teacher', 'teacher', 1, '$2y$10$.ZJvGGsNwmEZTGaLkNx6cObjhMgJtRyrLk0.Lrgan2DhndkZuhRk.', 'rVfyqNSQirx0yrMvt9dY0dptSAoxg1bc3cGqH2jlGwcbIAcmORW0lCsol5rz', '2022-01-14 19:38:41', '2022-01-15 20:21:59'),
(8, 'Nguyễn Văn A', 't@gmail.com', 'admin', 'teacher', 2, '$2y$10$tnex.O5FwQ.8Qo571ZQPbOfWG2B8J73fcJBo531R8fMlNK823BrLi', NULL, '2022-01-15 20:22:42', '2022-01-15 20:22:42'),
(9, 'Nguễn Văn C', 'as@gmail.com', '18120110', 'student', 7, '$2y$10$40BgYMjDXpgUpHBglUD0tuvTnsw9yldlvscZXy48rQcTqdZAQ/RYG', NULL, '2022-01-17 18:08:40', '2022-01-17 18:08:40'),
(13, 'Hà Văn An', 'a@gmail.com', '1810325', 'student', 11, '$2y$10$uucKDMAgLGcCVMAsPkTgBeajaj8gz/dH9ApNQX2cuC39/obwMgVDu', NULL, '2022-01-17 18:25:11', '2022-01-17 18:25:11'),
(14, 'La Văn D', 'b@gmail.com', '18456', 'student', 12, '$2y$10$eQ6XTjlwRnriJuboj6QuXOWHcmsk1OgSsjgxthvw/H2Sflav7cj86', NULL, '2022-01-17 18:25:56', '2022-01-17 18:25:56'),
(15, 'Nguyễn Thi H', 'H@gmail.com', '181036', 'student', 13, '$2y$10$1zURhyygpy3YXgplbZ3SleP4auRDMS7sDSTgW9XGgokTkjxR6rtMa', NULL, '2022-01-17 18:26:41', '2022-01-17 18:26:41'),
(16, 'Lò Thị G', 'g@gmail.com', '181025', 'student', 14, '$2y$10$bl6RaTffJrBNyeGsxwjnbe69fwT9v8UsTKm.F1zTJum7vMuoGRsD2', NULL, '2022-01-17 18:27:51', '2022-01-17 18:27:51'),
(18, 'Lã A', 'x@gmail.com', '181011', 'student', 16, '$2y$10$ilF6/4HXBUD22CPzwuPZW.usiyoV2CWWYtDIp4HEC.uFkVCUNCaku', NULL, '2022-01-17 18:28:54', '2022-01-17 18:28:54'),
(29, 'Nguyễn Bảo Anh', 'ou@gmail.com', '18103125', 'student', 27, '$2y$10$0eKwNjUpyL7qk.AfZVyvBOVLA0A/0kir12S3KuiFu0txt0geuQw2O', NULL, '2022-01-17 18:38:09', '2022-01-17 18:38:09'),
(30, 'Hoàng Hà', 'op@gmail.com', '1810452', 'student', 28, '$2y$10$Va2A4FRocUq/WfKTcwmtT.oOg5iGJINma.BCHOqfuDq9B4SK8n4F.', NULL, '2022-01-17 18:39:04', '2022-01-17 18:39:04'),
(31, 'Hà Thị A', 'oi@gmail.com', '1810521', 'student', 29, '$2y$10$UFUP/lyqGozfWLokeJpQr.hfy61RliamSnabKN9E1BJ3Rtyo/WN.O', NULL, '2022-01-17 18:40:06', '2022-01-17 18:40:06'),
(32, 'Nguyễn An', 'oy@gmail.com', '1810256', 'student', 30, '$2y$10$3EHc81plsKK.S6sMQPr/.utKPmtrSI54F/ABVzjuZinRZ2FCJa1Ny', NULL, '2022-01-17 18:40:50', '2022-01-17 18:40:50'),
(37, 'Lã F', 'vb@gmail.com', '181032', 'student', 35, '$2y$10$ZIbmkcL7rLZ3pQomyXy7Vu7YUAdEvN1d3zKIS7FHBh4O5DHUbJEn.', NULL, '2022-01-17 18:42:53', '2022-01-17 18:42:53'),
(42, 'Hoàng Hải', 'hoanghai@gmail.com', '1810321', 'student', 40, '$2y$10$3/oVzj4T.YlNy5q5cVbp9eHL.u24dgR3M.gf7mP8GSyIl5mwuNDT2', NULL, '2022-01-17 18:45:06', '2022-01-17 18:45:06'),
(43, 'Lê Hà', 'hale@gmail.com', '181256', 'student', 41, '$2y$10$ZAZ8E/RQlwbUQzp5paMo.u.It3LwbEmZVNfs8aDNmt3VQGtYmFdOO', NULL, '2022-01-17 18:45:51', '2022-01-17 18:45:51'),
(44, 'Trác C', 'ctrac@gmail.com', '18152', 'student', 42, '$2y$10$yFZW4ydcXEwH07sq83S.LeaGwV2drQKn4oD0pT6pjYjotoxMpaSlu', NULL, '2022-01-17 18:46:49', '2022-01-17 18:46:49'),
(49, 'Nguyễn H', 'n@gmail.com', '1810310', 'student', 47, '$2y$10$zrht558rwcLzW.vWtZV3HeWPGWyX/Ig6HNpCvSbxtH9ztfNRSYtb2', NULL, '2022-01-17 18:50:27', '2022-01-17 18:50:27'),
(50, 'Hà Gấm', 'jh@gmail.com', '1810462', 'student', 48, '$2y$10$nWpdtSXAIxOL2y2IRGJlgeysuyv9qD9nPanQd9Ze7KFt5X.V3i5ve', NULL, '2022-01-17 18:51:10', '2022-01-17 18:51:10'),
(51, 'Hà Hải Anh', 'gt@gmail.com', '123456', 'student', 49, '$2y$10$qwZ3kMkQa2Q.53I4NAfKqutj4qg9p0hPUueNN3O0SSICulZfsYZsS', NULL, '2022-01-17 18:51:46', '2022-01-17 18:51:46'),
(52, 'Trác F', 'bt@gmail.com', '185102586', 'student', 50, '$2y$10$1Y7QHYYVg54zVegyeQyEUuCVLOpQH3VueK2GIeFgaoSMSaj2xw2la', NULL, '2022-01-17 18:52:33', '2022-01-17 18:52:33'),
(53, 'Phạm Hằng', 'kh@gmail.com', '1810654', 'student', 51, '$2y$10$j9xvZRPa3r2GDcWfCgI1seV7QkyjMqXLF5SutZ.B4nKmqkAmi2J1O', NULL, '2022-01-17 18:53:53', '2022-01-17 18:53:53'),
(62, 'Nguyễn Hòa', 'm1@gmail.com', '1810322', 'student', 60, '$2y$10$Ny/U6mcpDwXJ614bfl3bneh624PZDR6zvIglOGF1G8nog0eXcvbEq', NULL, '2022-01-17 18:57:28', '2022-01-17 18:57:28'),
(63, 'Lường H', 'kj@gmail.com', '18103102', 'student', 61, '$2y$10$RNPff9weO4Si1MAd8Xp6Pue6AN9d9S9NAEG.OMUxcq7Kx2FggWjlK', NULL, '2022-01-17 18:58:20', '2022-01-17 18:58:20'),
(80, 'Hoàng Bách', 'w@gmail.com', '1810111', 'student', 78, '$2y$10$EXURW/gRc.xS6Oof13H8FujWoo1TAbELsQM5oqnx7sCrGedoZj0cq', NULL, '2022-01-17 19:27:33', '2022-01-17 19:27:33'),
(81, 'La Văn Lam', 'p@gmail.com', '123', 'student', 79, '$2y$10$N8K88wGl/kv4GdyEuNYoMeGXXY5rhEEbUYd0fWx/XSBVx.UPdd.BG', NULL, '2022-01-17 19:28:06', '2022-01-17 19:28:06'),
(88, 'Tô Thị Mai', 'mn@gmail.com', '1810213', 'student', 86, '$2y$10$O4PwbqtG78X/1YYWBU//4ekVZyv2nRCyCfYNB5JJRgkHYjplVxqI2', NULL, '2022-01-17 19:30:47', '2022-01-17 21:20:42'),
(89, 'Nguyễn Văn F', 'km@gmail.com', '18103256', 'student', 87, '$2y$10$CERBEET63CsPsJ4P2rd2vOqEim/sHbgIrerESnNgSCXjfYdQcrM1q', NULL, '2022-01-17 19:31:32', '2022-01-17 19:31:32'),
(95, 'Vũ Xuân Mai', 'mai@gmail.com', '18102636', 'student', 93, '$2y$10$dRu4wGclBJW.4sMvu3ywLOlmAfBV.pEpDc6DaI22VMeXYkiRYh9Z6', NULL, '2022-01-17 19:33:55', '2022-01-17 19:33:55'),
(105, 'Nguyễn Thị Như Hoa', 'teacher1@gmail.com', 'GVHoa', 'teacher', 7, '$2y$10$k23J0tdUAR/l4vQKcxlSEOZKYmGv2NlMo3Pu1AC4IlejDABYr3lg2', NULL, '2022-01-17 19:38:04', '2022-01-17 19:39:01'),
(106, 'Hồ Thị Hoa Tuyết', 'tuyet@gmail.com', 'Tuyết', 'teacher', 8, '$2y$10$fNQ/Sfixvez0kgPt5Ict/uJEzhrFq/agbiU3JGzFP0iRX6vv2dIhy', NULL, '2022-01-17 19:38:50', '2022-01-17 19:38:50'),
(107, 'Nguyễn Quốc Chí', 'Chi@gmail.com', 'Chí', 'teacher', 9, '$2y$10$4isZ23S7jAHM5p2cz3sYouw2LzOjPyL65LwCEvSsj1ix/J7QkhtrC', NULL, '2022-01-17 19:39:43', '2022-01-17 19:39:43'),
(108, 'Nguyễn Tiến Đạt', 'd@gmail.com', 'Đat', 'teacher', 10, '$2y$10$Yj6gqvZNQWHed7nAs.yl1e8zM2C6cMccnuoKom7p8eJ//LebwXtAa', NULL, '2022-01-17 19:40:34', '2022-01-17 19:40:34'),
(109, 'Nguyễn Ngọc Anh Hoa', 'hoa@gmail.com', 'Hoann', 'teacher', 11, '$2y$10$HSktzBLOpwDTSyDMWVhdmeH3rEOO5y7M3.v/x6plz3QtXcqvOgoAy', NULL, '2022-01-17 19:41:12', '2022-01-17 19:41:12'),
(110, 'Nguyễn Quốc Gia', 'Gia@gmail.com', 'Gianq', 'teacher', 12, '$2y$10$vyu474eQ3tnxCi.vRwxGm.QacoSB8OpeHgNjHdueU7ANKUha/RPZe', NULL, '2022-01-17 19:41:48', '2022-01-17 19:41:48'),
(111, 'Hồ Thị Hằng', 'hang@gmail.com', 'Hằng', 'teacher', 13, '$2y$10$fFLUpJCa8aP4Wgu/33DhSO6ujSgV8w9zbkdCGdvPtktNXMjcc1.ue', NULL, '2022-01-17 19:42:26', '2022-01-17 19:42:26'),
(112, 'Hoàng Mai Sao', 'sao@gmail.com', 'Sao', 'teacher', 14, '$2y$10$9zp9EWQNFRrYsKJ/mVTPfetbecza/8/WITCLlK8.6sOk.WMP5aXD6', NULL, '2022-01-17 19:43:15', '2022-01-17 19:43:15'),
(113, 'Lã Thị Lan', 'l@gmail.com', 'lan', 'teacher', 15, '$2y$10$HuusFCvl5VsQHZS1X9dxAOju5dwfVbAvnBYff.fHi9hfl4lNs4w2W', NULL, '2022-01-17 19:43:45', '2022-01-17 19:48:24'),
(115, 'Hoàng Hoa Anh', '123@gmail.com', 'Hoa Anh', 'teacher', 17, '$2y$10$bAnd0ef9vAvRJH5w835vBuXHHISJe/45TsdfoIQzcy7RT0WWPTrLu', NULL, '2022-01-17 19:44:32', '2022-01-17 19:44:32'),
(117, 'Lê Thị Xuân Hòa', 'h12@gmail.com', 'Hòa Lê', 'teacher', 19, '$2y$10$vg2nxBaVZAMz/Wl86qF5SeGpbi6O1mn3ooMfc3fsYTz3LHHXUEfvS', NULL, '2022-01-17 19:46:04', '2022-01-17 19:46:04'),
(121, 'Nguyễn Thị Anh Hoa', 'abc@gmail.com', 'Mrs', 'teacher', 23, '$2y$10$lGeJ73FInqDOYP72nurXuO1w1bzFryOy8UC.GM1445FGixVX0w6ay', NULL, '2022-01-17 19:48:01', '2022-01-17 19:48:01'),
(123, 'Nguyễn Tiến A', 'juiv@gmail.com', '18101123', 'student', 100, '$2y$10$clrR3leXqFZymB8PEs8kBOJLOTppH1p/Y2.o.e.1UqLhpRqAmKAqC', NULL, '2022-01-17 19:49:10', '2022-01-17 19:49:10'),
(124, 'Nguyễn Quốc E', 'hihi@gmail.com', '18102359', 'student', 101, '$2y$10$/XWWE5r6NW4sjxkpGeCeGu5cTWiVJb/4v5KQP5J48/TjJzE1B16m2', NULL, '2022-01-17 19:49:50', '2022-01-17 19:49:50'),
(125, 'Trần Thị Định', 'haha@gmail.com', '181031256', 'student', 102, '$2y$10$9Cjz.a8BcfVPEwmoUT2AhetCuCetLIigPkpRnAaffackKe7TmmaGC', NULL, '2022-01-17 19:51:00', '2022-01-17 19:51:00'),
(126, '123', 'hoho@gmail.com', '18103210', 'student', 103, '$2y$10$Jqidb7T4kCk2Vj1HUygezOXBC.gRns1sOjOvva6tUsyJccEY5RGaK', NULL, '2022-01-17 19:51:25', '2022-01-17 19:51:25'),
(137, 'Hồ Như Ý', 'uy@gmail.com', '18103215', 'student', 114, '$2y$10$t1uc0eHvEF812H.Pc9teoePb5SC48cL9t.HfTP9TpiKA.afLhhtIC', NULL, '2022-01-17 19:57:38', '2022-01-17 19:57:38'),
(138, 'Nguyễn Hà Anh', 'hay@gmail.com', '1810236', 'student', 115, '$2y$10$Nb2F/k4HaaeVMc8Lk0/hY.fkIKzaX3UKWVFT9dySLaF6dk2OvcNLy', NULL, '2022-01-17 19:58:34', '2022-01-17 19:58:34'),
(139, 'Nguyễn Nguyệt Thủy Anh', 'lop@gmail.com', '18795263', 'student', 116, '$2y$10$xPdlCW3M88bFLAUWNZEvo.mFjFNk9EVco5eqIwDgFmmnblDnobGG.', NULL, '2022-01-17 19:59:30', '2022-01-17 19:59:30'),
(146, 'Nguyễn Thanh Vân Đào', 'xs@gmail.com', '1811258', 'student', 123, '$2y$10$QAjal4ZK6zwsFpegqQyYYOfQFlq7m2.18Empq4D1KU2BtcPUkiYSe', NULL, '2022-01-17 20:01:31', '2022-01-17 20:01:31'),
(147, 'Nguyễn Thành Long', 'du@gmail.com', '1811444', 'student', 124, '$2y$10$WUI7iWdqilZhvXA2BkNy0OaR0HJ/fzx4/nvnQRg3LxGlUif/sVR9i', NULL, '2022-01-17 20:02:13', '2022-01-17 20:02:13'),
(148, 'Nguyễn Văn Vân', 'van@gmail.com', '181458263', 'student', 125, '$2y$10$9LKXg.a3WK.7.pjbds9T8.3UO1evQlwvh2/BGtXzs/rFYEkPA1xuu', NULL, '2022-01-17 20:02:50', '2022-01-17 20:02:50'),
(150, 'Nguyễn Thị H', 'ju@gmail.com', '1812369', 'student', 127, '$2y$10$C6Dka56ZbM1LcGx.19ccsOD9j1HrIrRy.2F439w/BHueAPPP5vXNO', NULL, '2022-01-17 20:03:40', '2022-01-17 20:03:40'),
(155, 'Nguyễn Thị Thanh Nga', 'tv@gmail.com', '19103101', 'student', 132, '$2y$10$tOjAvbIKaqoqIQGdfW3zPOFEMVe1cxxDV.TdxCI6D7UQriv0cVaLi', NULL, '2022-01-17 20:05:09', '2022-01-17 20:05:09'),
(156, 'Nguyễn Hảo Hảo', 'xq@gmail.com', '18425610', 'student', 133, '$2y$10$dfqrlCawuDbu7AUNU5r9rO1GAgV7EM0kHFFGeBRRnEduvc2cGN8LK', NULL, '2022-01-17 20:05:53', '2022-01-17 20:05:53'),
(157, 'Nguyễn Vân Anh', 'vv@gmail.com', '19103256', 'student', 134, '$2y$10$9P15vBBZNmWWUnmeqRLome3VIwU/ETfzPH40RKt8w1jAOk7mXWrXG', NULL, '2022-01-17 20:06:39', '2022-01-17 20:06:39'),
(158, 'Trịnh Văn Đức', 'vh@gmail.com', '18103600', 'student', 135, '$2y$10$WYWbvb72U3K5hvY5DtsU9ue9kfqSmNL0VQHhHj3uNwy8gfahSI1IC', NULL, '2022-01-17 20:07:43', '2022-01-17 20:07:43'),
(159, 'Hoàng Thị Hoàn', 'bg@gmail.com', '189652', 'student', 136, '$2y$10$.V6Ja8H.uuRzZfuhHgMqZ.wrVggi7oBizY2K7OycjA82QH3hu4QM2', NULL, '2022-01-17 20:09:07', '2022-01-17 20:09:07'),
(160, 'Hà Hải Nam', 'mi@gmail.com', '1816587', 'student', 137, '$2y$10$Tj37u2C49C4w8LBLliPAn.YpAAxZCq1lko5AjO.iH4N9b3P6BNalK', NULL, '2022-01-17 20:10:02', '2022-01-17 20:10:02'),
(164, 'Trần Hà Vũ', 'soju@gmail.com', '18103356', 'student', 141, '$2y$10$rpUCE09y2waBYarkc6F/Le5qkQ0VbiVx0gNr5.OdInjkdlF2XRgsq', NULL, '2022-01-17 20:12:13', '2022-01-17 20:12:13'),
(166, 'Nguyễn Văn Tú', 'oo7@gmail.com', '1910232', 'student', 143, '$2y$10$/ZlK.NBRwDJ3lV4xAcxo5OUELfXO5r28jOd5O3eH7KrOs9KSU2CqG', NULL, '2022-01-17 20:39:23', '2022-01-17 20:39:23'),
(169, 'Nguyễn M', 'po@gmail.com', '1918265', 'student', 146, '$2y$10$Msp9B7RccqziYpuptdRFbOuVMmC9SoUEYNMlhcYh9Y6JPT.BPrXAO', NULL, '2022-01-17 20:40:17', '2022-01-17 20:40:17'),
(170, 'Hà Thị Thảo', 'bon@gmail.com', '19103258', 'student', 147, '$2y$10$rs4YX9EBUzSLzH9eq3hIauVWwXh0ppxniAPrrICtXJwce.fKTeNpC', NULL, '2022-01-17 20:40:53', '2022-01-17 20:40:53'),
(171, 'Nguyễn Hữu Quân', 'bong@gmail.com', '1816523', 'student', 148, '$2y$10$NN/Kz1iDfTPlLlUrNr9Lue8BtaJSNhYhSQ3Zp.eZeACtgqXs6KXYO', NULL, '2022-01-17 20:41:32', '2022-01-17 20:41:32'),
(172, 'Hà Thị Ha', 'co@gmail.com', '18103589', 'student', 149, '$2y$10$fQxBqBZyFnv.4CFeP6fEt.y6GqlKlTJvEaD9848Bw1MMTwdzZueDO', NULL, '2022-01-17 20:41:58', '2022-01-17 20:41:58'),
(173, 'Mai Đào', 'con@gmail.com', '1913658', 'student', 150, '$2y$10$VZFWYON9L7OqfsO/sL4TZO9XrRSVJIJdmyymlqgE1TPNIvvK6mRMS', NULL, '2022-01-17 20:42:35', '2022-01-17 20:42:35'),
(174, 'Nguyễn Lâm', 'xi@gmail.com', '18102555', 'student', 151, '$2y$10$hiUYPubBZGG77IVuLR2TBe6EoWdDbhZatIPP05pFztdXwqrUfRu8a', NULL, '2022-01-17 20:43:03', '2022-01-17 20:43:03'),
(175, 'Hà Hải', 'xin@gmail.com', '1896523', 'student', 152, '$2y$10$HZ986zb4KYodSV9Gr1bUy.ONhbJhuBxvAfcZrfJDZmtSB0X26.XaG', NULL, '2022-01-17 20:43:29', '2022-01-17 20:43:29'),
(176, 'Nguyễn Thị Sao', 'xinh@gmail.com', '1815263', 'student', 153, '$2y$10$MLvRuiL26uNM3Mg4A1kkqusfL1InTUjCHXvOydZ7LrtquXqmpx4uK', NULL, '2022-01-17 20:43:59', '2022-01-17 20:43:59'),
(177, 'Nguyễn C', 'hi@gmail.com', '1895236', 'student', 154, '$2y$10$jcXzYyGlFpw/0HBnhZgFKOaX.Bvm4on/sMuTJ0QwYcNqWb6qGF0nq', NULL, '2022-01-17 20:49:23', '2022-01-17 20:49:23'),
(178, 'Nguyễn D', 'hii@gmail.com', '1847526', 'student', 155, '$2y$10$GjsWje/sjnPj7.DjMSigo.CBNLm8i4EGnslACwK6pmE5.DuFLAy0O', NULL, '2022-01-17 20:49:56', '2022-01-17 20:49:56'),
(179, 'Nguyễn E', 'hiii@gmail.com', '18103288', 'student', 156, '$2y$10$VTNkrQWc04NBz9GZxH1TV.w3GAMrjviMGtVsnVjXANgKQ9t3VUgci', NULL, '2022-01-17 20:50:29', '2022-01-17 20:50:29'),
(180, 'Nguyễn G', 'hiiii@gmail.com', '19874456', 'student', 157, '$2y$10$HPZUIa4l6W3Fm0eneZEo7OArFA635obtAC3.nMtAB8UFe7rUeau9i', NULL, '2022-01-17 20:51:00', '2022-01-17 20:51:00'),
(181, 'Nguyễn H', 'gi@gmail.com', '198745', 'student', 158, '$2y$10$rRLw1codvz7OS/e29HW09uWv20lBN2VmHvoJ81yN6sF5pCi0X9lnK', NULL, '2022-01-17 20:51:33', '2022-01-17 20:51:33'),
(182, 'Nguyễn J', 'gii@gmail.com', '174523', 'student', 159, '$2y$10$hGKVLzZ9Sp5PeUz1C.XfjOWxDUCeE17zF39aqyHy3K2ODSDUCSzie', NULL, '2022-01-17 20:51:56', '2022-01-17 20:51:56'),
(183, 'Nguyễn N', 'giii@gmail.com', '1847563', 'student', 160, '$2y$10$hrWWnsBx8fSYBZubVZfv5.8NXRddoPVduYqpmRB6AIi6WgjrcdEAm', NULL, '2022-01-17 20:52:25', '2022-01-17 20:52:25'),
(184, 'Nguyễn K', 'giiii@gmail.com', '1874123', 'student', 161, '$2y$10$naVTn1X/j.MnG3vAcHmlUeVNxLzD.w2zdFIHxXASLxLI9jkpeDCzq', NULL, '2022-01-17 20:53:01', '2022-01-17 20:53:01'),
(185, 'Lê A', 'la@gmail.com', '178523', 'student', 162, '$2y$10$5M97CDBLFwCEbd0G.GygM.UqiLUF0pTwg/eeC6a4QuFay3uiw6Pcq', NULL, '2022-01-17 20:59:02', '2022-01-17 20:59:02'),
(186, 'Lê B', 'laa@gmail.com', '17842323', 'student', 163, '$2y$10$bd8ZmgXtbKejoVJ8ZryEFOp0E6BPdQCZH/UAQvxWB9EcwPs4s9BIy', NULL, '2022-01-17 20:59:31', '2022-01-17 20:59:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `request_edit_score`
--
ALTER TABLE `request_edit_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_edit_score_score_id_foreign` (`score_id`);

--
-- Chỉ mục cho bảng `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scores_student_id_subject_id_unique` (`student_id`,`subject_id`),
  ADD KEY `scores_subject_id_foreign` (`subject_id`);

--
-- Chỉ mục cho bảng `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_profiles_class_id_foreign` (`class_id`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_subject_subject_id_foreign` (`subject_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `request_edit_score`
--
ALTER TABLE `request_edit_score`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `teacher_subject`
--
ALTER TABLE `teacher_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `request_edit_score`
--
ALTER TABLE `request_edit_score`
  ADD CONSTRAINT `request_edit_score_score_id_foreign` FOREIGN KEY (`score_id`) REFERENCES `scores` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scores_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Các ràng buộc cho bảng `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD CONSTRAINT `teacher_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `teacher_subject_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_profiles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
