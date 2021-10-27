-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 03:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `bo_phans`
--

CREATE TABLE `bo_phans` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phongban_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bo_phans`
--

INSERT INTO `bo_phans` (`id`, `ten`, `phongban_id`, `created_at`, `updated_at`) VALUES
(1, 'Thiết Kế', 1, NULL, NULL),
(2, 'IT', 1, NULL, NULL),
(3, 'Bảo Trì', 1, NULL, NULL),
(4, 'Xưởng', 1, NULL, NULL),
(5, 'Kế Toán', 3, NULL, NULL),
(6, 'Cung Ứng', 3, NULL, NULL),
(7, 'Kho', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hop_dongs`
--

CREATE TABLE `hop_dongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhansu_id` int(11) NOT NULL,
  `ma_hd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaihopdong_id` int(11) NOT NULL DEFAULT 0,
  `ngay_ky` datetime NOT NULL,
  `ngay_co_hieu_luc` datetime NOT NULL,
  `ngay_het_hieu_luc` datetime NOT NULL,
  `luong_can_ban` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luong_tro_cap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luong_hieu_qua` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hop_dongs`
--

INSERT INTO `hop_dongs` (`id`, `nhansu_id`, `ma_hd`, `ten`, `loaihopdong_id`, `ngay_ky`, `ngay_co_hieu_luc`, `ngay_het_hieu_luc`, `luong_can_ban`, `luong_tro_cap`, `luong_hieu_qua`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 1, 'TP0001/2018/HĐTV-TP', 'Hợp đồng thử việc', 1, '2018-06-11 00:00:00', '2018-06-11 00:00:00', '2018-08-10 00:00:00', '3.800.000', '20.000.000', '30.000.000', 0, NULL, NULL),
(2, 1, 'TP0001/2018/HĐLĐ-TP', 'Hợp đồng lao động', 2, '2018-08-11 00:00:00', '2018-08-11 00:00:00', '2019-08-10 00:00:00', '3.800.000', '40.000.000', '50.000.000', 1, NULL, NULL),
(3, 2, 'TP0002/2018/HĐTV-TP', 'Hợp đồng thử việc', 1, '2017-05-20 00:00:00', '2017-05-20 00:00:00', '2017-07-19 00:00:00', '3.800.000', '6.000.000', '7.150.000', 0, NULL, NULL),
(4, 2, 'TP0002/2018/HĐLĐ-TP', 'Hợp đồng lao động', 2, '2017-07-20 00:00:00', '2017-07-20 00:00:00', '2018-07-19 00:00:00', '3.800.000', '5.000.000', '3.200.000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ho_sos`
--

CREATE TABLE `ho_sos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ho_sos`
--

INSERT INTO `ho_sos` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'Phiếu thông tin ứng viên', NULL, NULL),
(2, 'Giảm trừ gia cảnh', NULL, NULL),
(3, 'Sơ yếu lý lịch', NULL, NULL),
(4, 'Đơn xin việc', NULL, NULL),
(5, 'Chứng minh nhân dân', NULL, NULL),
(6, 'Giấy khám sức khỏe', NULL, NULL),
(7, 'Giấy khai sinh', NULL, NULL),
(8, 'Bằng chính (ĐH, CĐ, TC)', NULL, NULL),
(9, 'Chứng chỉ', NULL, NULL),
(10, 'Hộ khẩu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loai_hop_dongs`
--

CREATE TABLE `loai_hop_dongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_hop_dongs`
--

INSERT INTO `loai_hop_dongs` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'Thử việc', NULL, NULL),
(2, 'Xác định thời hạn', NULL, NULL),
(3, 'Không xác định thời hạn', NULL, NULL),
(4, 'Đào tạo nghề', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loai_quyet_dinhs`
--

CREATE TABLE `loai_quyet_dinhs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_quyet_dinhs`
--

INSERT INTO `loai_quyet_dinhs` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'Điều chỉnh tổng thu nhập', NULL, NULL),
(2, 'Điều chuyển công tác', NULL, NULL),
(3, 'Chấm dứt hợp đồng lao động', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_30_075551_create_phong_bans_table', 1),
(4, '2018_08_30_084129_create_nhan_sus_table', 1),
(5, '2018_08_30_162233_create_ho_sos_table', 1),
(6, '2018_09_05_142047_create_hop_dongs_table', 1),
(7, '2018_09_19_093224_laratrust_setup_tables', 1),
(8, '2018_09_21_093644_create_quyet_dinhs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhan_sus`
--

CREATE TABLE `nhan_sus` (
  `id` int(10) UNSIGNED NOT NULL,
  `ma_nv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_sinh` datetime NOT NULL,
  `so_cmnd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_cap_cmnd` datetime DEFAULT NULL,
  `noi_cap_cmnd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dia_chi_thuong_tru` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_lien_he` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trinh_do` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truong_tot_nghiep` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nam_tot_nghiep` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_bat_dau_lam` datetime DEFAULT NULL,
  `ngay_lam_viec_cuoi` datetime DEFAULT NULL,
  `chuc_danh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phongban_id` int(11) NOT NULL DEFAULT 0,
  `bophan_id` int(11) NOT NULL DEFAULT 0,
  `chung_chi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hoso_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhan_sus`
--

INSERT INTO `nhan_sus` (`id`, `ma_nv`, `ho_ten`, `gioi_tinh`, `ngay_sinh`, `so_cmnd`, `ngay_cap_cmnd`, `noi_cap_cmnd`, `dia_chi_thuong_tru`, `dia_chi_lien_he`, `dien_thoai`, `email`, `trinh_do`, `truong_tot_nghiep`, `nam_tot_nghiep`, `ngay_bat_dau_lam`, `ngay_lam_viec_cuoi`, `chuc_danh`, `phongban_id`, `bophan_id`, `chung_chi`, `hoso_id`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'TP0001', 'Phạm Đức Lộc', 1, '1991-05-17 00:00:00', '225477220', '2008-03-22 00:00:00', 'CA Hải Phòng', '222 Mạc Đăng Doanh - Phường Hưng Đạo - Quận Dương Kinh - TP Hải Phòng', '222 Mạc Đăng Doanh - Phường Hưng Đạo - Quận Dương Kinh - TP Hải Phòngng Vương, P.Phước Tân, Nha Trang, Khánh Hòa', '0999999999', 'admin@nhuatienphong.vn', 'Cao đẳng', 'Đại học Bách Khoa HN', '2015', '2018-06-11 00:00:00', NULL, 'Nhân viên', 1, 2, NULL, '1,3,4,5,8,10', 1, NULL, NULL),
(2, 'TP0002', 'Lưu Tiến Dũng', 1, '1993-07-20 00:00:00', '111111111', '2010-07-03 00:00:00', 'CA Hải Dương', '222 Mạc Đăng Doanh - Phường Hưng Đạo - Quận Dương Kinh - TP Hải Phòng', '222 Mạc Đăng Doanh - Phường Hưng Đạo - Quận Dương Kinh - TP Hải Phòng', '0888999999', 'tiendung@nhuatienphong.vn', 'Đại học', 'ĐH Hàng Hải', '2016', '2017-05-20 00:00:00', NULL, 'Nhân viên', 1, 3, NULL, '1,2,3,4,5,6,7,8,9', 1, NULL, NULL),
(3, 'TP00003', 'Nguyễn Hữu Tình', 1, '1986-12-12 00:00:00', '03333333333', '2018-03-12 00:00:00', 'CA Hà Nam', '222 Mạc Đăng Doanh - Phường Hưng Đạo - Quận Dương Kinh - TP Hải Phòng', '222 Mạc Đăng Doanh - Phường Hưng Đạo - Quận Dương Kinh - TP Hải Phòng', '0888999777', 'tinhtop@nhuatienphong.vn', NULL, NULL, NULL, '2014-12-12 00:00:00', NULL, NULL, 0, 0, NULL, NULL, 1, '2021-10-27 01:45:34', '2021-10-27 01:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'read-dashboard', 'Read Dashboard', 'Read Dashboard', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(2, 'create-users', 'Create Users', 'Create Users', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(3, 'read-users', 'Read Users', 'Read Users', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(4, 'update-users', 'Update Users', 'Update Users', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(5, 'delete-users', 'Delete Users', 'Delete Users', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(6, 'create-acl', 'Create Acl', 'Create Acl', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(7, 'read-acl', 'Read Acl', 'Read Acl', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(8, 'update-acl', 'Update Acl', 'Update Acl', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(9, 'delete-acl', 'Delete Acl', 'Delete Acl', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(10, 'read-profile', 'Read Profile', 'Read Profile', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(11, 'update-profile', 'Update Profile', 'Update Profile', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(12, 'create-nhan-su', 'Create Nhan-su', 'Create Nhan-su', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(13, 'read-nhan-su', 'Read Nhan-su', 'Read Nhan-su', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(14, 'update-nhan-su', 'Update Nhan-su', 'Update Nhan-su', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(15, 'delete-nhan-su', 'Delete Nhan-su', 'Delete Nhan-su', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(16, 'create-hop-dong', 'Create Hop-dong', 'Create Hop-dong', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(17, 'read-hop-dong', 'Read Hop-dong', 'Read Hop-dong', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(18, 'update-hop-dong', 'Update Hop-dong', 'Update Hop-dong', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(19, 'delete-hop-dong', 'Delete Hop-dong', 'Delete Hop-dong', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(20, 'create-quyet-dinh', 'Create Quyet-dinh', 'Create Quyet-dinh', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(21, 'read-quyet-dinh', 'Read Quyet-dinh', 'Read Quyet-dinh', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(22, 'update-quyet-dinh', 'Update Quyet-dinh', 'Update Quyet-dinh', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(23, 'delete-quyet-dinh', 'Delete Quyet-dinh', 'Delete Quyet-dinh', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(24, 'update-company', 'Update Company', 'Update Company', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(25, 'update-file-manager', 'Update File-manager', 'Update File-manager', '2021-10-27 01:35:01', '2021-10-27 01:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong_bans`
--

CREATE TABLE `phong_bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phong_bans`
--

INSERT INTO `phong_bans` (`id`, `ten`, `created_at`, `updated_at`) VALUES
(1, 'Kỹ Thuật', NULL, NULL),
(2, 'Dự Án', NULL, NULL),
(3, 'Tài Chính - Kế Toán', NULL, NULL),
(4, 'Hành Chính - Nhân Sự', NULL, NULL),
(5, 'Kinh Doanh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quyet_dinhs`
--

CREATE TABLE `quyet_dinhs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhansu_id` int(11) NOT NULL,
  `ma_qd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiquyetdinh_id` int(11) NOT NULL DEFAULT 0,
  `ngay_ky` datetime NOT NULL,
  `can_cu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_nhan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tong_thu_nhap_cu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tong_thu_nhap_moi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luong_co_ban_moi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luong_tro_cap_moi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luong_hieu_qua_moi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ly_do` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuc_vu_cu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuc_vu_moi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bo_phan_cu` int(11) DEFAULT NULL,
  `bo_phan_moi` int(11) DEFAULT NULL,
  `chuc_vu_hien_tai` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quyet_dinhs`
--

INSERT INTO `quyet_dinhs` (`id`, `nhansu_id`, `ma_qd`, `loaiquyetdinh_id`, `ngay_ky`, `can_cu`, `noi_nhan`, `tong_thu_nhap_cu`, `tong_thu_nhap_moi`, `luong_co_ban_moi`, `luong_tro_cap_moi`, `luong_hieu_qua_moi`, `ly_do`, `chuc_vu_cu`, `chuc_vu_moi`, `bo_phan_cu`, `bo_phan_moi`, `chuc_vu_hien_tai`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 1, '2607/02/2018/QĐ-TP', 1, '2018-07-26 00:00:00', 'Căn cứ vào Nội quy và Quy chế của Công ty;Căn cứ quyền hạn của Giám đốc Công ty TNHH Thịnh Phong;Xét năng lực của Ông Trương Tấn Công', 'Điều 3;Lưu HC-NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 1, '2607/2018/QĐ-TP', 2, '2018-07-26 00:00:00', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 1, '3107/2018/QĐ-TP', 3, '2018-07-31 00:00:00', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(2, 'administrator', 'Administrator', 'Administrator', '2021-10-27 01:35:01', '2021-10-27 01:35:01'),
(3, 'user', 'User', 'User', '2021-10-27 01:35:01', '2021-10-27 01:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(2, 3, 'App\\User'),
(3, 4, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default-avatar.jpg',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Đức Lộc', 'admin@nhuatienphong.vn', '$2y$10$eIzx7pvF7w/zW5f3KUYUzurfXEYZW7Oe/ZXDfF.dic16pCjkysJ3q', 'default-avatar.jpg', 1, NULL, '2021-10-27 01:35:01', '2021-10-27 01:43:05'),
(2, 'Lưu Tiến Dũng', 'tiendung@nhuatienphong.vn', '$2y$10$YH1RWNLqOrN9IGVmI2agCODnwHpe2.yIS.BqFV7IZwu9SUSwoJDcu', 'default-avatar.jpg', 1, NULL, '2021-10-27 01:35:01', '2021-10-27 01:43:33'),
(3, 'Nguyễn Hữu Tình', 'tinhtop@nhuatienphong.vn', '$2y$10$8Mb3v3cZ7CoB0uEfKlAw8.8dKIM.jgVn8ERrpI5d06ro3yLQb5t1y', 'default-avatar.jpg', 1, NULL, '2021-10-27 01:35:02', '2021-10-27 01:44:00'),
(4, 'Hoàng Văn Đại', 'daihv@nhuatienphong.vn', '$2y$10$sMdAkPnORrGFJCGhfxUTgOPY7bl39Yf9cOY3jXAABRzd6HQF/owry', 'default-avatar.jpg', 1, NULL, '2021-10-27 01:44:19', '2021-10-27 01:44:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bo_phans`
--
ALTER TABLE `bo_phans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hop_dongs`
--
ALTER TABLE `hop_dongs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hop_dongs_ma_hd_unique` (`ma_hd`);

--
-- Indexes for table `ho_sos`
--
ALTER TABLE `ho_sos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_hop_dongs`
--
ALTER TABLE `loai_hop_dongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_quyet_dinhs`
--
ALTER TABLE `loai_quyet_dinhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_sus`
--
ALTER TABLE `nhan_sus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nhan_sus_ma_nv_unique` (`ma_nv`),
  ADD UNIQUE KEY `nhan_sus_so_cmnd_unique` (`so_cmnd`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `phong_bans`
--
ALTER TABLE `phong_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quyet_dinhs`
--
ALTER TABLE `quyet_dinhs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quyet_dinhs_ma_qd_unique` (`ma_qd`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `bo_phans`
--
ALTER TABLE `bo_phans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hop_dongs`
--
ALTER TABLE `hop_dongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ho_sos`
--
ALTER TABLE `ho_sos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loai_hop_dongs`
--
ALTER TABLE `loai_hop_dongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loai_quyet_dinhs`
--
ALTER TABLE `loai_quyet_dinhs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nhan_sus`
--
ALTER TABLE `nhan_sus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `phong_bans`
--
ALTER TABLE `phong_bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quyet_dinhs`
--
ALTER TABLE `quyet_dinhs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
