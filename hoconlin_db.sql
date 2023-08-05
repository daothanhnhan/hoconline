-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 05, 2023 lúc 04:54 AM
-- Phiên bản máy phục vụ: 10.2.43-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoconlin_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2),
(4, 'Hoa', 'hoa', '$2y$10$q1fwLWULQGHfXc7TkjEEROwmp.cW0Qozg7JcSKdnoH26KUfq6pVoe', '', '', '', 1, 1),
(5, 'tien', 'tiendang', '$2y$10$5nN9.yKbuCqdglmQmrTmX.AgV2eeOENXfwKwdP3bIUp9zjjxAwEvG', '0948945948323222', 'tiendang@gmail.com', 'đâsdasdasd', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_hoc`
--

CREATE TABLE `bai_hoc` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bai_hoc`
--

INSERT INTO `bai_hoc` (`id`, `name`) VALUES
(1, 'Cấp độ N5'),
(2, 'Cấp độ N4'),
(3, 'Cấp độ N3'),
(4, 'Cấp độ N2'),
(5, 'Cấp độ N1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_hoc_cap_do`
--

CREATE TABLE `bai_hoc_cap_do` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bai_hoc_cap_do`
--

INSERT INTO `bai_hoc_cap_do` (`id`, `product_id`, `name`, `note`) VALUES
(2, 269, 'Học ngữ pháp', '<p>Nội dung đang cập nhật</p>\r\n'),
(3, 269, 'Học từ vựng', '<p>Nội dung đang cập nhật</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_trac_nghiem`
--

CREATE TABLE `bai_trac_nghiem` (
  `id` int(11) NOT NULL,
  `bai_hoc_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bai_trac_nghiem`
--

INSERT INTO `bai_trac_nghiem` (`id`, `bai_hoc_id`, `name`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `dap_an`) VALUES
(1, 1, '<p>必要だ</p>\r\n', '必要だ', '必要だ', '必要だ', '必要だ', 2),
(2, 1, '<p><em>a</em></p>\r\n', 's', 'd', 'f', 'h', 1),
(3, 5, '<p>1. 電車が揺れて倒れそうになったので、（　　　）吊り革に手を伸ばした。まめにやけにとっさににわかに</p>\r\n', 'まめに', 'やけに', 'とっさに', 'にわかに', 3),
(4, 5, '<p>demo bai theo cap do</p>\r\n', '1', '2', '3', '4', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`id`, `user_id`, `note`, `ngay`) VALUES
(1, 3, 'test', '2021-10-15 09:57:45'),
(2, 3, 'test111', '2021-10-15 10:04:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7'),
(46, NULL, '14pvd1p4a6tu35c2km9ck3fbf4', 246000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '24-08'),
(47, NULL, '976nru8ujtm188utfmdli20mo5', 420000, NULL, '0000-00-00', NULL, NULL, 'Hanh', 'hanhbp@gmail.com', '0913261689', '326 Le trong Tan Thanh Xuan', 'Giao ngoai gio hanh chinh'),
(48, NULL, 'v3p39e8h23inda7t5e6ch0tv35', 420000, NULL, '0000-00-00', NULL, NULL, 'Hoàng thu thảo', '', '0946944866', 'Số 8, tổ 1, tân lập 1, cẩm thuỷ, cẩm phả, quảng ninh', ''),
(49, NULL, 'addpl7ej742e3q0r43nrfssub3', 315000, NULL, '0000-00-00', NULL, NULL, 'Lê Thị Thuỳ', 'emaillethuy@gmail.com', '0967883638', 'Số 22H Ngõ 350 Kim Giang Hà Nội', 'Muốn nhận hàng trong ngày mai ngày 2/2'),
(50, NULL, 'l3il149c0de98t630fla3fsuq7', 0, NULL, '0000-00-00', NULL, NULL, 'Phạm thanh thuý', 'thanhthuyuno8908@gmail.com', '0979121445', 'CT1B - chung cư Mon city, ngõ 6 Nguyễn Cơ Thạch , Mĩ đình 2, nam từ Liêm, Hà Nội', ''),
(51, NULL, 'tn1kre5u79qng34es3ufod71r7', 0, NULL, '0000-00-00', NULL, NULL, 'a', 'a@fff.com', '02313545312', '123123123', '12312');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45),
(30, 55, '14pvd1p4a6tu35c2km9ck3fbf4', 123000, 2, 246000, NULL, 0, 0, '', '', 46),
(31, 154, '976nru8ujtm188utfmdli20mo5', 420000, 1, 420000, NULL, 0, 0, '', '', 47),
(32, 154, 'v3p39e8h23inda7t5e6ch0tv35', 420000, 1, 420000, NULL, 0, 0, '', '', 48),
(33, 139, 'addpl7ej742e3q0r43nrfssub3', 315000, 1, 315000, NULL, 0, 0, '', '', 49),
(34, 154, 'l3il149c0de98t630fla3fsuq7', 0, 1, 0, NULL, 0, 0, '', '', 50),
(35, 238, 'tn1kre5u79qng34es3ufod71r7', 0, 1, 0, NULL, 0, 0, '', '', 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_cau_do`
--

CREATE TABLE `cau_cau_do` (
  `id` int(11) NOT NULL,
  `nhom_cau_do_id` int(11) NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_dung` int(11) NOT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cau_cau_do`
--

INSERT INTO `cau_cau_do` (`id`, `nhom_cau_do_id`, `cau_hoi`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `cau_dung`, `dich`) VALUES
(2, 2, '<p>年をとって怒りっぽくなった父は、最近では近所の子供にまで大声でどなる（　　　）だ。</p>\r\n', 'はず', 'こと', 'しまつ', 'わけ', 3, 'Cha tôi lớn tuổi nên hay nổi cáu, gần đây còn lớn tiếng quát nạt tụi nhỏ hàng xóm nữa.'),
(3, 2, '<p>彼女の乱暴なものの言い方は、聞くに（　　　　　　　　）。</p>\r\n', 'たえない', 'たりない', 'はずかしい', 'かたい', 1, 'Cách nói chuyện hỗn láo của cô ấy nghe mà không chịu được.'),
(4, 2, '<p>「お前（　　　　）におれの気持ちなどわかるものか！」と彼はどなった。</p>\r\n', 'のよう', 'ごとき', 'みたい', 'だけ', 2, 'Anh ấy quát rằng \"Người như cậu thì làm sao hiểu được cảm xúc của mình chứ\".'),
(5, 2, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-family:SimSun\">年をとって怒りっぽくなった父は、最近では近所の子供にまで大声でどなる（　　　）だ</span><span style=\"font-family:SimSun\">。</span></span></span></p>\r\n', 'はず', 'こと', 'しまつ', 'わけ', 3, 'Cha tôi lớn tuổi nên hay nổi cáu, gần đây còn lớn tiếng quát nạt tụi nhỏ hàng xóm nữa.'),
(6, 2, '<p>「お前（　　　　）におれの気持ちなどわかるものか！」と彼はどなった。</p>\r\n', 'のよう', 'ごとき', 'みたい', 'だけ', 3, 'Anh ấy quát rằng '),
(7, 2, '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-family:SimSun\">年をとって怒りっぽくなった父は、最近では近所の子供にまで大声でどなる（　　　）だ</span><span style=\"font-family:SimSun\">。</span></span></span></p>\r\n', 'はず', 'こと', 'しまつ', 'わけ', 4, 'Cha tôi lớn tuổi nên hay nổi cáu, gần đây còn lớn tiếng quát nạt tụi nhỏ hàng xóm nữa.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_de_thi`
--

CREATE TABLE `cau_de_thi` (
  `id` int(11) NOT NULL,
  `nhom_de_thi_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an` int(11) NOT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cau_de_thi`
--

INSERT INTO `cau_de_thi` (`id`, `nhom_de_thi_id`, `name`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `dap_an`, `dich`) VALUES
(1, 2, '<p>各国の選手たちは技を競い合った。</p>\r\n', 'うやまい', 'うばい', 'あらそい', 'きそい', 3, 'Tuyển thủ các quốc gia  đang tranh tài.'),
(2, 3, '<p>Đ&acirc;y l&agrave; b&agrave;i m&igrave;nh thử nghiệm</p>\r\n', 'afsf', 'dfsdaf', 'fewafaef', 'àeafaef', 1, 'ẻgtrhthythyth'),
(3, 8, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">7. 国境をめぐる両国の紛争は（　　　）した情勢になった。</span></span></span></p>\r\n', '緊密', '緊急', '緊縮', '緊迫', 4, 'Việc tranh chấp của 2 nước xoay quanh vấn đề biên giới đang trở nên vô cùng cấp bách. '),
(4, 8, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#103b5c\">8. ころんで怪我をしたが、幸い骨に（　　　）はなかった。</span></span></span></span></p>\r\n', '損傷', '損害', '損失', '破損', 1, ''),
(5, 9, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">14. 彼女はたのもしい友人ができて喜んでいる。</span></span></span></p>\r\n', '優しい', '有名な', 'すてきな', '信頼できる', 4, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_de_thi_jlpt`
--

CREATE TABLE `cau_de_thi_jlpt` (
  `id` int(11) NOT NULL,
  `nhom_de_thi_jlpt_id` int(11) NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_dung` int(11) NOT NULL,
  `dap_an` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cau_de_thi_jlpt`
--

INSERT INTO `cau_de_thi_jlpt` (`id`, `nhom_de_thi_jlpt_id`, `cau_hoi`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `cau_dung`, `dap_an`, `dich`) VALUES
(1, 2, '<p>友だちの成功を羨んでばかりいないで、お前も頑張ったらどうだ。</p>\r\n', 'にくんで', 'にくんで', 'にくんで', 'なやんで', 3, '友だちの成功を羨んでばかりいないで、お前も頑張ったらどうだ。', 'Đừng có toàn là ghen tỵ với sự thành công của bạn bè, cả cậu cũng thử cố gắng xem.'),
(2, 3, '<p>この映画は女性には不評だった</p>\r\n', 'ふべい', 'ふびょう', 'ふひょう', 'ふへい', 1, '', 'Chỉ là tôi test thử thôi'),
(3, 4, '<p>noi dung cau trac nghiem</p>\r\n', 'a', 'b', 'c', 'd', 2, 'じき', 'じき / ngoi nha'),
(4, 5, '<p><ins><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">平静</span></span></span></ins><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">を装ってはいたが、内心は相当悔しかったに違いない。</span></span></span></p>\r\n', 'へいじょう', 'びょうじょう', 'びょうせい', 'へいせい', 4, 'へいせいを装ってはいたが、内心は相当悔しかったに違いない。', 'Mặc dù đã tỏ ra là bĩnh tĩnh nhưng trong lòng chắc chắn rất hối tiếc. '),
(5, 2, '<p><span style=\"font-size:17.5pt\"><span style=\"color:#103b5c\">住む場所によって家賃には<ins>若干</ins>の違いがある。</span></span></p>\r\n', 'しゃくがん', 'じゃっかん', 'じゃくかん', 'じゃくがん', 2, '住む場所によって家賃には若干の違いがある。', 'Tùy vào nơi bạn ở mà tiền thuê nhà có thể sẽ khác nhau chút chút'),
(6, 6, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">この製品は<ins>かさばる</ins>ため、輸送費がかかる。</span></span></span></p>\r\n', '大きくて場所をとる', '小さいがかなり重い', '運びにくい形をしている', '運ぶのが大変なほど重い', 3, 'この製品はかさばるため、輸送費がかかる。', 'Vì sản phẩm này cồng kềnh nên sẽ mất phí vận chuyển.'),
(7, 7, '<p>気味が悪い</p>\r\n', '恋人とけんかして気味が悪い。', 'このスープ、塩を入れ過ぎたのか、ちょっと気味が悪い。', '知らない人から電話がかかってきて気味が悪い。', '風邪を引いて気味が悪いので、学校を休んだ。', 3, '知らない人から電話がかかってきて気味が悪い。', 'Bị người lạ gọi điện thoại thật là rợn người quá đi. '),
(8, 9, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">この施設では、介護&mdash;&nbsp;&nbsp;&mdash;&nbsp;&nbsp;</span></span></span><span style=\"font-size:21.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">★</span></span></span>&nbsp;<span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">&mdash;</span></span></span><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">を目指しているという。</span></span></span></p>\r\n', 'のみならず', '生活全般の', 'ケアの', '充実', 3, 'この施設では、介護のみならずケアの充実生活全般のを目指しているという。', 'Viện dưỡng lão này không chỉ là chăm sóc mà còn hướng đến sự hài lòng trong việc chăm sóc mọi mặt của cuộc sống. '),
(9, 11, '<p><img alt=\"\" height=\"317\" src=\"/image/images/doc%20hieu.PNG\" width=\"1074\" /></p>\r\n\r\n<p><strong>４６　この文章によると、多言語による情報提供の現在の課題は何か。</strong></p>\r\n', '英語や中国語などメジャーな言語に限らず、より多くの言語に対応すること', 'インターネットやラジオだけではなく、多様な情報技術を活用すること', 'ＩＴに精通していない人でも簡単に情報が得られるようにすること', 'ここにアクセスすれば情報が得られるという安心感を利用者に抱かせること', 1, '', ''),
(10, 12, '<p><img alt=\"\" height=\"539\" src=\"/image/images/doc%20hieu%202.PNG\" width=\"763\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>①「よかれ」の計画路線とはどういう意味か。</strong></p>\r\n', '子どもの性格に合った学習プラン', '親として安心できる進学先', 'より早く物事を進めるやり方', 'いい結果になるであろう道筋', 1, '', ''),
(11, 12, '<p><strong>ここで言う、②子どもの「発達権」の保障とはどういうことか。</strong></p>\r\n', '子どもの力を信じ、成功体験の機会を失わせないようにする。', '子どもが何かに熱中できるように、たくさんの習い事をさせる。', '子どもが自分に自信が持てるように、先回りして助けする。', '子どもと過ごす時間を増やし、子どもへの愛情を欠かさない。', 2, '', ''),
(12, 12, '<p><strong>筆者は、現代の親にはどのような特徴があると述べているか。</strong></p>\r\n', '多忙で時間に追われ、子どものコミュニケーションを後回しにする。', '教育に熱心なあまり、子どもの意志を尊重することを忘れてしまう。', '子どもへの期待が高く、子どもが何かを達成できてもあまり褒めない。', '子どもの教育を一番に考え、自分の趣味などに時間を費やすことがない。', 3, '', ''),
(13, 13, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">1. 彼女は今、出版関係の仕事に携わっている。1. 彼女は今、出版関係の仕事に<ins>携わって</ins>いる。</span></span></span></p>\r\n', 'かかわって', 'こだわって', 'たずさわって', 'くわわって', 3, '', ''),
(14, 13, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">2. このプロジェクトの概略を説明いたします。</span></span></span></p>\r\n', 'きりゃく', 'がいりゃく', 'きかく', 'がいかく', 2, '', ''),
(15, 13, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">3. 危険を<ins>伴う</ins>作業なので、十分注意してください。</span></span></span></p>\r\n', 'そこなうう', 'らなう', 'つぐなう', 'ともなう', 4, '', ''),
(16, 14, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">7. 国境をめぐる両国の紛争は（　　　）した情勢になった。</span></span></span></p>\r\n', '緊密', '緊急', '緊縮', '緊迫', 4, '', ''),
(17, 14, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">8. ころんで怪我をしたが、幸い骨に（　　　）はなかった。</span></span></span></p>\r\n', '損傷', '損害', '損失', '破損', 1, '', ''),
(18, 15, '<p>14. 彼女はたのもしい友人ができて喜んでいる。</p>\r\n', '優しい', '有名な', 'すてきな', '信頼できる', 4, '', ''),
(19, 15, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">15. これは大変な特種になると、その記者は喜んだ。</span></span></span></p>\r\n', 'チャンス', 'ニュース', 'スクープ', 'スキャンダル', 3, '', ''),
(20, 16, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:#edf3f7\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">20. 向上</span></span></span></span></span></span></p>\r\n', '午前５時１２分、太陽は東の空から向上した。', '大雨で、川の水は急に向上した。', '経験を積むたびに、自信が向上した。', '努力した結果、成績が向上した。', 4, '', ''),
(21, 16, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">21. はかどる</span></span></span></span></span></p>\r\n', 'この時計は１０分はかどっている。', 'もう少し前の方へはかどってください。', '彼女が手伝ってくれたおかげで仕事がはかどった。', '先生に相談するようはかどったが、彼は聞こうとしなかった。', 1, '', ''),
(22, 17, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:#edf3f7\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">26. 一流の歌手になる（　　　）、彼女は日々歌の練習に明け暮れた。</span></span></span></span></span></span></p>\r\n', 'べく', 'べき', 'べし', 'べからず', 1, '', ''),
(23, 17, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">27. 今日（　　　）職場を去る田中部長に対して、花束と記念品が贈られた。</span></span></span></span></span></p>\r\n', 'が早いか', 'にあたって', 'をかぎりに', 'をかわきりに', 3, '', ''),
(24, 18, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">36. 科学技術が　</span></span></span><span style=\"font-size:17.5pt\"><span style=\"font-family:Symbol\"><span style=\"color:#103b5c\">_</span></span></span>&nbsp;<span style=\"font-size:21.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">★</span></span></span>&nbsp;<span style=\"font-size:17.5pt\"><span style=\"font-family:Symbol\"><span style=\"color:#103b5c\">_</span></span></span> <span style=\"font-size:17.5pt\"><span style=\"font-family:Symbol\"><span style=\"color:#103b5c\">_</span></span></span>&nbsp;<span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">　問題も発生する。</span></span></span></p>\r\n', 'さまざまな ', 'とはいえ', '発達すれば', '便利になる', 4, '', ''),
(25, 18, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">37. 最高級のワイン</span></span></span>&nbsp;<span style=\"font-size:17.5pt\"><span style=\"font-family:Symbol\"><span style=\"color:#103b5c\">_</span></span></span> <span style=\"font-size:17.5pt\"><span style=\"font-family:Symbol\"><span style=\"color:#103b5c\">_</span></span></span>&nbsp;<span style=\"font-size:21.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">★</span></span></span>&nbsp;<span style=\"font-size:17.5pt\"><span style=\"font-family:Symbol\"><span style=\"color:#103b5c\">_</span></span></span>&nbsp;<span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">　まるで違いますね。</span></span></span></span></span></p>\r\n', 'さることながら', '味も', '香りが', 'だけあって', 1, '', ''),
(26, 19, '<p>色というものは、われわれに感動を起こさせるひとつの大きな要素です。外国で十年ほど生活していた間に、私は人々の衣服というものを見て、いろいろと感ずるところがありました。</p>\r\n\r\n<p>たとえば、洋服と和服の違い。いちばん大きなものは、洋服がカット、つまり裁断によって、良くも悪くも作られている（４１）、和服は伝統的に型が決 まっていて、カットの腕をふるう余地がほとんどないということです。型のみならず寸法まで、和服ならだいたい決まっていて、男ものも女ものも身体の大小が あっても相当に融通がききます。</p>\r\n\r\n<p>（４２）、洋服と和服とどういう違いが目立ってくるか。</p>\r\n\r\n<p>洋服では、デザイナーたちはカットに努力を集中して、どんな線を出すかに苦心する。</p>\r\n\r\n<p>和服では、その努力の余地があまりありませんから、色と柄に大きな関心が向く。つまり、洋服（４３－ａ）が、和服は（４３－ｂ）が見せどころ、ということになります。</p>\r\n\r\n<p>（４４）、街角やあるいは博物館などで、和服というものを気をつけて観察してみると、これは実にすごい。すばらしい色の芸術です。はるか昔から、日本人はおどろくべき色の伝統を育て、（４５）。原色だけで満足しない微妙な色の世界が、この国の文化には今もあるのです。</p>\r\n\r\n<p>41.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'のに対して', 'のに従って', 'のに応じて', 'のに加えて', 1, '', ''),
(27, 19, '<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#103b5c\">42.&nbsp;</span></span></span></strong></p>\r\n', 'となると', 'そういえば', 'というのは', 'それにしては', 1, '', ''),
(28, 20, '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#444444\">（１）</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#444444\">先月、中国で珍しいチョウが採集された、という新聞記事が出た。チョウは昆虫の中では、人に好かれるものの代表で、「チョウよ花よ、とかわいがる」という言い方もあるくらいだから、珍チョウの発見が新聞紙上をにぎわせても不思議なわけではない。</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#444444\">これがゴキブリであれば、①こうはいかない。人に嫌われる代表のような昆虫であるゴキブリは、チョウよりもはるかに種類が少なく、したがって珍しいゴキブリが発見されればやはり事件となるであろうが、「珍ゴキブリ発見」という記事では、よほどうまく書かれていないと、採用されないに違いない。</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#444444\">（養老孟司『ヒトの見方』筑摩書房による）</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:13.5pt\"><span style=\"color:#444444\">４６　①「こうはいかない」とあるが、どういうことか。</span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n', 'めずらしいゴキブリが発見されることは、きわめて難しいということ', 'ゴキブリがチョウのように人に好かれ、かわいがられることはないということ', 'めずらしいゴキブリの発見が記事となり、話題を呼ぶことはないということ', 'めずらしいゴキブリが発見されても、チョウの発見より不思議ではないということ', 3, '', ''),
(29, 20, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">（２）</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">サッカーには全く不案内なのだが、いつも思うのは、サッカーファンがどうしてあそこまで熱狂的になれるのかということである。あの競技にはきっと魔 力があるのだろう。そうでなければワールドカップの異常な盛り上がりは説明がつかない。日本にいるとよくわからないが、海外では観客同士の乱闘などが当た り前だと聞く。いわゆるフーリガンだけではなく、一般のファンが暴徒と化して死傷者まで出る、というのもめずらしくないらしい。そんなスポーツは他にない だろう。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">（近田春夫『僕の読書感想文』国書刊行会による）</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">４７　筆者の言いたいことは次のどれか。</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n', 'サッカーほど暴力的なスポーツはないだろう。', 'サッカーほど熱狂的なスポーツはないだろう。', 'サッカーは、日本人には理解できないスポーツだ。', 'サッカーは、日本人には説明できないスポーツだ。', 2, '', ''),
(30, 21, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">（１）</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">人間の肉体は、①自然の環境変化に対しては、かなり高度の適応を示す。しかし、②人工的な環境変化に対しては、適応力が格段に落ちる。 たとえば、鉄分は血液中のヘモグロビンの生成のために不可欠の物質である。鉄分の摂取が足りないと貧血になる。この鉄分が過剰に摂取されると、不必要ｓな 分は自動的に体外に排出されてしまう。人体の鉄分の吸収能力を調査してみると、個人によって、また、同一人物でも日によって、吸収能力が変化することが分 かった。つまり、体内の鉄分の量が増加すれば吸収能力は減り、鉄分が減れば吸収能力が増すというシステムになっているのだ。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">もし、水銀やカドミウムについても、これと同じような過剰摂取に対する適応システムが人体に備わっていれば、これらの人体に有害な物質によって発生した水俣病やイタイイタイ病などの公害問題は起こらずに済んだだろう。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">なぜ、人間の肉体は、鉄分の過剰摂取に対しては自分を防衛することができても、水銀やカドミウムに対しては防衛できないのか？</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">それは、鉄分がほとんどあらゆる食物に含まれていて、つねに人体に入ってくることが予想されているのに対して、水銀あカドミウムは、自然状態の人間には入ってくるはずがないものだからである。責められるべきなのは、（　Ａ　）ではなく、（　Ｂ　）なのである。</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">（立花隆『文明の逆説』講談社による）</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">５０　①「自然の環境変化に対しては、かなり高度の適応を示す」例として正しいものはどれか。</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '血液中のヘモグロビンが不足すると貧血になってしまうこと', '鉄分が過剰摂取されると自動的に血液が体外へ排出されること', '体内の鉄分の量によって鉄分の吸収能力が変化すること', '鉄分はつねに人体に入ってくることが予想されること', 3, '', ''),
(31, 21, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">５１　②「人工的な環境変化に対しては、適応力が格段に落ちる」例として正しいものはどれか。</span></span></span></span></span></p>\r\n', '人体が水銀やカドミウムの過剰摂取を防衛できないこと', '人体に鉄分の過剰摂取に対する適応システムがあること', '毎日、鉄分を十分に摂取しないと貧血になってしまうこと', '水銀やカドミウムは自然状態の人間には入ってこないこと', 1, '', ''),
(32, 21, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">５２　（　Ａ　）と（　Ｂ　）に入る最も適当な言葉はどれか。</span></span></span></strong></span></span></p>\r\n', 'Ａ：肉体の適応能力を無視した文明 Ｂ：文明に適応できない肉体', 'Ａ：文明に適応できない肉体 Ｂ：肉体の適応能力を無視した文明', 'Ａ：肉体に適応できない自然 Ｂ：自然の適応能力を無視した肉体', 'Ａ：自然の適応能力を無視した肉体 Ｂ：肉体に適応できない自然', 2, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hoi_tab`
--

CREATE TABLE `cau_hoi_tab` (
  `id` int(11) NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_dung` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `nhom_cau_hoi_tab_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi_tab`
--

INSERT INTO `cau_hoi_tab` (`id`, `cau_hoi`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `cau_dung`, `giao_trinh_tab_phu_id`, `nhom_cau_hoi_tab_id`, `sort`) VALUES
(1, '<p>c&acirc;u hỏi1</p>\r\n', '1a', '2a', '3a', '4a', 3, 5, 0, 0),
(5, '<p>demo 1</p>\r\n', '', '', '', '', 1, 8, 0, 0),
(6, '<p>1. 彼には<ins>補助</ins>が必要だ。</p>\r\n', 'ほじょ', 'ほうじょ', 'ぼじょ', 'ぼうじょ', 1, 13, 12, 0),
(7, '<p>&nbsp;あの政治家は金銭感覚が<ins>麻痺</ins>している。</p>\r\n', 'まひ', 'まふ', 'まび', 'まぶ', 1, 13, 12, 0),
(9, '<p>社長は経営の悪化を<ins>危惧</ins>していた</p>\r\n', 'きく', 'きくう', 'きぐ', 'きぐう', 3, 13, 12, 0),
(10, '<p>あの教授が厳しく指導するのは、その学生の将来を（　　　）のことだ。</p>\r\n', 'はず', 'ごとき', 'しまつ', 'きぐう', 1, 16, 3, 0),
(11, '<p>息子は毎日工場で油（　　　）になって働いている。</p>\r\n', 'で油', 'ふびょう', 'しまつ', 'わけ', 1, 16, 3, 0),
(13, '<p>もうすこし低いいすを貸してください。</p>\r\n', 'ほじょ', 'まふ', 'ぼじょ', 'まぶ', 2, 16, 5, 0),
(14, '<p><ins>取り扱い</ins>商品につきましては、こちらのカタログをご覧ください。</p>\r\n', 'とりやすい', 'とりはからい', 'とりあつかい', 'とりつかい', 3, 17, 8, 0),
(15, '<p>焦るとうまくいかないから、落ち着いてやろう。</p>\r\n', 'まさる', 'はやる', 'なめる', 'あせる', 4, 17, 8, 0),
(16, '<p>私はその件に一切関係していません。</p>\r\n', 'まったく', '少ししか', 'たしか', 'ほとんど', 1, 17, 9, 0),
(17, '<p>嫌なことは（　　　）にせず、早くやってしまったほうがいい。</p>\r\n', '後回し', '後先', '後出し', '後追い', 1, 17, 10, 0),
(18, '<p>気がしれない</p>\r\n', '誕生日のプレゼントを用意していないなんて、気がしれない人だね。', 'こんなんにうるさい音楽が好きな人の気がしれない。', '雨の日に出かけるのは、あまり気がしれない。', 'サービスの悪い店には文句を言わないと気がしれない。', 2, 17, 11, 0),
(19, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">私の欠点は<ins>せっかちな</ins>ところだ。</span></span></span></p>\r\n', '気が短い', '気が強い', '気が弱い', '気が長い', 1, 17, 9, 0),
(20, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">伊藤さんは、土地や家など、不動産の<ins>仲介</ins>の仕事をしているそうだ。</span></span></span></p>\r\n', '保有', '管理', '販売', '紹介', 4, 17, 9, 0),
(21, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">新商品の<ins>納品</ins>が１週間ほど遅れると連絡があった。</span></span></span></p>\r\n', '到着', '宣伝', '支払い', '販売', 1, 17, 9, 0),
(22, '<p><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">友人からのメールを読んで<ins>目が疑った</ins>。</span></span></span></p>\r\n', '関心した', '信じられなかった', '腹が立った', '意味が分からなかった', 2, 17, 9, 0),
(23, '<p>1</p>\r\n', '理想広告山川様にすぐ電話をお願いいたします。', '理想広告山川様より4時頃お電話がある予定です。', '理想広告山川様に会議後折り返しをお願いいたします。', '理想広告山川様が会議後折り返しをお願いいたします。', 1, 27, 0, 0),
(24, '<p>この地方のスキー場はコースの大部分は整備されており、滑りにくいということはあまりありません。（　１　）、風が強く、（　２　）降った雪も積もるか積もらない<strong>かのうちに</strong>飛ばされてしまうことが多いのです。</p>\r\n', 'そのため', 'すると', 'ただし', '', 3, 29, 17, 0),
(25, '', 'せっかく', 'わざわざ', 'きっと', '', 1, 29, 17, 0),
(74, 'câu hỏi số một', 'một', 'hai', 'ba', 'bốn', 3, 13, 12, 0),
(75, 'câu hỏi số hai', 'a', 'b', 'c', 'd', 1, 13, 12, 0),
(76, '<p><span style=\"font-size:20.0pt\">体力の（　　）まで走り続ける</span></p>\r\n', '極限', '極端', '極度', '究極', 1, 35, 18, 0),
(77, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:20.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;\">さまざまなアイディアが頭の中を巡り思考は</span></span> &nbsp;<span style=\"font-size:20.0pt\">(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )</span><span style=\"font-size:20.0pt\"><span style=\"background-color:yellow\"><span style=\"font-family:&quot;MS Mincho&quot;\">と</span></span></span><span style=\"font-size:20.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;\">していた</span></span></span></span></p>\r\n', '混乱', '混同', '混雑', '混沌', 4, 36, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_luyen_nghe`
--

CREATE TABLE `cau_luyen_nghe` (
  `id` int(11) NOT NULL,
  `nhom_luyen_nghe_id` int(11) NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_dung` int(11) NOT NULL,
  `mp3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cau_luyen_nghe`
--

INSERT INTO `cau_luyen_nghe` (`id`, `nhom_luyen_nghe_id`, `cau_hoi`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `cau_dung`, `mp3`, `dap_an`) VALUES
(2, 3, '<p>C&acirc;u hỏi luyện nghe</p>\r\n', 'câu 1', 'câu 2', 'câu 3', 'câu 4', 2, 'horse.mp3', '<p>1</p>\r\n'),
(3, 3, '', 'Câu a', 'Câu b', 'Câu c', 'Câu d', 1, 'horse.mp3', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_thi_nghe`
--

CREATE TABLE `cau_thi_nghe` (
  `id` int(11) NOT NULL,
  `nhom_thi_nghe_id` int(11) NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_dung` int(11) NOT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cau_thi_nghe`
--

INSERT INTO `cau_thi_nghe` (`id`, `nhom_thi_nghe_id`, `cau_hoi`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `cau_dung`, `dich`) VALUES
(2, 2, '<p><span style=\"font-size:11pt\"><span style=\"background-color:#edf3f7\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#103b5c\">1.</span></span></strong></span></span></span></p>\r\n', '他の部署の課長に連絡する', 'A会議室を予約する', 'パソコンをもう１台用意する', '大阪支店に電話をかける', 3, '<p>fdgdfdf&agrave;de&agrave;dsfsdfdfdf</p>\r\n'),
(3, 2, '<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#103b5c\">2.</span></span></span></strong></p>\r\n', '発表の日にちを決める', '全員にメールを送る', '卒業論文について報告する', '発表の順番を話し合う', 2, ''),
(4, 3, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:blue\">１番：</span></span></span></span></span></p>\r\n', 'ランキングで1位をとったこと', 'かつての人気ドラマをうまくアレンジしたこと', '主演俳優の演技がうまいこと', '音楽が効果的であること', 3, ''),
(5, 3, '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:blue\">２番：</span></span></span></span></span></p>\r\n', '発表の日にちを決める', '全員にメールを送る', '卒業論文について報告する', '発表の順番を話し合う', 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link1` text COLLATE utf8_unicode_ci NOT NULL,
  `link2` text COLLATE utf8_unicode_ci NOT NULL,
  `link3` text COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Vui học tiếng Nhật', '', 'Vui học tiếng Nhật', 'Vui học tiếng Nhật', 'lg.jpg', '', '', 'Vui học tiếng Nhật', 'Nghĩa Trụ - Văn Giang - Hưng Yên', 'bichhongnn@gmail.com', '0389 677 822', '', '', '<ul>\r\n                                                        <li><a href=\"/tin-tuc\">Tin tức</a></li>\r\n                                                        <li><a href=\"\">Tuyển dụng</a></li>\r\n                                                        <li><a href=\"\">Liên hệ</a></li>\r\n                                                        <li><a href=\"\">Chính sách và điều khoản</a></li>\r\n                                                        <li><a href=\"\">F.A.Q</a></li>\r\n                                                    </ul>', '<ul>\r\n      <li><a href=\"/chu-de\">Chủ Đề</a></li>\r\n      <li><a href=\"/khong-gian\">Không Gian</a></li>\r\n      <li><a href=\"/tong-mau\">Tông Màu</a></li>\r\n      <li><a href=\"/dan-tuong\">Dán Tường</a></li>\r\n <li><a href=\"/cong-trinh-da-thi-cong\">Công Trình Đã Thi Công</a></li>\r\n\r\n\r\n</ul>', '', '1231', '', '[\"{\\\"image\\\":\\\"t01.jpg\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'banner2.jpg', 'banner1.jpg', 'banner3.jpg', 'lg.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) DEFAULT 0,
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Vui học tiếng Nhật', '', 'Vui học tiếng Nhật', 'Vui học tiếng Nhật', '', '', 'Vui học tiếng Nhật', 'Nghĩa Trụ - Văn Giang - Hưng Yên', 'bichhongnn@gmail.com', '0389 677 822', '', '', '<ul>\r\n                                                        <li><a href=\"/tin-tuc\">Tin tức</a></li>\r\n                                                        <li><a href=\"\">Tuyển dụng</a></li>\r\n                                                        <li><a href=\"\">Liên hệ</a></li>\r\n                                                        <li><a href=\"\">Chính sách và điều khoản</a></li>\r\n                                                        <li><a href=\"\">F.A.Q</a></li>\r\n                                                    </ul>', '<ul>\r\n      <li><a href=\"/chu-de\">Chủ Đề</a></li>\r\n      <li><a href=\"/khong-gian\">Không Gian</a></li>\r\n      <li><a href=\"/tong-mau\">Tông Màu</a></li>\r\n      <li><a href=\"/dan-tuong\">Dán Tường</a></li>\r\n <li><a href=\"/cong-trinh-da-thi-cong\">Công Trình Đã Thi Công</a></li>\r\n\r\n\r\n</ul>', '', '1231', '', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_thi`
--

CREATE TABLE `de_thi` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `de_thi`
--

INSERT INTO `de_thi` (`id`, `name`, `count_time`) VALUES
(1, 'Đề thi N1', 1),
(2, 'Đề thi N2', 0),
(3, 'Đề thi N3', 0),
(4, 'Đề thi N4', 0),
(5, 'Đề thi N5', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_thi_jlpt`
--

CREATE TABLE `de_thi_jlpt` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mp3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhom_text_de_thi_jlpt_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `de_thi_jlpt`
--

INSERT INTO `de_thi_jlpt` (`id`, `product_id`, `name`, `note`, `mp3`, `nhom_text_de_thi_jlpt_id`) VALUES
(3, 269, 'JLPT N1 - 001 - Đề hoàn chỉnh', 'test', 'N2D001.mp3', 2),
(4, 269, 'JLPT N1 - 002', 'test', NULL, 2),
(5, 275, 'DETHI_N1_D001', '', '', 0),
(6, 269, 'JLPT N1 - 003', '', '', 2),
(7, 269, 'JLPT N1 - 004', '', '', 3),
(8, 269, 'JLPT N1 - 005', '', '', 3),
(9, 268, 'Đề thi JLPT N2', '', '', 0),
(10, 268, 'Đề thi luyện thi trắc nghiệm N2', '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_thi_trac_nghiem`
--

CREATE TABLE `de_thi_trac_nghiem` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhom_de_thi_trac_nghiem_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `de_thi_trac_nghiem`
--

INSERT INTO `de_thi_trac_nghiem` (`id`, `product_id`, `name`, `note`, `nhom_de_thi_trac_nghiem_id`) VALUES
(2, 269, 'LUYỆN THI N1 - D001', 'test', 2),
(3, 275, 'ĐỀ THI ', '', 0),
(4, 276, 'Đề số 1 - Cấp độ N2', '', 0),
(5, 269, '	LUYỆN THI N1 - D002', '', 2),
(6, 269, '	LUYỆN THI N1 - D003', '', 2),
(7, 269, '	LUYỆN THI N1 - D004', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dien_tu`
--

CREATE TABLE `dien_tu` (
  `id` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `text_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhom_dien_tu_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dien_tu`
--

INSERT INTO `dien_tu` (`id`, `giao_trinh_tab_phu_id`, `text_1`, `text_2`, `text_3`, `dap_an_1`, `dap_an_2`, `nhom_dien_tu_id`, `sort`) VALUES
(3, 16, 'A氏は本日', 'もって退職されます。', '', 'abc', '', 4, 0),
(4, 16, '怠け者の彼は雨', 'つけ風', 'つけ学校を休みたがる。', '123', '456', 4, 0),
(5, 16, '努力', 'なくして成功はあり得ない', '', '3435', '', 4, 0),
(6, 16, 'この商品は店頭に置いたそば', '売れていく。', '', 'から', '', 4, 0),
(7, 16, 'この不況下', 'あっても、C社は赤字を出したことがない。', '', 'に', '', 6, 0),
(8, 16, '犯人に対して怒り', '禁じ得ない。', '', 'を', '', 6, 0),
(9, 16, 'プライバシー', 'もって退職されます。', '', 'に', '', 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh`
--

CREATE TABLE `giao_trinh` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh`
--

INSERT INTO `giao_trinh` (`id`, `product_id`, `name`) VALUES
(3, 269, 'Học Goi - Hán Tự N1'),
(4, 268, 'Giáo trình SoumatomeN2 - Goi'),
(5, 261, 'Giáo trình minnano nihongo - giáo trình chính - cấp độ N5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh_bai`
--

CREATE TABLE `giao_trinh_bai` (
  `id` int(11) NOT NULL,
  `giao_trinh_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh_bai`
--

INSERT INTO `giao_trinh_bai` (`id`, `giao_trinh_id`, `name`, `image`, `content`, `show_img`) VALUES
(3, 3, 'N1_Goi_Bài 01', 'ghe.png', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>stt</td>\r\n			<td>H&aacute;n tự</td>\r\n			<td>Hiragana</td>\r\n			<td>Nghĩa</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>維持</td>\r\n			<td>いじ</td>\r\n			<td>★★★</td>\r\n			<td>duy tr&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>意図</td>\r\n			<td>いと</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; đồ, mục đ&iacute;ch, &yacute; định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>寄附</td>\r\n			<td>きふ</td>\r\n			<td>★★★</td>\r\n			<td>tặng cho, quy&ecirc;n g&oacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>拒否</td>\r\n			<td>きょひ</td>\r\n			<td>★★★</td>\r\n			<td>cự tuyệt, b&aacute;c bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>処置</td>\r\n			<td>しょち</td>\r\n			<td>★★★</td>\r\n			<td>xử tr&iacute;, đối xử</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>阻止</td>\r\n			<td>そし</td>\r\n			<td>★★★</td>\r\n			<td>cản trở, chướng ngại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>破棄</td>\r\n			<td>はき</td>\r\n			<td>★★★</td>\r\n			<td>hủy hoại, hủy bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>保護</td>\r\n			<td>ほご</td>\r\n			<td>★★★</td>\r\n			<td>bảo hộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>保守</td>\r\n			<td>ほしゅ</td>\r\n			<td>★★★</td>\r\n			<td>giữ g&igrave;n, duy tr&igrave;, bảo thủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>加味</td>\r\n			<td>かみ</td>\r\n			<td>★★</td>\r\n			<td>n&ecirc;m th&ecirc;m, th&ecirc;m v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>寄与</td>\r\n			<td>きよ</td>\r\n			<td>★★</td>\r\n			<td>đ&oacute;ng g&oacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>指揮</td>\r\n			<td>しき</td>\r\n			<td>★★</td>\r\n			<td>chỉ huy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>支持</td>\r\n			<td>しじ</td>\r\n			<td>★★</td>\r\n			<td>n&acirc;ng đỡ, duy tr&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>自首</td>\r\n			<td>じしゅ</td>\r\n			<td>★★</td>\r\n			<td>tự th&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>所持</td>\r\n			<td>しょじ</td>\r\n			<td>★★</td>\r\n			<td>sở hữu, t&agrave;i sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>補助</td>\r\n			<td>ほじょ</td>\r\n			<td>★★</td>\r\n			<td>bổ trợ, trợ cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>麻痺</td>\r\n			<td>まひ</td>\r\n			<td>★★</td>\r\n			<td>t&ecirc; liệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>餓死</td>\r\n			<td>がし</td>\r\n			<td>★</td>\r\n			<td>chết đ&oacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>帰化</td>\r\n			<td>きか</td>\r\n			<td>★</td>\r\n			<td>nhập quốc tịch, du nhập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>危惧</td>\r\n			<td>きぐ</td>\r\n			<td>★</td>\r\n			<td>sợ sệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>起訴</td>\r\n			<td>きそ</td>\r\n			<td>★</td>\r\n			<td>khởi tố</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>忌避</td>\r\n			<td>きひ</td>\r\n			<td>★</td>\r\n			<td>n&eacute; tr&aacute;nh, tho&aacute;i th&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>挙手</td>\r\n			<td>きょしゅ</td>\r\n			<td>★</td>\r\n			<td>giơ tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>駆使</td>\r\n			<td>くし</td>\r\n			<td>★</td>\r\n			<td>tận dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>駆除</td>\r\n			<td>くじょ</td>\r\n			<td>★</td>\r\n			<td>loại bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>固辞</td>\r\n			<td>こじ</td>\r\n			<td>★</td>\r\n			<td>từ chối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>誇示</td>\r\n			<td>こじ</td>\r\n			<td>★</td>\r\n			<td>ph&ocirc; trương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>示唆</td>\r\n			<td>しさ</td>\r\n			<td>★</td>\r\n			<td>khơi gợi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>自負</td>\r\n			<td>じふ</td>\r\n			<td>★</td>\r\n			<td>tự phụ, ki&ecirc;u ngạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>除去</td>\r\n			<td>じょきょ</td>\r\n			<td>★</td>\r\n			<td>loại trừ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>図示</td>\r\n			<td>ずし</td>\r\n			<td>★</td>\r\n			<td>đồ thị, biểu hiện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>打破</td>\r\n			<td>だは</td>\r\n			<td>★</td>\r\n			<td>ph&aacute; vỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>治癒</td>\r\n			<td>ちゆ</td>\r\n			<td>★</td>\r\n			<td>chữa trị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>卑下</td>\r\n			<td>ひげ</td>\r\n			<td>★</td>\r\n			<td>khi&ecirc;m tốn, nh&uacute;n nhường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>補佐</td>\r\n			<td>ほさ</td>\r\n			<td>★</td>\r\n			<td>trợ l&yacute;, phụ t&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>拉致</td>\r\n			<td>らち</td>\r\n			<td>★</td>\r\n			<td>bắt c&oacute;c, cuỗm đi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>濾過</td>\r\n			<td>ろか</td>\r\n			<td>★</td>\r\n			<td>lọc, thấm qua</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>意義</td>\r\n			<td>いぎ</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>異議</td>\r\n			<td>いぎ</td>\r\n			<td>★★★</td>\r\n			<td>phản đối, kh&aacute;ng nghị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>意地</td>\r\n			<td>いじ</td>\r\n			<td>★★★</td>\r\n			<td>t&acirc;m địa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>過疎</td>\r\n			<td>かそ</td>\r\n			<td>★★★</td>\r\n			<td>sự giảm d&acirc;n số</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>規模</td>\r\n			<td>きぼ</td>\r\n			<td>★★★</td>\r\n			<td>quy m&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>義務</td>\r\n			<td>ぎむ</td>\r\n			<td>★★★</td>\r\n			<td>nghĩa vụ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>個々</td>\r\n			<td>ここ</td>\r\n			<td>★★★</td>\r\n			<td>từng c&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>誤差</td>\r\n			<td>ごさ</td>\r\n			<td>★★★</td>\r\n			<td>sai số, ch&ecirc;nh lệch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>磁気</td>\r\n			<td>じき</td>\r\n			<td>★★★</td>\r\n			<td>từ t&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>時期</td>\r\n			<td>じき</td>\r\n			<td>★★★</td>\r\n			<td>thời k&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>自己</td>\r\n			<td>じこ</td>\r\n			<td>★★★</td>\r\n			<td>tự m&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>視野</td>\r\n			<td>しや</td>\r\n			<td>★★★</td>\r\n			<td>tầm nh&igrave;n, tầm hiểu biết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>砂利</td>\r\n			<td>じゃり</td>\r\n			<td>★★★</td>\r\n			<td>sỏi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>趣旨</td>\r\n			<td>しゅし</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; định, &yacute; ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>種々</td>\r\n			<td>しゅじゅ</td>\r\n			<td>★★★</td>\r\n			<td>đa dạng, nhiều loại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>措置</td>\r\n			<td>そち</td>\r\n			<td>★★★</td>\r\n			<td>biện ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>墓地</td>\r\n			<td>ぼち</td>\r\n			<td>★★★</td>\r\n			<td>nghĩa trang, nơi ch&ocirc;n cất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>余地</td>\r\n			<td>よち</td>\r\n			<td>★★★</td>\r\n			<td>đất trống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>危機</td>\r\n			<td>きき</td>\r\n			<td>★★</td>\r\n			<td>khủng hoảng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>義理</td>\r\n			<td>ぎり</td>\r\n			<td>★★</td>\r\n			<td>t&igrave;nh nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>下痢</td>\r\n			<td>げり</td>\r\n			<td>★★</td>\r\n			<td>ti&ecirc;u chảy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>語彙</td>\r\n			<td>ごい</td>\r\n			<td>★★</td>\r\n			<td>từ vựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>語句</td>\r\n			<td>ごく</td>\r\n			<td>★★</td>\r\n			<td>cụm từ ngữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>孤児</td>\r\n			<td>こじ</td>\r\n			<td>★★</td>\r\n			<td>trẻ mồ c&ocirc;i, c&ocirc; nhi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>詐欺</td>\r\n			<td>さぎ</td>\r\n			<td>★★</td>\r\n			<td>lừa đảo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>歯科</td>\r\n			<td>しか</td>\r\n			<td>★★</td>\r\n			<td>nha khoa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>自我</td>\r\n			<td>じが</td>\r\n			<td>★★</td>\r\n			<td>tự m&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>磁器</td>\r\n			<td>じき</td>\r\n			<td>★★</td>\r\n			<td>đồ gốm sứ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>時差</td>\r\n			<td>じさ</td>\r\n			<td>★★</td>\r\n			<td>ch&ecirc;nh lệch giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>自主</td>\r\n			<td>じしゅ</td>\r\n			<td>★★</td>\r\n			<td>tự chủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>守備</td>\r\n			<td>しゅび</td>\r\n			<td>★★</td>\r\n			<td>bảo vệ, trấn thủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>助詞</td>\r\n			<td>じょし</td>\r\n			<td>★★</td>\r\n			<td>trợ từ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>庶務</td>\r\n			<td>しょむ</td>\r\n			<td>★★</td>\r\n			<td>tổng vụ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>世辞</td>\r\n			<td>せじ</td>\r\n			<td>★★</td>\r\n			<td>nịnh, t&acirc;ng bốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>著書</td>\r\n			<td>ちょしょ</td>\r\n			<td>★★</td>\r\n			<td>t&aacute;c phẩm s&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>徒歩</td>\r\n			<td>とほ</td>\r\n			<td>★★</td>\r\n			<td>đi bộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>秘書</td>\r\n			<td>ひしょ</td>\r\n			<td>★★</td>\r\n			<td>thư k&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>不意</td>\r\n			<td>ふい</td>\r\n			<td>★★</td>\r\n			<td>bất chợt, kh&ocirc;ng ngờ tới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>部下</td>\r\n			<td>ぶか</td>\r\n			<td>★★</td>\r\n			<td>cấp dưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>捕虜</td>\r\n			<td>ほりょ</td>\r\n			<td>★★</td>\r\n			<td>t&ugrave; binh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>未知</td>\r\n			<td>みち</td>\r\n			<td>★★</td>\r\n			<td>chưa biết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>余暇</td>\r\n			<td>よか</td>\r\n			<td>★★</td>\r\n			<td>rảnh rỗi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>利子</td>\r\n			<td>りし</td>\r\n			<td>★★</td>\r\n			<td>l&atilde;i tức, tiền lời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>意気</td>\r\n			<td>いき</td>\r\n			<td>★</td>\r\n			<td>&yacute; muốn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>囲碁</td>\r\n			<td>いご</td>\r\n			<td>★</td>\r\n			<td>cờ v&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>遺書</td>\r\n			<td>いしょ</td>\r\n			<td>★</td>\r\n			<td>di thư, di ch&uacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>歌詞</td>\r\n			<td>かし</td>\r\n			<td>★</td>\r\n			<td>lời b&agrave;i h&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>過度</td>\r\n			<td>かど</td>\r\n			<td>★</td>\r\n			<td>qu&aacute; mức qui định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>可否</td>\r\n			<td>かひ</td>\r\n			<td>★</td>\r\n			<td>tốt v&agrave; xấu, t&aacute;n th&agrave;nh v&agrave; phản đối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>飢餓</td>\r\n			<td>きが</td>\r\n			<td>★</td>\r\n			<td>thiếu ăn, chết đ&oacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>機器</td>\r\n			<td>きき</td>\r\n			<td>★</td>\r\n			<td>thiết bị, m&aacute;y m&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>季語</td>\r\n			<td>きご</td>\r\n			<td>★</td>\r\n			<td>từ ngữ theo m&ugrave;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>機種</td>\r\n			<td>きしゅ</td>\r\n			<td>★</td>\r\n			<td>loại m&aacute;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>旗手</td>\r\n			<td>きしゅ</td>\r\n			<td>★</td>\r\n			<td>người cầm cờ hiệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>既知</td>\r\n			<td>きち</td>\r\n			<td>★</td>\r\n			<td>đ&atilde; biết rồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>虚偽</td>\r\n			<td>きょぎ</td>\r\n			<td>★</td>\r\n			<td>giả dối, sai sự thật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>虚無</td>\r\n			<td>きょむ</td>\r\n			<td>★</td>\r\n			<td>hư v&ocirc;, kh&ocirc;ng thực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>呼気</td>\r\n			<td>こき</td>\r\n			<td>★</td>\r\n			<td>hơi thở</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>誤字</td>\r\n			<td>ごじ</td>\r\n			<td>★</td>\r\n			<td>chữ in sai, chữ sai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>語尾</td>\r\n			<td>ごび</td>\r\n			<td>★</td>\r\n			<td>vĩ tố, &acirc;m cuối, chữ tận c&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>差異</td>\r\n			<td>さい</td>\r\n			<td>★</td>\r\n			<td>sự sai kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>時価</td>\r\n			<td>じか</td>\r\n			<td>★</td>\r\n			<td>gi&aacute; hiện tại, gi&aacute; thị trường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>時下</td>\r\n			<td>じか</td>\r\n			<td>★</td>\r\n			<td>thời nay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>時機</td>\r\n			<td>じき</td>\r\n			<td>★</td>\r\n			<td>cơ hội, thời cơ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>次期</td>\r\n			<td>じき</td>\r\n			<td>★</td>\r\n			<td>thời k&igrave; sau, thời tiếp theo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>私語</td>\r\n			<td>しご</td>\r\n			<td>★</td>\r\n			<td>n&oacute;i chuyện ri&ecirc;ng, th&igrave; thầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>死語</td>\r\n			<td>しご</td>\r\n			<td>★</td>\r\n			<td>từ lỗi thời, tử ngữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>事後</td>\r\n			<td>じご</td>\r\n			<td>★</td>\r\n			<td>xảy ra sau đ&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>私費</td>\r\n			<td>しひ</td>\r\n			<td>★</td>\r\n			<td>tự trả tiền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>自費</td>\r\n			<td>じひ</td>\r\n			<td>★</td>\r\n			<td>tự trả tiền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>首位</td>\r\n			<td>しゅい</td>\r\n			<td>★</td>\r\n			<td>vị tr&iacute; đứng đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>主旨</td>\r\n			<td>しゅし</td>\r\n			<td>★</td>\r\n			<td>l&iacute; do ch&iacute;nh, &yacute; ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>種子</td>\r\n			<td>しゅし</td>\r\n			<td>★</td>\r\n			<td>hạt giống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>手話</td>\r\n			<td>しゅわ</td>\r\n			<td>★</td>\r\n			<td>ra dấu, ng&ocirc;n ngữ k&iacute; hiệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>書記</td>\r\n			<td>しょき</td>\r\n			<td>★</td>\r\n			<td>ghi ch&eacute;p, thư k&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>齟齬</td>\r\n			<td>そご</td>\r\n			<td>★</td>\r\n			<td>m&acirc;u thuẫn, bất h&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>地価</td>\r\n			<td>ちか</td>\r\n			<td>★</td>\r\n			<td>gi&aacute; đất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>致死</td>\r\n			<td>ちし</td>\r\n			<td>★</td>\r\n			<td>ch&iacute; mạng, g&acirc;y chết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>覇者</td>\r\n			<td>はしゃ</td>\r\n			<td>★</td>\r\n			<td>qu&aacute;n qu&acirc;n, v&ocirc; địch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>馬車</td>\r\n			<td>ばしゃ</td>\r\n			<td>★</td>\r\n			<td>xe ngựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>避暑</td>\r\n			<td>ひしょ</td>\r\n			<td>★</td>\r\n			<td>tr&aacute;nh n&oacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>比喩</td>\r\n			<td>ひゆ</td>\r\n			<td>★</td>\r\n			<td>so s&aacute;nh, v&iacute; von</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>部署</td>\r\n			<td>ぶしょ</td>\r\n			<td>★</td>\r\n			<td>cương vị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>不和</td>\r\n			<td>ふわ</td>\r\n			<td>★</td>\r\n			<td>bất h&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>簿記</td>\r\n			<td>ぼき</td>\r\n			<td>★</td>\r\n			<td>l&agrave;m sổ s&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>母語</td>\r\n			<td>ぼご</td>\r\n			<td>★</td>\r\n			<td>tiếng mẹ đẻ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>無期</td>\r\n			<td>むき</td>\r\n			<td>★</td>\r\n			<td>mập mờ, kh&ocirc;ng hạn định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>路地</td>\r\n			<td>ろじ</td>\r\n			<td>★</td>\r\n			<td>đường đi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>和語</td>\r\n			<td>わご</td>\r\n			<td>★</td>\r\n			<td>tiếng Nhật</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(4, 3, 'N1_Goi_Bài 02', '070420597ef189afd0e0.jpg', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>stt</td>\r\n			<td>H&aacute;n tự</td>\r\n			<td>H&aacute;n - Việt</td>\r\n			<td>Nghĩa</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>移行</td>\r\n			<td>いこう</td>\r\n			<td>★★★</td>\r\n			<td>di tr&uacute;, chuyển tiếp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>委託</td>\r\n			<td>いたく</td>\r\n			<td>★★★</td>\r\n			<td>ủy th&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>違反</td>\r\n			<td>いはん</td>\r\n			<td>★★★</td>\r\n			<td>vi phạm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>依頼</td>\r\n			<td>いらい</td>\r\n			<td>★★★</td>\r\n			<td>nhờ cậy, y&ecirc;u cầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>汚染</td>\r\n			<td>おせん</td>\r\n			<td>★★★</td>\r\n			<td>&ocirc; nhiễm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>加減</td>\r\n			<td>かげん</td>\r\n			<td>★★★</td>\r\n			<td>gia giảm, điều chỉnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>企画</td>\r\n			<td>きかく</td>\r\n			<td>★★★</td>\r\n			<td>kế hoạch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>棄権</td>\r\n			<td>きけん</td>\r\n			<td>★★★</td>\r\n			<td>bỏ phiếu trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>記載</td>\r\n			<td>きさい</td>\r\n			<td>★★★</td>\r\n			<td>ghi ch&eacute;p, viết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>規制</td>\r\n			<td>きせい</td>\r\n			<td>★★★</td>\r\n			<td>quy chế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>偽造</td>\r\n			<td>ぎぞう</td>\r\n			<td>★★★</td>\r\n			<td>ngụy tạo, giả mạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>誤解</td>\r\n			<td>ごかい</td>\r\n			<td>★★★</td>\r\n			<td>hiểu sai, hiểu lầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>故障</td>\r\n			<td>こしょう</td>\r\n			<td>★★★</td>\r\n			<td>trục trặc, hỏng h&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>誇張</td>\r\n			<td>こちょう</td>\r\n			<td>★★★</td>\r\n			<td>khoa trương, ph&oacute;ng đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>雇用</td>\r\n			<td>こよう</td>\r\n			<td>★★★</td>\r\n			<td>tuyển dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>孤立</td>\r\n			<td>こりつ</td>\r\n			<td>★★★</td>\r\n			<td>c&ocirc; lập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>作用</td>\r\n			<td>さよう</td>\r\n			<td>★★★</td>\r\n			<td>t&aacute;c dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>飼育</td>\r\n			<td>しいく</td>\r\n			<td>★★★</td>\r\n			<td>chăn nu&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>自覚</td>\r\n			<td>じかく</td>\r\n			<td>★★★</td>\r\n			<td>tự gi&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>志向</td>\r\n			<td>しこう</td>\r\n			<td>★★★</td>\r\n			<td>ch&iacute; hướng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>思考</td>\r\n			<td>しこう</td>\r\n			<td>★★★</td>\r\n			<td>suy nghĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>施行</td>\r\n			<td>しこう</td>\r\n			<td>★★★</td>\r\n			<td>thực hiện, thi h&agrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>試行</td>\r\n			<td>しこう</td>\r\n			<td>★★★</td>\r\n			<td>thử nghiệm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>視察</td>\r\n			<td>しさつ</td>\r\n			<td>★★★</td>\r\n			<td>thị s&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>辞退</td>\r\n			<td>じたい</td>\r\n			<td>★★★</td>\r\n			<td>từ chối, khước từ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>指摘</td>\r\n			<td>してき</td>\r\n			<td>★★★</td>\r\n			<td>chỉ tr&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>自慢</td>\r\n			<td>じまん</td>\r\n			<td>★★★</td>\r\n			<td>tự m&atilde;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>謝罪</td>\r\n			<td>しゃざい</td>\r\n			<td>★★★</td>\r\n			<td>tạ tội</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>謝絶</td>\r\n			<td>しゃぜつ</td>\r\n			<td>★★★</td>\r\n			<td>cự tuyệt, từ chối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>修行</td>\r\n			<td>しゅぎょう</td>\r\n			<td>★★★</td>\r\n			<td>tu nghiệp, tu h&agrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>主張</td>\r\n			<td>しゅちょう</td>\r\n			<td>★★★</td>\r\n			<td>chủ trương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>主導</td>\r\n			<td>しゅどう</td>\r\n			<td>★★★</td>\r\n			<td>chủ đạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>樹立</td>\r\n			<td>じゅりつ</td>\r\n			<td>★★★</td>\r\n			<td>th&agrave;nh lập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>助言</td>\r\n			<td>じょげん</td>\r\n			<td>★★★</td>\r\n			<td>lời khuy&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>処罰</td>\r\n			<td>しょばつ</td>\r\n			<td>★★★</td>\r\n			<td>xử phạt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>署名</td>\r\n			<td>しょめい</td>\r\n			<td>★★★</td>\r\n			<td>chữ k&iacute;, đề t&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>所有</td>\r\n			<td>しょゆう</td>\r\n			<td>★★★</td>\r\n			<td>sở hữu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>是正</td>\r\n			<td>ぜせい</td>\r\n			<td>★★★</td>\r\n			<td>sửa cho đ&uacute;ng, l&agrave;m cho ngay ngắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>訴訟</td>\r\n			<td>そしょう</td>\r\n			<td>★★★</td>\r\n			<td>kiện tụng, thưa kiện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>打開</td>\r\n			<td>だかい</td>\r\n			<td>★★★</td>\r\n			<td>c&ocirc;ng ph&aacute;, vượt qua</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>妥協</td>\r\n			<td>だきょう</td>\r\n			<td>★★★</td>\r\n			<td>thỏa hiệp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>把握</td>\r\n			<td>はあく</td>\r\n			<td>★★★</td>\r\n			<td>nắm bắt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>派遣</td>\r\n			<td>はけん</td>\r\n			<td>★★★</td>\r\n			<td>ph&aacute;i cử</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>避難</td>\r\n			<td>ひなん</td>\r\n			<td>★★★</td>\r\n			<td>l&aacute;nh nạn, tị nạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>非難</td>\r\n			<td>ひなん</td>\r\n			<td>★★★</td>\r\n			<td>chỉ tr&iacute;ch, ph&ecirc; b&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>披露</td>\r\n			<td>ひろう</td>\r\n			<td>★★★</td>\r\n			<td>c&ocirc;ng khai, tuy&ecirc;n bố</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>疲労</td>\r\n			<td>ひろう</td>\r\n			<td>★★★</td>\r\n			<td>mệt mỏi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>普及</td>\r\n			<td>ふきゅう</td>\r\n			<td>★★★</td>\r\n			<td>phổ biến, phổ cập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>負傷</td>\r\n			<td>ふしょう</td>\r\n			<td>★★★</td>\r\n			<td>bị thương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>侮辱</td>\r\n			<td>ぶじょく</td>\r\n			<td>★★★</td>\r\n			<td>lăng mạ, xỉ nhục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>負担</td>\r\n			<td>ふたん</td>\r\n			<td>★★★</td>\r\n			<td>g&aacute;nh v&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>赴任</td>\r\n			<td>ふにん</td>\r\n			<td>★★★</td>\r\n			<td>nhận chức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>腐敗</td>\r\n			<td>ふはい</td>\r\n			<td>★★★</td>\r\n			<td>hủ bại, mục n&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>扶養</td>\r\n			<td>ふよう</td>\r\n			<td>★★★</td>\r\n			<td>cấp dưỡng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>保管</td>\r\n			<td>ほかん</td>\r\n			<td>★★★</td>\r\n			<td>bảo quản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>補充</td>\r\n			<td>ほじゅう</td>\r\n			<td>★★★</td>\r\n			<td>bổ sung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>募集</td>\r\n			<td>ぼしゅう</td>\r\n			<td>★★★</td>\r\n			<td>chi&ecirc;u mộ, tuyển mộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>保障</td>\r\n			<td>ほしょう</td>\r\n			<td>★★★</td>\r\n			<td>bảo đảm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>補償</td>\r\n			<td>ほしょう</td>\r\n			<td>★★★</td>\r\n			<td>bồi thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>摩擦</td>\r\n			<td>まさつ</td>\r\n			<td>★★★</td>\r\n			<td>ma s&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>矛盾</td>\r\n			<td>むじゅん</td>\r\n			<td>★★★</td>\r\n			<td>m&acirc;u thuẫn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>模索</td>\r\n			<td>もさく</td>\r\n			<td>★★★</td>\r\n			<td>d&ograve; dẫm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>移住</td>\r\n			<td>いじゅう</td>\r\n			<td>★★</td>\r\n			<td>di tr&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>依存</td>\r\n			<td>いぞん</td>\r\n			<td>★★</td>\r\n			<td>dựa v&agrave;o, phụ thuộc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>異動</td>\r\n			<td>いどう</td>\r\n			<td>★★</td>\r\n			<td>dời chỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>化合</td>\r\n			<td>かごう</td>\r\n			<td>★★</td>\r\n			<td>hợp chất h&oacute;a học</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>加入</td>\r\n			<td>かにゅう</td>\r\n			<td>★★</td>\r\n			<td>gia nhập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>議決</td>\r\n			<td>ぎけつ</td>\r\n			<td>★★</td>\r\n			<td>nghị quyết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>記述</td>\r\n			<td>きじゅつ</td>\r\n			<td>★★</td>\r\n			<td>viết m&ocirc; tả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>寄贈</td>\r\n			<td>きぞう</td>\r\n			<td>★★</td>\r\n			<td>tặng, biếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>規定</td>\r\n			<td>きてい</td>\r\n			<td>★★</td>\r\n			<td>quy định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>居住</td>\r\n			<td>きょじゅう</td>\r\n			<td>★★</td>\r\n			<td>cư tr&uacute;, sinh sống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>拒絶</td>\r\n			<td>きょぜつ</td>\r\n			<td>★★</td>\r\n			<td>cự tuyệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>許容</td>\r\n			<td>きょよう</td>\r\n			<td>★★</td>\r\n			<td>chấp nhận, cho ph&eacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>区画</td>\r\n			<td>くかく</td>\r\n			<td>★★</td>\r\n			<td>khu đất, ngăn chia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>護衛</td>\r\n			<td>ごえい</td>\r\n			<td>★★</td>\r\n			<td>bảo vệ, hộ tống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>死刑</td>\r\n			<td>しけい</td>\r\n			<td>★★</td>\r\n			<td>tử h&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>辞職</td>\r\n			<td>じしょく</td>\r\n			<td>★★</td>\r\n			<td>từ chức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>持続</td>\r\n			<td>じぞく</td>\r\n			<td>★★</td>\r\n			<td>tiếp diễn, k&eacute;o d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>志望</td>\r\n			<td>しぼう</td>\r\n			<td>★★</td>\r\n			<td>nguyện vọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>始末</td>\r\n			<td>しまつ</td>\r\n			<td>★★</td>\r\n			<td>giải quyết, tiết kiệm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>主催</td>\r\n			<td>しゅさい</td>\r\n			<td>★★</td>\r\n			<td>tổ chức, chủ tr&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>取材</td>\r\n			<td>しゅざい</td>\r\n			<td>★★</td>\r\n			<td>lấy tin tức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>所属</td>\r\n			<td>しょぞく</td>\r\n			<td>★★</td>\r\n			<td>thuộc về</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>除外</td>\r\n			<td>じょがい</td>\r\n			<td>★★</td>\r\n			<td>ngoại trừ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>徐行</td>\r\n			<td>じょこう</td>\r\n			<td>★★</td>\r\n			<td>giảm tốc độ, h&atilde;m lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>処分</td>\r\n			<td>しょぶん</td>\r\n			<td>★★</td>\r\n			<td>trừng phạt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>自立</td>\r\n			<td>じりつ</td>\r\n			<td>★★</td>\r\n			<td>tự lập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>指令</td>\r\n			<td>しれい</td>\r\n			<td>★★</td>\r\n			<td>chỉ thị, mệnh lệnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>妥結</td>\r\n			<td>だけつ</td>\r\n			<td>★★</td>\r\n			<td>thỏa thuận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>貯蓄</td>\r\n			<td>ちょちく</td>\r\n			<td>★★</td>\r\n			<td>tiết kiệm (tiền)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>治療</td>\r\n			<td>ちりょう</td>\r\n			<td>★★</td>\r\n			<td>điều trị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>破壊</td>\r\n			<td>はかい</td>\r\n			<td>★★</td>\r\n			<td>ph&aacute; hoại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>破損</td>\r\n			<td>はそん</td>\r\n			<td>★★</td>\r\n			<td>hư tổn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>破裂</td>\r\n			<td>はれつ</td>\r\n			<td>★★</td>\r\n			<td>ph&aacute; vỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>悲観</td>\r\n			<td>ひかん</td>\r\n			<td>★★</td>\r\n			<td>bi quan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>否決</td>\r\n			<td>ひけつ</td>\r\n			<td>★★</td>\r\n			<td>phủ quyết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>微笑</td>\r\n			<td>びしょう</td>\r\n			<td>★★</td>\r\n			<td>mỉm cười</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>比例</td>\r\n			<td>ひれい</td>\r\n			<td>★★</td>\r\n			<td>tỉ lệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>布告</td>\r\n			<td>ふこく</td>\r\n			<td>★★</td>\r\n			<td>tuy&ecirc;n bố, bố c&aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>武装</td>\r\n			<td>ぶそう</td>\r\n			<td>★★</td>\r\n			<td>vũ trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>捕獲</td>\r\n			<td>ほかく</td>\r\n			<td>★★</td>\r\n			<td>gi&agrave;nh được, bắt được</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>補給</td>\r\n			<td>ほきゅう</td>\r\n			<td>★★</td>\r\n			<td>cung cấp th&ecirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>募金</td>\r\n			<td>ぼきん</td>\r\n			<td>★★</td>\r\n			<td>tiền quy&ecirc;n g&oacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>舗装</td>\r\n			<td>ほそう</td>\r\n			<td>★★</td>\r\n			<td>l&aacute;t đường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>補足</td>\r\n			<td>ほそく</td>\r\n			<td>★★</td>\r\n			<td>bổ sung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>保養</td>\r\n			<td>ほよう</td>\r\n			<td>★★</td>\r\n			<td>bảo dưỡng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>模倣</td>\r\n			<td>もほう</td>\r\n			<td>★★</td>\r\n			<td>m&ocirc; phỏng, bắt chước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>預金</td>\r\n			<td>よきん</td>\r\n			<td>★★</td>\r\n			<td>tiền gửi ng&acirc;n h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>予言</td>\r\n			<td>よげん</td>\r\n			<td>★★</td>\r\n			<td>n&oacute;i trước, điềm b&aacute;o trước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>移植</td>\r\n			<td>いしょく</td>\r\n			<td>★</td>\r\n			<td>cấy gh&eacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>遺伝</td>\r\n			<td>いでん</td>\r\n			<td>★</td>\r\n			<td>di truyền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>会釈</td>\r\n			<td>えしゃく</td>\r\n			<td>★</td>\r\n			<td>c&uacute;i đầu, c&uacute;i ch&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>祈願</td>\r\n			<td>きがん</td>\r\n			<td>★</td>\r\n			<td>cầu khấn, nguyện cầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>棄却</td>\r\n			<td>ききゃく</td>\r\n			<td>★</td>\r\n			<td>b&aacute;c bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>偽装</td>\r\n			<td>ぎそう</td>\r\n			<td>★</td>\r\n			<td>ngụy trang, cải trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>解毒</td>\r\n			<td>げどく</td>\r\n			<td>★</td>\r\n			<td>giải độc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>懸念</td>\r\n			<td>けねん</td>\r\n			<td>★</td>\r\n			<td>lo lắng, lo sợ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>下落</td>\r\n			<td>げらく</td>\r\n			<td>★</td>\r\n			<td>sụt giảm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>個室</td>\r\n			<td>こしつ</td>\r\n			<td>★</td>\r\n			<td>ph&ograve;ng ri&ecirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>挫折</td>\r\n			<td>ざせつ</td>\r\n			<td>★</td>\r\n			<td>sụp đổ, thất bại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>左遷</td>\r\n			<td>させん</td>\r\n			<td>★</td>\r\n			<td>gi&aacute;ng chức, hạ bậc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>作動</td>\r\n			<td>さどう</td>\r\n			<td>★</td>\r\n			<td>t&aacute;c động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>自炊</td>\r\n			<td>じすい</td>\r\n			<td>★</td>\r\n			<td>tự nấu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>自重</td>\r\n			<td>じちょう</td>\r\n			<td>★</td>\r\n			<td>tự trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>遮断</td>\r\n			<td>しゃだん</td>\r\n			<td>★</td>\r\n			<td>ngắt, l&agrave;m gi&aacute;n đoạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>127</td>\r\n			<td>授与</td>\r\n			<td>じゅよ</td>\r\n			<td>★</td>\r\n			<td>trao tặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>128</td>\r\n			<td>受領</td>\r\n			<td>じゅりょう</td>\r\n			<td>★</td>\r\n			<td>nhận l&atilde;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>129</td>\r\n			<td>是認</td>\r\n			<td>ぜにん</td>\r\n			<td>★</td>\r\n			<td>t&aacute;n th&agrave;nh, chấp nhận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>130</td>\r\n			<td>疎外</td>\r\n			<td>そがい</td>\r\n			<td>★</td>\r\n			<td>xa l&aacute;nh, ghẻ lạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>131</td>\r\n			<td>阻害</td>\r\n			<td>そがい</td>\r\n			<td>★</td>\r\n			<td>cản trở, trở ngại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>132</td>\r\n			<td>遅延</td>\r\n			<td>ちえん</td>\r\n			<td>★</td>\r\n			<td>tr&igrave; ho&atilde;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>133</td>\r\n			<td>波及</td>\r\n			<td>はきゅう</td>\r\n			<td>★</td>\r\n			<td>lan rộng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>134</td>\r\n			<td>破綻</td>\r\n			<td>はたん</td>\r\n			<td>★</td>\r\n			<td>sụp đổ, ph&aacute; sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>135</td>\r\n			<td>破滅</td>\r\n			<td>はめつ</td>\r\n			<td>★</td>\r\n			<td>ti&ecirc;u tan, đổ n&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>136</td>\r\n			<td>批准</td>\r\n			<td>ひじゅん</td>\r\n			<td>★</td>\r\n			<td>ph&ecirc; chuẩn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>137</td>\r\n			<td>浮上</td>\r\n			<td>ふじょう</td>\r\n			<td>★</td>\r\n			<td>trồi l&ecirc;n, nổi l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>138</td>\r\n			<td>魅惑</td>\r\n			<td>みわく</td>\r\n			<td>★</td>\r\n			<td>quyến rũ, m&ecirc; hoặc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>139</td>\r\n			<td>癒着</td>\r\n			<td>ゆちゃく</td>\r\n			<td>★</td>\r\n			<td>d&iacute;nh chặt, liền lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>140</td>\r\n			<td>由来</td>\r\n			<td>ゆらい</td>\r\n			<td>★</td>\r\n			<td>nguồn gốc, gốc g&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1),
(5, 4, '第1週_1日目（日本語総まとめN2_語彙）', 'N2_Goi_Tuan1Ngay1_0.png', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:full\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>stt</strong></td>\r\n			<td style=\"text-align:center\"><strong>Mục từ</strong></td>\r\n			<td style=\"text-align:center\"><strong>H&aacute;n tự</strong></td>\r\n			<td style=\"text-align:center\"><strong>Loại</strong></td>\r\n			<td style=\"text-align:center\"><strong>Nghĩa</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">チラシ</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">tờ rơi</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">2</td>\r\n			<td style=\"text-align:center\">びら</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">tờ rơi</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">ちんたいアパート</td>\r\n			<td style=\"text-align:center\">賃貸アパート</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">căn hộ cho thu&ecirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">4</td>\r\n			<td style=\"text-align:center\">やちん</td>\r\n			<td style=\"text-align:center\">家賃</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">tiền thu&ecirc; nh&agrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">5</td>\r\n			<td style=\"text-align:center\">かんりひ</td>\r\n			<td style=\"text-align:center\">管理費</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">ph&iacute; quản l&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">6</td>\r\n			<td style=\"text-align:center\">むりょう</td>\r\n			<td style=\"text-align:center\">無料</td>\r\n			<td style=\"text-align:center\">adj</td>\r\n			<td style=\"text-align:center\">miễn ph&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">7</td>\r\n			<td style=\"text-align:center\">ただ</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">adj;adv</td>\r\n			<td style=\"text-align:center\">miễn ph&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">8</td>\r\n			<td style=\"text-align:center\">とほごふん</td>\r\n			<td style=\"text-align:center\">徒歩５分</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">đi bộ 5 ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">9</td>\r\n			<td style=\"text-align:center\">さんがいだて</td>\r\n			<td style=\"text-align:center\">３階建て</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nh&agrave; 3 tầng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">10</td>\r\n			<td style=\"text-align:center\">みなみむき</td>\r\n			<td style=\"text-align:center\">南向き</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">hướng về ph&iacute;a nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">11</td>\r\n			<td style=\"text-align:center\">ちくじゅうねん</td>\r\n			<td style=\"text-align:center\">築１０年</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">x&acirc;y từ 10 năm trước</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">12</td>\r\n			<td style=\"text-align:center\">じてんしゃおきば</td>\r\n			<td style=\"text-align:center\">自転車置き場</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">chỗ đậu xe đạp</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">13</td>\r\n			<td style=\"text-align:center\">マンション</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">chung cư</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">14</td>\r\n			<td style=\"text-align:center\">しききん</td>\r\n			<td style=\"text-align:center\">敷金</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">tiền đặt cọc (sau n&agrave;y ho&agrave;n trả lại)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">15</td>\r\n			<td style=\"text-align:center\">れいきん</td>\r\n			<td style=\"text-align:center\">礼金</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">tiền lễ (sau n&agrave;y kh&ocirc;ng ho&agrave;n trả lại)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">16</td>\r\n			<td style=\"text-align:center\">１DK（ワンディーケー）</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nh&agrave; c&oacute; 1 ph&ograve;ng ngo&agrave;i bếp v&agrave; chỗ ăn</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">17</td>\r\n			<td style=\"text-align:center\">２LDK（ニーエルディーケー）</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nh&agrave; c&oacute; 2 ph&ograve;ng ngo&agrave;i bếp, chỗ ăn v&agrave; ph&ograve;ng kh&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">18</td>\r\n			<td style=\"text-align:center\">ひろびろ（と）している</td>\r\n			<td style=\"text-align:center\">広々（と）している</td>\r\n			<td style=\"text-align:center\">adj;adv</td>\r\n			<td style=\"text-align:center\">rộng r&atilde;i, bao la</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">19</td>\r\n			<td style=\"text-align:center\">ながめがいい</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">adv</td>\r\n			<td style=\"text-align:center\">tầm nh&igrave;n tốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">20</td>\r\n			<td style=\"text-align:center\">ひあたりがいい</td>\r\n			<td style=\"text-align:center\">日当たりがいい</td>\r\n			<td style=\"text-align:center\">adj</td>\r\n			<td style=\"text-align:center\">c&oacute; &aacute;nh s&aacute;ng tốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">21</td>\r\n			<td style=\"text-align:center\">ひとどおりがおおい</td>\r\n			<td style=\"text-align:center\">人通りが多い</td>\r\n			<td style=\"text-align:center\">adj</td>\r\n			<td style=\"text-align:center\">đ&ocirc;ng người qua lại (đường x&aacute;)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">22</td>\r\n			<td style=\"text-align:center\">いっけんや</td>\r\n			<td style=\"text-align:center\">一軒家</td>\r\n			<td style=\"text-align:center\">adj</td>\r\n			<td style=\"text-align:center\">nh&agrave; độc lập</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">23</td>\r\n			<td style=\"text-align:center\">いっこだて</td>\r\n			<td style=\"text-align:center\">一戸建て</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nh&agrave; độc lập</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">24</td>\r\n			<td style=\"text-align:center\">ものほし</td>\r\n			<td style=\"text-align:center\">物干し</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">chỗ phơi quần &aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">25</td>\r\n			<td style=\"text-align:center\">ふろば</td>\r\n			<td style=\"text-align:center\">風呂場</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nh&agrave; tắm, ph&ograve;ng tắm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">26</td>\r\n			<td style=\"text-align:center\">せんめんじょ</td>\r\n			<td style=\"text-align:center\">洗面所</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">chỗ rửa mặt</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">27</td>\r\n			<td style=\"text-align:center\">ひとりぐらし</td>\r\n			<td style=\"text-align:center\">一人暮らし</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">sống một m&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">28</td>\r\n			<td style=\"text-align:center\">ひとりずまい</td>\r\n			<td style=\"text-align:center\">一人住まい</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">sống một m&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">29</td>\r\n			<td style=\"text-align:center\">きんじょづきあい</td>\r\n			<td style=\"text-align:center\">近所付き合い</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">quan hệ h&agrave;ng x&oacute;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">30</td>\r\n			<td style=\"text-align:center\">かれとつきあう</td>\r\n			<td style=\"text-align:center\">彼と付き合う</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">kết giao bạn trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">31</td>\r\n			<td style=\"text-align:center\">ともだちにつきあう</td>\r\n			<td style=\"text-align:center\">友達に付き合う</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">kết giao bạn b&egrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">32</td>\r\n			<td style=\"text-align:center\">ひっこしのにづくりをする</td>\r\n			<td style=\"text-align:center\">引っ越しの荷造りをする</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">đ&oacute;ng g&oacute;i h&agrave;nh l&yacute; (chuyển nh&agrave;)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">33</td>\r\n			<td style=\"text-align:center\">かいらんばんをまわす</td>\r\n			<td style=\"text-align:center\">回覧板を回す</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">gửi bảng th&ocirc;ng b&aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">34</td>\r\n			<td style=\"text-align:center\">このあたり</td>\r\n			<td style=\"text-align:center\">この辺り</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">v&ugrave;ng n&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">35</td>\r\n			<td style=\"text-align:center\">このふきん</td>\r\n			<td style=\"text-align:center\">この付近</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">quanh đ&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">36</td>\r\n			<td style=\"text-align:center\">まんまえ</td>\r\n			<td style=\"text-align:center\">真ん前</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">ngay ph&iacute;a trước</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">37</td>\r\n			<td style=\"text-align:center\">まうしろ</td>\r\n			<td style=\"text-align:center\">真後ろ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">ngay ph&iacute;a sau</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">38</td>\r\n			<td style=\"text-align:center\">まんなか</td>\r\n			<td style=\"text-align:center\">真ん中</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">ở ngay giữa</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">39</td>\r\n			<td style=\"text-align:center\">ななめまえ</td>\r\n			<td style=\"text-align:center\">斜め前</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">đ&acirc;u đ&oacute; s&aacute;t b&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 0);
INSERT INTO `giao_trinh_bai` (`id`, `giao_trinh_id`, `name`, `image`, `content`, `show_img`) VALUES
(6, 4, '第1週_2日目（日本語総まとめN2_語彙）', 'N2_Goi_Tuan1Ngay2_0.png', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:full\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">stt</td>\r\n			<td style=\"text-align:center\">Mục từ</td>\r\n			<td style=\"text-align:center\">H&aacute;n tự</td>\r\n			<td style=\"text-align:center\">Loại</td>\r\n			<td style=\"text-align:center\">Nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">だんボールばこ</td>\r\n			<td style=\"text-align:center\">段ボール箱</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">th&ugrave;ng c&aacute;t t&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">2</td>\r\n			<td style=\"text-align:center\">ガムテープ</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">băng keo trong</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">ポリぶくろ</td>\r\n			<td style=\"text-align:center\">ポリ袋</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">t&uacute;i nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">4</td>\r\n			<td style=\"text-align:center\">レジぶくろ</td>\r\n			<td style=\"text-align:center\">レジ袋</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">bịch nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">5</td>\r\n			<td style=\"text-align:center\">パック</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">vỉ (trứng), hộp (sữa)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">6</td>\r\n			<td style=\"text-align:center\">トレイ</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">miếng đựng thịt, c&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">7</td>\r\n			<td style=\"text-align:center\">キャップ</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nắp chai</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">8</td>\r\n			<td style=\"text-align:center\">ラベル</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">nh&atilde;n m&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">9</td>\r\n			<td style=\"text-align:center\">ペットボトル</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">chai</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">10</td>\r\n			<td style=\"text-align:center\">かいかえる</td>\r\n			<td style=\"text-align:center\">買い換える</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">mua c&aacute;i mới (thay c&aacute;i cũ)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">11</td>\r\n			<td style=\"text-align:center\">かでんせいひん</td>\r\n			<td style=\"text-align:center\">家電製品</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">sản phẩm điện gia dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">12</td>\r\n			<td style=\"text-align:center\">しょうエネ</td>\r\n			<td style=\"text-align:center\">省エネ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">tiết kiệm năng lượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">13</td>\r\n			<td style=\"text-align:center\">でんきだいをせつやくする</td>\r\n			<td style=\"text-align:center\">電気代を節約する</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">tiết kiệm chi ph&iacute; điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">14</td>\r\n			<td style=\"text-align:center\">ごみがたまる</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">ứ đọng r&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">15</td>\r\n			<td style=\"text-align:center\">リサイクルにだす</td>\r\n			<td style=\"text-align:center\">リサイクルに出す</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">cho v&agrave;o khu chứa r&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">16</td>\r\n			<td style=\"text-align:center\">ふようひんをしょぶんする</td>\r\n			<td style=\"text-align:center\">不用品を処分する</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">vứt đi đồ kh&ocirc;ng cần thiết</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">17</td>\r\n			<td style=\"text-align:center\">ごみをぶんべつする</td>\r\n			<td style=\"text-align:center\">ごみを分別する</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">ph&acirc;n loại r&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">18</td>\r\n			<td style=\"text-align:center\">もえるごみ</td>\r\n			<td style=\"text-align:center\">燃えるごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c ch&aacute;y được</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">19</td>\r\n			<td style=\"text-align:center\">かねんごみ</td>\r\n			<td style=\"text-align:center\">可燃ごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c ch&aacute;y được</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">20</td>\r\n			<td style=\"text-align:center\">もやせるごみ</td>\r\n			<td style=\"text-align:center\">燃やせるごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c ch&aacute;y được</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">21</td>\r\n			<td style=\"text-align:center\">もえないごみ</td>\r\n			<td style=\"text-align:center\">燃えないごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c kh&ocirc;ng ch&aacute;y được</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">22</td>\r\n			<td style=\"text-align:center\">ふねんごみ</td>\r\n			<td style=\"text-align:center\">不燃ごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c kh&ocirc;ng ch&aacute;y được</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">23</td>\r\n			<td style=\"text-align:center\">もやせないごみ</td>\r\n			<td style=\"text-align:center\">燃やせないごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c kh&ocirc;ng ch&aacute;y được</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">24</td>\r\n			<td style=\"text-align:center\">なまごみ</td>\r\n			<td style=\"text-align:center\">生ごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c sinh hoạt</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">25</td>\r\n			<td style=\"text-align:center\">そだいごみ</td>\r\n			<td style=\"text-align:center\">粗大ごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c lớn (b&agrave;n, ghế...)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">26</td>\r\n			<td style=\"text-align:center\">しげんごみ</td>\r\n			<td style=\"text-align:center\">資源ごみ</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">r&aacute;c t&aacute;i chế</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">27</td>\r\n			<td style=\"text-align:center\">していのごみぶくろ</td>\r\n			<td style=\"text-align:center\">指定のごみ袋</td>\r\n			<td style=\"text-align:center\">n</td>\r\n			<td style=\"text-align:center\">bịch đựng r&aacute;c chỉ định</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">28</td>\r\n			<td style=\"text-align:center\">ペットボトルをすすぐ</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">rửa sơ chai lọ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">29</td>\r\n			<td style=\"text-align:center\">ラベルをはがす</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">lột nh&atilde;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">30</td>\r\n			<td style=\"text-align:center\">シールをはる</td>\r\n			<td style=\"text-align:center\">シールを貼る</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">d&aacute;n ni&ecirc;m phong</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">31</td>\r\n			<td style=\"text-align:center\">アルミかんをつぶす</td>\r\n			<td style=\"text-align:center\">アルミ缶をつぶす</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">đ&egrave; n&aacute;t lon nhom</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">32</td>\r\n			<td style=\"text-align:center\">ふるしんぶんをさいりようする</td>\r\n			<td style=\"text-align:center\">古新聞を再利用する</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">t&aacute;i sử dụng b&aacute;o cũ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">33</td>\r\n			<td style=\"text-align:center\">みずがもれる</td>\r\n			<td style=\"text-align:center\">水がもれる</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">r&ograve; rỉ nước</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">34</td>\r\n			<td style=\"text-align:center\">みずをもらす</td>\r\n			<td style=\"text-align:center\">水をもらす</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">l&agrave;m rỉ ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">35</td>\r\n			<td style=\"text-align:center\">ひみつがもれる</td>\r\n			<td style=\"text-align:center\">秘密がもれる</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">lộ b&iacute; mật</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">36</td>\r\n			<td style=\"text-align:center\">ひみつをもらす</td>\r\n			<td style=\"text-align:center\">秘密をもらす</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">l&agrave;m lộ b&iacute; mật</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">37</td>\r\n			<td style=\"text-align:center\">こぼれる</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">v</td>\r\n			<td style=\"text-align:center\">tr&agrave;n ra, rơi ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 0),
(7, 5, 'Bài 01', 'bai.png', '', 0),
(8, 5, 'Bài 02', '', '', 0),
(9, 5, 'Bài 03', '', '', 0),
(10, 5, 'Bài 04', '', '', 0),
(11, 5, 'Bài 05', '', '', 0),
(12, 5, 'Bài 06', '', '', 0),
(13, 5, 'Bài 07', '', '', 0),
(14, 5, 'Bài 08', '', '', 0),
(15, 5, 'Bài 09', '', '', 0),
(16, 3, 'Bài 03', '', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>意向</td>\r\n			<td>いこう</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; hướng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>衣装</td>\r\n			<td>いしょう</td>\r\n			<td>★★★</td>\r\n			<td>trang phục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>遺跡</td>\r\n			<td>いせき</td>\r\n			<td>★★★</td>\r\n			<td>di t&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>意欲</td>\r\n			<td>いよく</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; muốn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>威力</td>\r\n			<td>いりょく</td>\r\n			<td>★★★</td>\r\n			<td>sức mạnh, uy lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>架空</td>\r\n			<td>かくう</td>\r\n			<td>★★★</td>\r\n			<td>hư cấu, tưởng tượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>仮説</td>\r\n			<td>かせつ</td>\r\n			<td>★★★</td>\r\n			<td>giả thuyết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>化繊</td>\r\n			<td>かせん</td>\r\n			<td>★★★</td>\r\n			<td>sợi tổng hợp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>河川</td>\r\n			<td>かせん</td>\r\n			<td>★★★</td>\r\n			<td>s&ocirc;ng ng&ograve;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>課題</td>\r\n			<td>かだい</td>\r\n			<td>★★★</td>\r\n			<td>đề t&agrave;i n&oacute;i chuyện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>花壇</td>\r\n			<td>かだん</td>\r\n			<td>★★★</td>\r\n			<td>vườn hoa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>過労</td>\r\n			<td>かろう</td>\r\n			<td>★★★</td>\r\n			<td>l&agrave;m việc qu&aacute; sức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>危害</td>\r\n			<td>きがい</td>\r\n			<td>★★★</td>\r\n			<td>nguy hại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>規格</td>\r\n			<td>きかく</td>\r\n			<td>★★★</td>\r\n			<td>quy c&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>企業</td>\r\n			<td>きぎょう</td>\r\n			<td>★★★</td>\r\n			<td>x&iacute; nghiệp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>戯曲</td>\r\n			<td>ぎきょく</td>\r\n			<td>★★★</td>\r\n			<td>kịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>起源</td>\r\n			<td>きげん</td>\r\n			<td>★★★</td>\r\n			<td>khởi nguồn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>既婚</td>\r\n			<td>きこん</td>\r\n			<td>★★★</td>\r\n			<td>đ&atilde; kết h&ocirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>儀式</td>\r\n			<td>ぎしき</td>\r\n			<td>★★★</td>\r\n			<td>nghi thức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>気象</td>\r\n			<td>きしょう</td>\r\n			<td>★★★</td>\r\n			<td>kh&iacute; tượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>軌道</td>\r\n			<td>きどう</td>\r\n			<td>★★★</td>\r\n			<td>quỹ đạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>規範</td>\r\n			<td>きはん</td>\r\n			<td>★★★</td>\r\n			<td>quy phạm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>起伏</td>\r\n			<td>きふく</td>\r\n			<td>★★★</td>\r\n			<td>nhấp nh&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>疑惑</td>\r\n			<td>ぎわく</td>\r\n			<td>★★★</td>\r\n			<td>nghi hoặc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>固有</td>\r\n			<td>こゆう</td>\r\n			<td>★★★</td>\r\n			<td>c&oacute; từ trước, sẵn c&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>砂漠</td>\r\n			<td>さばく</td>\r\n			<td>★★★</td>\r\n			<td>sa mạc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>事項</td>\r\n			<td>じこう</td>\r\n			<td>★★★</td>\r\n			<td>điều khoản, mục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>事情</td>\r\n			<td>じじょう</td>\r\n			<td>★★★</td>\r\n			<td>sự t&igrave;nh, l&yacute; do</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>姿勢</td>\r\n			<td>しせい</td>\r\n			<td>★★★</td>\r\n			<td>tư thế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>事態</td>\r\n			<td>じたい</td>\r\n			<td>★★★</td>\r\n			<td>t&igrave;nh h&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>視点</td>\r\n			<td>してん</td>\r\n			<td>★★★</td>\r\n			<td>quan điểm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>紙幣</td>\r\n			<td>しへい</td>\r\n			<td>★★★</td>\r\n			<td>tiền giấy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>脂肪</td>\r\n			<td>しぼう</td>\r\n			<td>★★★</td>\r\n			<td>mỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>使命</td>\r\n			<td>しめい</td>\r\n			<td>★★★</td>\r\n			<td>sứ mệnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>斜面</td>\r\n			<td>しゃめん</td>\r\n			<td>★★★</td>\r\n			<td>mặt nghi&ecirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>修業</td>\r\n			<td>しゅぎょう</td>\r\n			<td>★★★</td>\r\n			<td>tu nghiệp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>首相</td>\r\n			<td>しゅしょう</td>\r\n			<td>★★★</td>\r\n			<td>thủ tướng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>主導</td>\r\n			<td>しゅどう</td>\r\n			<td>★★★</td>\r\n			<td>chủ đạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>樹木</td>\r\n			<td>じゅもく</td>\r\n			<td>★★★</td>\r\n			<td>l&ugrave;m c&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>庶民</td>\r\n			<td>しょみん</td>\r\n			<td>★★★</td>\r\n			<td>d&acirc;n thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>資料</td>\r\n			<td>しりょう</td>\r\n			<td>★★★</td>\r\n			<td>tư liệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>視力</td>\r\n			<td>しりょく</td>\r\n			<td>★★★</td>\r\n			<td>thị lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>素材</td>\r\n			<td>そざい</td>\r\n			<td>★★★</td>\r\n			<td>nguy&ecirc;n liệu, vật liệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>肥料</td>\r\n			<td>ひりょう</td>\r\n			<td>★★★</td>\r\n			<td>ph&acirc;n b&oacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>富豪</td>\r\n			<td>ふごう</td>\r\n			<td>★★★</td>\r\n			<td>ph&uacute; h&agrave;o, người gi&agrave;u c&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>負債</td>\r\n			<td>ふさい</td>\r\n			<td>★★★</td>\r\n			<td>mắc nợ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>不順</td>\r\n			<td>ふじゅん</td>\r\n			<td>★★★</td>\r\n			<td>kh&ocirc;ng theo quy luật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>不振</td>\r\n			<td>ふしん</td>\r\n			<td>★★★</td>\r\n			<td>kh&ocirc;ng thuận lợi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>不調</td>\r\n			<td>ふちょう</td>\r\n			<td>★★★</td>\r\n			<td>hỏng h&oacute;c, trục trặc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>不良</td>\r\n			<td>ふりょう</td>\r\n			<td>★★★</td>\r\n			<td>kh&ocirc;ng tốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>付録</td>\r\n			<td>ふろく</td>\r\n			<td>★★★</td>\r\n			<td>phụ lục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>魅力</td>\r\n			<td>みりょく</td>\r\n			<td>★★★</td>\r\n			<td>sức quyến rũ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>未練</td>\r\n			<td>みれん</td>\r\n			<td>★★★</td>\r\n			<td>lưu luyến, tiếc nuối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>無言</td>\r\n			<td>むごん</td>\r\n			<td>★★★</td>\r\n			<td>im lặng, kh&ocirc;ng n&oacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>無断</td>\r\n			<td>むだん</td>\r\n			<td>★★★</td>\r\n			<td>kh&ocirc;ng ph&eacute;p, kh&ocirc;ng b&aacute;o trước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>無念</td>\r\n			<td>むねん</td>\r\n			<td>★★★</td>\r\n			<td>phiền muộn, buồn ch&aacute;n, tiếc nuối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>模型</td>\r\n			<td>もけい</td>\r\n			<td>★★★</td>\r\n			<td>m&ocirc; h&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>模様</td>\r\n			<td>もよう</td>\r\n			<td>★★★</td>\r\n			<td>hoa văn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>野心</td>\r\n			<td>やしん</td>\r\n			<td>★★★</td>\r\n			<td>d&atilde; t&acirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>与党</td>\r\n			<td>よとう</td>\r\n			<td>★★★</td>\r\n			<td>đảng cầm quyền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>花粉</td>\r\n			<td>かふん</td>\r\n			<td>★★</td>\r\n			<td>phấn hoa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>貨幣</td>\r\n			<td>かへい</td>\r\n			<td>★★</td>\r\n			<td>tiền tệ, đồng tiền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>器官</td>\r\n			<td>きかん</td>\r\n			<td>★★</td>\r\n			<td>cơ quan, bộ m&aacute;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>基金</td>\r\n			<td>ききん</td>\r\n			<td>★★</td>\r\n			<td>tiền quỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>喜劇</td>\r\n			<td>きげき</td>\r\n			<td>★★</td>\r\n			<td>h&agrave;i kịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>機構</td>\r\n			<td>きこう</td>\r\n			<td>★★</td>\r\n			<td>cơ cấu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>犠牲</td>\r\n			<td>ぎせい</td>\r\n			<td>★★</td>\r\n			<td>hy sinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>貴族</td>\r\n			<td>きぞく</td>\r\n			<td>★★</td>\r\n			<td>qu&yacute; tộc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>起点</td>\r\n			<td>きてん</td>\r\n			<td>★★</td>\r\n			<td>điểm bắt đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>技能</td>\r\n			<td>ぎのう</td>\r\n			<td>★★</td>\r\n			<td>kĩ năng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>語源</td>\r\n			<td>ごげん</td>\r\n			<td>★★</td>\r\n			<td>nguồn gốc của từ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>故人</td>\r\n			<td>こじん</td>\r\n			<td>★★</td>\r\n			<td>người đ&atilde; mất, người quen cũ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>戸籍</td>\r\n			<td>こせき</td>\r\n			<td>★★</td>\r\n			<td>hộ tịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>碁盤</td>\r\n			<td>ごばん</td>\r\n			<td>★★</td>\r\n			<td>b&agrave;n cờ g&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>差額</td>\r\n			<td>さがく</td>\r\n			<td>★★</td>\r\n			<td>khoản c&ograve;n lại, khoản dư</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>座標</td>\r\n			<td>ざひょう</td>\r\n			<td>★★</td>\r\n			<td>tọa độ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>視覚</td>\r\n			<td>しかく</td>\r\n			<td>★★</td>\r\n			<td>thị gi&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>嗜好</td>\r\n			<td>しこう</td>\r\n			<td>★★</td>\r\n			<td>khẩu vị, sở th&iacute;ch (ăn, uống)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>施設</td>\r\n			<td>しせつ</td>\r\n			<td>★★</td>\r\n			<td>thiết bị, cơ sở vật chất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>司法</td>\r\n			<td>しほう</td>\r\n			<td>★★</td>\r\n			<td>tư ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>守衛</td>\r\n			<td>しゅえい</td>\r\n			<td>★★</td>\r\n			<td>cảnh vệ, bảo vệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>主権</td>\r\n			<td>しゅけん</td>\r\n			<td>★★</td>\r\n			<td>chủ quyền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>首脳</td>\r\n			<td>しゅのう</td>\r\n			<td>★★</td>\r\n			<td>đầu n&atilde;o, người đứng đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>諸君</td>\r\n			<td>しょくん</td>\r\n			<td>★★</td>\r\n			<td>qu&yacute; vị, c&aacute;c bạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>所得</td>\r\n			<td>しょとく</td>\r\n			<td>★★</td>\r\n			<td>thu nhập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>世帯</td>\r\n			<td>せたい</td>\r\n			<td>★★</td>\r\n			<td>thế hệ, đơn vị gia đ&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>打撃</td>\r\n			<td>だげき</td>\r\n			<td>★★</td>\r\n			<td>c&uacute; bạt, c&uacute; đ&aacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>治安</td>\r\n			<td>ちあん</td>\r\n			<td>★★</td>\r\n			<td>trị an</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>途上</td>\r\n			<td>とじょう</td>\r\n			<td>★★</td>\r\n			<td>tr&ecirc;n đường đi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>悲鳴</td>\r\n			<td>ひめい</td>\r\n			<td>★★</td>\r\n			<td>th&eacute;t, k&ecirc;u g&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>微量</td>\r\n			<td>びりょう</td>\r\n			<td>★★</td>\r\n			<td>vi lượng, lượng nhỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>不況</td>\r\n			<td>ふきょう</td>\r\n			<td>★★</td>\r\n			<td>kinh doanh tr&igrave; trệ, kinh tế suy tho&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>普遍</td>\r\n			<td>ふへん</td>\r\n			<td>★★</td>\r\n			<td>phổ qu&aacute;t, phổ biến</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>浮力</td>\r\n			<td>ふりょく</td>\r\n			<td>★★</td>\r\n			<td>sức nổi, lực nổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>武力</td>\r\n			<td>ぶりょく</td>\r\n			<td>★★</td>\r\n			<td>vũ lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>麻酔</td>\r\n			<td>ますい</td>\r\n			<td>★★</td>\r\n			<td>ma t&uacute;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>微塵</td>\r\n			<td>みじん</td>\r\n			<td>★★</td>\r\n			<td>mảnh nhỏ, li ti</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>模範</td>\r\n			<td>もはん</td>\r\n			<td>★★</td>\r\n			<td>m&ocirc; phạm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>野党</td>\r\n			<td>やとう</td>\r\n			<td>★★</td>\r\n			<td>đảng phản đối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>世論</td>\r\n			<td>よろん／せろん</td>\r\n			<td>★★</td>\r\n			<td>dư luận, c&ocirc;ng luận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>利潤</td>\r\n			<td>りじゅん</td>\r\n			<td>★★</td>\r\n			<td>lợi nhuận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>旅客</td>\r\n			<td>りょかく</td>\r\n			<td>★★</td>\r\n			<td>kh&aacute;ch du lịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>履歴</td>\r\n			<td>りれき</td>\r\n			<td>★★</td>\r\n			<td>l&yacute; lịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>威厳</td>\r\n			<td>いげん</td>\r\n			<td>★</td>\r\n			<td>uy nghi&ecirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>遺産</td>\r\n			<td>いさん</td>\r\n			<td>★</td>\r\n			<td>di sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>汚職</td>\r\n			<td>おしょく</td>\r\n			<td>★</td>\r\n			<td>tham &ocirc;, tham nhũng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>瓦礫</td>\r\n			<td>がれき</td>\r\n			<td>★</td>\r\n			<td>gạch đ&aacute; vụn, sỏi, cuội</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>奇跡</td>\r\n			<td>きせき</td>\r\n			<td>★</td>\r\n			<td>k&igrave; t&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>偽善</td>\r\n			<td>ぎぜん</td>\r\n			<td>★</td>\r\n			<td>đạo đức giả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>既存</td>\r\n			<td>きそん</td>\r\n			<td>★</td>\r\n			<td>đ&atilde; tồn tại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>気迫</td>\r\n			<td>きはく</td>\r\n			<td>★</td>\r\n			<td>dũng kh&iacute;, kh&iacute; ph&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>拠点</td>\r\n			<td>きょてん</td>\r\n			<td>★</td>\r\n			<td>cứ điểm, (qu&acirc;n sự) vị tr&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>苦渋</td>\r\n			<td>くじゅう</td>\r\n			<td>★</td>\r\n			<td>đau khổ, gay go</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>顧客</td>\r\n			<td>こきゃく</td>\r\n			<td>★</td>\r\n			<td>kh&aacute;ch quen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>誤算</td>\r\n			<td>ごさん</td>\r\n			<td>★</td>\r\n			<td>t&iacute;nh sai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>後日</td>\r\n			<td>ごじつ</td>\r\n			<td>★</td>\r\n			<td>bữa sau, h&ocirc;m sau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>鼓動</td>\r\n			<td>こどう</td>\r\n			<td>★</td>\r\n			<td>nhịp đập, mạch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>古墳</td>\r\n			<td>こふん</td>\r\n			<td>★</td>\r\n			<td>mộ cổ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>査証</td>\r\n			<td>さしょう</td>\r\n			<td>★</td>\r\n			<td>thị thực, visa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>師匠</td>\r\n			<td>ししょう</td>\r\n			<td>★</td>\r\n			<td>thầy, bậc thầy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>指針</td>\r\n			<td>ししん</td>\r\n			<td>★</td>\r\n			<td>hướng dẫn, chỉ đạo, phương ch&acirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>指紋</td>\r\n			<td>しもん</td>\r\n			<td>★</td>\r\n			<td>dấu v&acirc;n tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>主審</td>\r\n			<td>しゅしん</td>\r\n			<td>★</td>\r\n			<td>trọng t&agrave;i ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>樹齢</td>\r\n			<td>じゅれい</td>\r\n			<td>★</td>\r\n			<td>tuổi của c&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>序盤</td>\r\n			<td>じょばん</td>\r\n			<td>★</td>\r\n			<td>lượt chơi mở m&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>地勢</td>\r\n			<td>ちせい</td>\r\n			<td>★</td>\r\n			<td>địa thế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>127</td>\r\n			<td>地層</td>\r\n			<td>ちそう</td>\r\n			<td>★</td>\r\n			<td>địa tầng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>128</td>\r\n			<td>著作</td>\r\n			<td>ちょさく</td>\r\n			<td>★</td>\r\n			<td>t&aacute;c giả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>129</td>\r\n			<td>土壌</td>\r\n			<td>どじょう</td>\r\n			<td>★</td>\r\n			<td>thổ nhưỡng, đất đai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>130</td>\r\n			<td>派閥</td>\r\n			<td>はばつ</td>\r\n			<td>★</td>\r\n			<td>b&egrave; ph&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>131</td>\r\n			<td>否決</td>\r\n			<td>ひけつ</td>\r\n			<td>★</td>\r\n			<td>phủ quyết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>132</td>\r\n			<td>被告</td>\r\n			<td>ひこく</td>\r\n			<td>★</td>\r\n			<td>bị c&aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>133</td>\r\n			<td>補欠</td>\r\n			<td>ほけつ</td>\r\n			<td>★</td>\r\n			<td>bổ khuyết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>134</td>\r\n			<td>魔法</td>\r\n			<td>まほう</td>\r\n			<td>★</td>\r\n			<td>ma thuật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>135</td>\r\n			<td>麻薬</td>\r\n			<td>まやく</td>\r\n			<td>★</td>\r\n			<td>thuốc m&ecirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>136</td>\r\n			<td>未遂</td>\r\n			<td>みすい</td>\r\n			<td>★</td>\r\n			<td>chưa ho&agrave;n th&agrave;nh, chưa phạm (tội)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>137</td>\r\n			<td>無縁</td>\r\n			<td>むえん</td>\r\n			<td>★</td>\r\n			<td>kh&ocirc;ng li&ecirc;n quan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>138</td>\r\n			<td>無実</td>\r\n			<td>むじつ</td>\r\n			<td>★</td>\r\n			<td>v&ocirc; tội, ng&acirc;y thơ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>139</td>\r\n			<td>無償</td>\r\n			<td>むしょう</td>\r\n			<td>★</td>\r\n			<td>kh&ocirc;ng bồi thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>140</td>\r\n			<td>夜分</td>\r\n			<td>やぶん</td>\r\n			<td>★</td>\r\n			<td>đ&ecirc;m, tối, khuya</td>\r\n		</tr>\r\n		<tr>\r\n			<td>141</td>\r\n			<td>余剰</td>\r\n			<td>よじょう</td>\r\n			<td>★</td>\r\n			<td>thặng dư</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(17, 3, 'Bài 04', '', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>暗算</td>\r\n			<td>あんざん</td>\r\n			<td>★★★</td>\r\n			<td>t&iacute;nh nhẩm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>暗示</td>\r\n			<td>あんじ</td>\r\n			<td>★★★</td>\r\n			<td>&aacute;m chỉ, gợi &yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>隠居</td>\r\n			<td>いんきょ</td>\r\n			<td>★★★</td>\r\n			<td>ẩn dật, về hưu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>運営</td>\r\n			<td>うんえい</td>\r\n			<td>★★★</td>\r\n			<td>điều h&agrave;nh, quản l&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>運搬</td>\r\n			<td>うんぱん</td>\r\n			<td>★★★</td>\r\n			<td>chuy&ecirc;n chở, vận chuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>運用</td>\r\n			<td>うんよう</td>\r\n			<td>★★★</td>\r\n			<td>vận dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>演奏</td>\r\n			<td>えんそう</td>\r\n			<td>★★★</td>\r\n			<td>biểu diễn, tr&igrave;nh diễn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>完結</td>\r\n			<td>かんけつ</td>\r\n			<td>★★★</td>\r\n			<td>kết th&uacute;c, ho&agrave;n th&agrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>看護</td>\r\n			<td>かんご</td>\r\n			<td>★★★</td>\r\n			<td>chăm s&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>干渉</td>\r\n			<td>かんしょう</td>\r\n			<td>★★★</td>\r\n			<td>can thiệp, xen v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>感染</td>\r\n			<td>かんせん</td>\r\n			<td>★★★</td>\r\n			<td>l&acirc;y nhiễm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>監督</td>\r\n			<td>かんとく</td>\r\n			<td>★★★</td>\r\n			<td>quản đốc, huấn luyện vi&ecirc;n, đạo diễn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>勘弁</td>\r\n			<td>かんべん</td>\r\n			<td>★★★</td>\r\n			<td>tha thứ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>関与</td>\r\n			<td>かんよ</td>\r\n			<td>★★★</td>\r\n			<td>d&iacute;nh l&iacute;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>緩和</td>\r\n			<td>かんわ</td>\r\n			<td>★★★</td>\r\n			<td>l&agrave;m dịu, nới lỏng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>均衡</td>\r\n			<td>きんこう</td>\r\n			<td>★★★</td>\r\n			<td>c&acirc;n bằng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>吟味</td>\r\n			<td>ぎんみ</td>\r\n			<td>★★★</td>\r\n			<td>kiểm chứng, xem x&eacute;t kĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>現像</td>\r\n			<td>げんぞう</td>\r\n			<td>★★★</td>\r\n			<td>\r\n			<p>Rửa phim, tr&aacute;ng phim</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>検討</td>\r\n			<td>けんとう</td>\r\n			<td>★★★</td>\r\n			<td>xem x&eacute;t, b&agrave;n bạc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>混乱</td>\r\n			<td>こんらん</td>\r\n			<td>★★★</td>\r\n			<td>hỗn loạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>酸化</td>\r\n			<td>さんか</td>\r\n			<td>★★★</td>\r\n			<td>&ocirc; xi h&oacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>参照</td>\r\n			<td>さんしょう</td>\r\n			<td>★★★</td>\r\n			<td>tham chiếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>進化</td>\r\n			<td>しんか</td>\r\n			<td>★★★</td>\r\n			<td>tiến h&oacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>審議</td>\r\n			<td>しんぎ</td>\r\n			<td>★★★</td>\r\n			<td>suy nghĩ c&acirc;n nhắc, b&agrave;n bạc kĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>信仰</td>\r\n			<td>しんこう</td>\r\n			<td>★★★</td>\r\n			<td>t&iacute;n ngưỡng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>進行</td>\r\n			<td>しんこう</td>\r\n			<td>★★★</td>\r\n			<td>tiến h&agrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>振興</td>\r\n			<td>しんこう</td>\r\n			<td>★★★</td>\r\n			<td>chấn hưng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>申告</td>\r\n			<td>しんこく</td>\r\n			<td>★★★</td>\r\n			<td>khai b&aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>審査</td>\r\n			<td>しんさ</td>\r\n			<td>★★★</td>\r\n			<td>thẩm tra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>新築</td>\r\n			<td>しんちく</td>\r\n			<td>★★★</td>\r\n			<td>x&acirc;y mới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>進呈</td>\r\n			<td>しんてい</td>\r\n			<td>★★★</td>\r\n			<td>tặng, biếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>振動</td>\r\n			<td>しんどう</td>\r\n			<td>★★★</td>\r\n			<td>chấn động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>侵入</td>\r\n			<td>しんにゅう</td>\r\n			<td>★★★</td>\r\n			<td>x&acirc;m nhập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>辛抱</td>\r\n			<td>しんぼう</td>\r\n			<td>★★★</td>\r\n			<td>ki&ecirc;n nhẫn, chịu đựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>宣言</td>\r\n			<td>せんげん</td>\r\n			<td>★★★</td>\r\n			<td>tuy&ecirc;n ng&ocirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>選考</td>\r\n			<td>せんこう</td>\r\n			<td>★★★</td>\r\n			<td>tuyển lựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>宣伝</td>\r\n			<td>せんでん</td>\r\n			<td>★★★</td>\r\n			<td>tuy&ecirc;n truyền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>全滅</td>\r\n			<td>ぜんめつ</td>\r\n			<td>★★★</td>\r\n			<td>diệt trừ ho&agrave;n to&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>存続</td>\r\n			<td>そんぞく</td>\r\n			<td>★★★</td>\r\n			<td>sống s&oacute;t, tiếp tục tồn tại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>探検</td>\r\n			<td>たんけん</td>\r\n			<td>★★★</td>\r\n			<td>th&aacute;m hiểm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>断言</td>\r\n			<td>だんげん</td>\r\n			<td>★★★</td>\r\n			<td>x&aacute;c nhận, khẳng định, n&oacute;i chắc chắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>短縮</td>\r\n			<td>たんしゅく</td>\r\n			<td>★★★</td>\r\n			<td>r&uacute;t ngắn, co r&uacute;t lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>沈黙</td>\r\n			<td>ちんもく</td>\r\n			<td>★★★</td>\r\n			<td>trầm mặc, y&ecirc;n lặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>陳列</td>\r\n			<td>ちんれつ</td>\r\n			<td>★★★</td>\r\n			<td>trưng b&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>転換</td>\r\n			<td>てんかん</td>\r\n			<td>★★★</td>\r\n			<td>chuyển đổi, thay đổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>転勤</td>\r\n			<td>てんきん</td>\r\n			<td>★★★</td>\r\n			<td>đổi chỗ l&agrave;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>展示</td>\r\n			<td>てんじ</td>\r\n			<td>★★★</td>\r\n			<td>Trưng b&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>認識</td>\r\n			<td>にんしき</td>\r\n			<td>★★★</td>\r\n			<td>Nhận thức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>燃焼</td>\r\n			<td>ねんしょう</td>\r\n			<td>★★★</td>\r\n			<td>đốt ch&aacute;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>繁栄</td>\r\n			<td>はんえい</td>\r\n			<td>★★★</td>\r\n			<td>phồn vinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>反射</td>\r\n			<td>はんしゃ</td>\r\n			<td>★★★</td>\r\n			<td>phản xạ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>繁盛</td>\r\n			<td>はんじょう</td>\r\n			<td>★★★</td>\r\n			<td>phồn thịnh, thịnh vượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>繁殖</td>\r\n			<td>はんしょく</td>\r\n			<td>★★★</td>\r\n			<td>phồn thực, sinh s&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>反応</td>\r\n			<td>はんのう</td>\r\n			<td>★★★</td>\r\n			<td>phản ứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>反発</td>\r\n			<td>はんぱつ</td>\r\n			<td>★★★</td>\r\n			<td>cự tuyệt, khước từ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>憤慨</td>\r\n			<td>ふんがい</td>\r\n			<td>★★★</td>\r\n			<td>phẫn uất, căm phẫn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>分析</td>\r\n			<td>ぶんせき</td>\r\n			<td>★★★</td>\r\n			<td>ph&acirc;n t&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>紛争</td>\r\n			<td>ふんそう</td>\r\n			<td>★★★</td>\r\n			<td>ph&acirc;n tranh, tranh chấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>分離</td>\r\n			<td>ぶんり</td>\r\n			<td>★★★</td>\r\n			<td>ph&acirc;n ly</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>返還</td>\r\n			<td>へんかん</td>\r\n			<td>★★★</td>\r\n			<td>hoản trả, trả lại, trở về</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>返却</td>\r\n			<td>へんきゃく</td>\r\n			<td>★★★</td>\r\n			<td>trả lại, ho&agrave;n trả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>返済</td>\r\n			<td>へんさい</td>\r\n			<td>★★★</td>\r\n			<td>trả tiền, thanh to&aacute;n tiền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>変遷</td>\r\n			<td>へんせん</td>\r\n			<td>★★★</td>\r\n			<td>biến thi&ecirc;n, thăng trầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>返答</td>\r\n			<td>へんとう</td>\r\n			<td>★★★</td>\r\n			<td>trả lời, hồi&nbsp;&acirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>乱用</td>\r\n			<td>らんよう</td>\r\n			<td>★★★</td>\r\n			<td>lạm dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>連帯</td>\r\n			<td>れんたい</td>\r\n			<td>★★★</td>\r\n			<td>li&ecirc;n đới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>暗殺</td>\r\n			<td>あんさつ</td>\r\n			<td>★★</td>\r\n			<td>&aacute;m s&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>演出</td>\r\n			<td>えんしゅつ</td>\r\n			<td>★★</td>\r\n			<td>diễn xuất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>還元</td>\r\n			<td>かんげん</td>\r\n			<td>★★</td>\r\n			<td>trả lại như cũ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>換算</td>\r\n			<td>かんさん</td>\r\n			<td>★★</td>\r\n			<td>ho&aacute;n đổi, đổi đơn vị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>監視</td>\r\n			<td>かんし</td>\r\n			<td>★★</td>\r\n			<td>gi&aacute;m s&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>勧誘</td>\r\n			<td>かんゆう</td>\r\n			<td>★★</td>\r\n			<td>rủ r&ecirc;, mời ch&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>観覧</td>\r\n			<td>かんらん</td>\r\n			<td>★★</td>\r\n			<td>tham quan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>勤務</td>\r\n			<td>きんむ</td>\r\n			<td>★★</td>\r\n			<td>l&agrave;m việc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>兼業</td>\r\n			<td>けんぎょう</td>\r\n			<td>★★</td>\r\n			<td>ki&ecirc;m nhiệm nghề thứ hai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>減少</td>\r\n			<td>げんしょう</td>\r\n			<td>★★</td>\r\n			<td>giảm thiểu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>限定</td>\r\n			<td>げんてい</td>\r\n			<td>★★</td>\r\n			<td>hạn định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>倹約</td>\r\n			<td>けんやく</td>\r\n			<td>★★</td>\r\n			<td>tiết kiệm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>混同</td>\r\n			<td>こんどう</td>\r\n			<td>★★</td>\r\n			<td>lẫn lộn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>賛美</td>\r\n			<td>さんび</td>\r\n			<td>★★</td>\r\n			<td>t&aacute;n dương, ca tụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>侵略</td>\r\n			<td>しんりゃく</td>\r\n			<td>★★</td>\r\n			<td>x&acirc;m lược</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>診療</td>\r\n			<td>しんりょう</td>\r\n			<td>★★</td>\r\n			<td>kh&aacute;m chữa bệnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>選挙</td>\r\n			<td>せんきょ</td>\r\n			<td>★★</td>\r\n			<td>bầu cử</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>戦闘</td>\r\n			<td>せんとう</td>\r\n			<td>★★</td>\r\n			<td>chiến đấu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>潜入</td>\r\n			<td>せんにゅう</td>\r\n			<td>★★</td>\r\n			<td>th&acirc;m nhập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>占領</td>\r\n			<td>せんりょう</td>\r\n			<td>★★</td>\r\n			<td>chiếm l&atilde;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>損失</td>\r\n			<td>そんしつ</td>\r\n			<td>★★</td>\r\n			<td>tổn thất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>団結</td>\r\n			<td>だんけつ</td>\r\n			<td>★★</td>\r\n			<td>đo&agrave;n kết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>沈殿</td>\r\n			<td>ちんでん</td>\r\n			<td>★★</td>\r\n			<td>lắng xuống, kết tủa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>沈没</td>\r\n			<td>ちんぼつ</td>\r\n			<td>★★</td>\r\n			<td>ch&igrave;m xuống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>転居</td>\r\n			<td>てんきょ</td>\r\n			<td>★★</td>\r\n			<td>chuyển chỗ ở</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>点検</td>\r\n			<td>てんけん</td>\r\n			<td>★★</td>\r\n			<td>kiểm tra chi tiết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>伝言</td>\r\n			<td>でんごん</td>\r\n			<td>★★</td>\r\n			<td>lời nhắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>伝達</td>\r\n			<td>でんたつ</td>\r\n			<td>★★</td>\r\n			<td>truyền đạt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>展望</td>\r\n			<td>てんぼう</td>\r\n			<td>★★</td>\r\n			<td>triển vọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>念願</td>\r\n			<td>ねんがん</td>\r\n			<td>★★</td>\r\n			<td>t&acirc;m nguyện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>反響</td>\r\n			<td>はんきょう</td>\r\n			<td>★★</td>\r\n			<td>&acirc;m vang, tiếng vang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>反撃</td>\r\n			<td>はんげき</td>\r\n			<td>★★</td>\r\n			<td>phản k&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>判定</td>\r\n			<td>はんてい</td>\r\n			<td>★★</td>\r\n			<td>ph&aacute;n đo&aacute;n v&agrave; quyết định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>氾濫</td>\r\n			<td>はんらん</td>\r\n			<td>★★</td>\r\n			<td>tr&agrave;n lan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>紛失</td>\r\n			<td>ふんしつ</td>\r\n			<td>★★</td>\r\n			<td>l&agrave;m mất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>噴出</td>\r\n			<td>ふんしゅつ</td>\r\n			<td>★★</td>\r\n			<td>phun tr&agrave;o (n&uacute;i lửa)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>分担</td>\r\n			<td>ぶんたん</td>\r\n			<td>★★</td>\r\n			<td>g&aacute;nh v&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>奮闘</td>\r\n			<td>ふんとう</td>\r\n			<td>★★</td>\r\n			<td>phấn đấu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>分配</td>\r\n			<td>ぶんぱい</td>\r\n			<td>★★</td>\r\n			<td>ph&acirc;n phối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>分裂</td>\r\n			<td>ぶんれつ</td>\r\n			<td>★★</td>\r\n			<td>chia rẽ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>変革</td>\r\n			<td>へんかく</td>\r\n			<td>★★</td>\r\n			<td>cải c&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>弁護</td>\r\n			<td>べんご</td>\r\n			<td>★★</td>\r\n			<td>biện hộ, b&agrave;o chữa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>弁償</td>\r\n			<td>べんしょう</td>\r\n			<td>★★</td>\r\n			<td>Bồi thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>免除</td>\r\n			<td>めんじょ</td>\r\n			<td>★★</td>\r\n			<td>miễn (nghĩa vụ, học ph&iacute;,&hellip;)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>論議</td>\r\n			<td>ろんぎ</td>\r\n			<td>★★</td>\r\n			<td>nghị luận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>引率</td>\r\n			<td>いんそつ</td>\r\n			<td>★</td>\r\n			<td>dẫn dắt, hướng dẫn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>隠蔽</td>\r\n			<td>いんぺい</td>\r\n			<td>★</td>\r\n			<td>giấu giếm, che đậy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>延滞</td>\r\n			<td>えんたい</td>\r\n			<td>★</td>\r\n			<td>trễ hạn, trả chậm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>管轄</td>\r\n			<td>かんかつ</td>\r\n			<td>★</td>\r\n			<td>quản hạt, cai quản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>緊迫</td>\r\n			<td>きんぱく</td>\r\n			<td>★</td>\r\n			<td>khẩn trương, cấp b&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>牽引</td>\r\n			<td>けんいん</td>\r\n			<td>★</td>\r\n			<td>l&ocirc;i k&eacute;o, ch&egrave;o k&eacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>嫌悪</td>\r\n			<td>けんお</td>\r\n			<td>★</td>\r\n			<td>o&aacute;n gh&eacute;t, o&aacute;n hận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>検索</td>\r\n			<td>けんさく</td>\r\n			<td>★</td>\r\n			<td>t&igrave;m kiếm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>梱包</td>\r\n			<td>こんぽう</td>\r\n			<td>★</td>\r\n			<td>bao bọc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>山積</td>\r\n			<td>さんせき</td>\r\n			<td>★</td>\r\n			<td>chất đống như n&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>順応</td>\r\n			<td>じゅんのう</td>\r\n			<td>★</td>\r\n			<td>th&iacute;ch nghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>尋問</td>\r\n			<td>じんもん</td>\r\n			<td>★</td>\r\n			<td>tra hỏi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>尽力</td>\r\n			<td>じんりょく</td>\r\n			<td>★</td>\r\n			<td>tận lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>占拠</td>\r\n			<td>せんきょ</td>\r\n			<td>★</td>\r\n			<td>chiếm cứ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>損傷</td>\r\n			<td>そんしょう</td>\r\n			<td>★</td>\r\n			<td>tổn thương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>127</td>\r\n			<td>担保</td>\r\n			<td>たんぽ</td>\r\n			<td>★</td>\r\n			<td>đảm bảo, khoản thế chấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>128</td>\r\n			<td>賃貸</td>\r\n			<td>ちんたい</td>\r\n			<td>★</td>\r\n			<td>cho thu&ecirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>129</td>\r\n			<td>添削</td>\r\n			<td>てんさく</td>\r\n			<td>★</td>\r\n			<td>sửa chữa bằng c&aacute;ch th&ecirc;m hay bớt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>130</td>\r\n			<td>添付</td>\r\n			<td>てんぷ</td>\r\n			<td>★</td>\r\n			<td>đ&iacute;nh k&egrave;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>131</td>\r\n			<td>転覆</td>\r\n			<td>てんぷく</td>\r\n			<td>★</td>\r\n			<td>lật &uacute;p lại, đ&aacute;nh đổ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>132</td>\r\n			<td>難航</td>\r\n			<td>なんこう</td>\r\n			<td>★</td>\r\n			<td>chuyến đi biển kh&oacute; khăn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>133</td>\r\n			<td>忍耐</td>\r\n			<td>にんたい</td>\r\n			<td>★</td>\r\n			<td>nhẫn nại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>134</td>\r\n			<td>頒布</td>\r\n			<td>はんぷ</td>\r\n			<td>★</td>\r\n			<td>ph&acirc;n bổ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>135</td>\r\n			<td>便乗</td>\r\n			<td>びんじょう</td>\r\n			<td>★</td>\r\n			<td>thừa cơ hội</td>\r\n		</tr>\r\n		<tr>\r\n			<td>136</td>\r\n			<td>頻発</td>\r\n			<td>ひんぱつ</td>\r\n			<td>★</td>\r\n			<td>li&ecirc;n tục xảy ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>137</td>\r\n			<td>分岐</td>\r\n			<td>ぶんき</td>\r\n			<td>★</td>\r\n			<td>chia nh&aacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>138</td>\r\n			<td>紛糾</td>\r\n			<td>ふんきゅう</td>\r\n			<td>★</td>\r\n			<td>hỗn loạn, lộn xộn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>139</td>\r\n			<td>噴射</td>\r\n			<td>ふんしゃ</td>\r\n			<td>★</td>\r\n			<td>phun ra, thải ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>140</td>\r\n			<td>奮発</td>\r\n			<td>ふんぱつ</td>\r\n			<td>★</td>\r\n			<td>gắng sức, thết đ&atilde;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>141</td>\r\n			<td>乱発</td>\r\n			<td>らんぱつ</td>\r\n			<td>★</td>\r\n			<td>ph&aacute;t h&agrave;nh tr&agrave;n lan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>142</td>\r\n			<td>連携</td>\r\n			<td>れんけい</td>\r\n			<td>★</td>\r\n			<td>hợp t&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>143</td>\r\n			<td>連覇</td>\r\n			<td>れんぱ</td>\r\n			<td>★</td>\r\n			<td>chiến thắng li&ecirc;n tiếp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>144</td>\r\n			<td>連敗</td>\r\n			<td>れんぱい</td>\r\n			<td>★</td>\r\n			<td>thất bại li&ecirc;n tiếp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>145</td>\r\n			<td>連発</td>\r\n			<td>れんぱつ</td>\r\n			<td>★</td>\r\n			<td>ph&aacute;t ra li&ecirc;n tục</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0);
INSERT INTO `giao_trinh_bai` (`id`, `giao_trinh_id`, `name`, `image`, `content`, `show_img`) VALUES
(18, 3, 'Bài 05', '', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>印鑑</td>\r\n			<td>いんかん</td>\r\n			<td>★★★</td>\r\n			<td>con dấu, c&aacute;i triện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>印象</td>\r\n			<td>いんしょう</td>\r\n			<td>★★★</td>\r\n			<td>ấn tượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>観客</td>\r\n			<td>かんきゃく</td>\r\n			<td>★★★</td>\r\n			<td>kh&aacute;ch tham quan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>歓声</td>\r\n			<td>かんせい</td>\r\n			<td>★★★</td>\r\n			<td>h&eacute;t l&ecirc;n sung sướng, reo h&ograve;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>関税</td>\r\n			<td>かんぜい</td>\r\n			<td>★★★</td>\r\n			<td>thuế quan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>幹部</td>\r\n			<td>かんぶ</td>\r\n			<td>★★★</td>\r\n			<td>\r\n			<p>Người đứng đầu, người cấp cao</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>元来</td>\r\n			<td>がんらい</td>\r\n			<td>★★★</td>\r\n			<td>ngay từ đầu, vốn dĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>慣例</td>\r\n			<td>かんれい</td>\r\n			<td>★★★</td>\r\n			<td>th&oacute;i quen, tục lệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>還暦</td>\r\n			<td>かんれき</td>\r\n			<td>★★★</td>\r\n			<td>hoa gi&aacute;p, sinh nhật 60 tuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>緊急</td>\r\n			<td>きんきゅう</td>\r\n			<td>★★★</td>\r\n			<td>khẩn cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>近郊</td>\r\n			<td>きんこう</td>\r\n			<td>★★★</td>\r\n			<td>v&ugrave;ng l&acirc;n cận, ngoại &ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>禁物</td>\r\n			<td>きんもつ</td>\r\n			<td>★★★</td>\r\n			<td>điều ki&ecirc;ng tr&aacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>権威</td>\r\n			<td>けんい</td>\r\n			<td>★★★</td>\r\n			<td>quyền uy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>言動</td>\r\n			<td>げんどう</td>\r\n			<td>★★★</td>\r\n			<td>lời n&oacute;i v&agrave; h&agrave;nh động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>権力</td>\r\n			<td>けんりょく</td>\r\n			<td>★★★</td>\r\n			<td>quyền lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>根拠</td>\r\n			<td>こんきょ</td>\r\n			<td>★★★</td>\r\n			<td>căn cứ, chứng cứ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>昆虫</td>\r\n			<td>こんちゅう</td>\r\n			<td>★★★</td>\r\n			<td>c&ocirc;n tr&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>根底</td>\r\n			<td>こんてい</td>\r\n			<td>★★★</td>\r\n			<td>căn cơ, nền tảng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>山岳</td>\r\n			<td>さんがく</td>\r\n			<td>★★★</td>\r\n			<td>n&uacute;i non</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>山腹</td>\r\n			<td>さんぷく</td>\r\n			<td>★★★</td>\r\n			<td>sườn n&uacute;i, sườn dốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>神経</td>\r\n			<td>しんけい</td>\r\n			<td>★★★</td>\r\n			<td>thần kinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>人材</td>\r\n			<td>じんざい</td>\r\n			<td>★★★</td>\r\n			<td>nguồn nh&acirc;n lực, người c&oacute; t&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>信者</td>\r\n			<td>しんじゃ</td>\r\n			<td>★★★</td>\r\n			<td>t&iacute;n đồ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>真珠</td>\r\n			<td>しんじゅ</td>\r\n			<td>★★★</td>\r\n			<td>tr&acirc;n ch&acirc;u, ch&acirc;u b&aacute;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>親善</td>\r\n			<td>しんぜん</td>\r\n			<td>★★★</td>\r\n			<td>hữu nghị, th&acirc;n t&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>真相</td>\r\n			<td>しんそう</td>\r\n			<td>★★★</td>\r\n			<td>ch&acirc;n tướng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>神秘</td>\r\n			<td>しんぴ</td>\r\n			<td>★★★</td>\r\n			<td>thần b&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>繊維</td>\r\n			<td>せんい</td>\r\n			<td>★★★</td>\r\n			<td>sợi, chất xơ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>全盛</td>\r\n			<td>ぜんせい</td>\r\n			<td>★★★</td>\r\n			<td>cực thịnh, tột đỉnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>前途</td>\r\n			<td>ぜんと</td>\r\n			<td>★★★</td>\r\n			<td>tương lai, tiền đồ, đoạn đường ph&iacute;a trước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>船舶</td>\r\n			<td>せんぱく</td>\r\n			<td>★★★</td>\r\n			<td>t&agrave;u thuyền, t&agrave;u biển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>単一</td>\r\n			<td>たんいつ</td>\r\n			<td>★★★</td>\r\n			<td>chỉ c&oacute; một, duy nhất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>断面</td>\r\n			<td>だんめん</td>\r\n			<td>★★★</td>\r\n			<td>mặt cắt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>賃金</td>\r\n			<td>ちんぎん</td>\r\n			<td>★★★</td>\r\n			<td>tiền c&ocirc;ng, th&ugrave; lao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>典型</td>\r\n			<td>てんけい</td>\r\n			<td>★★★</td>\r\n			<td>điển h&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>犯罪</td>\r\n			<td>はんざい</td>\r\n			<td>★★★</td>\r\n			<td>phạm tội</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>万人</td>\r\n			<td>ばんにん</td>\r\n			<td>★★★</td>\r\n			<td>nhiều người, mọi người</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>万能</td>\r\n			<td>ばんのう</td>\r\n			<td>★★★</td>\r\n			<td>vạn năng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>品種</td>\r\n			<td>ひんしゅ</td>\r\n			<td>★★★</td>\r\n			<td>chủng loại, lo&agrave;i, giới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>貧乏</td>\r\n			<td>びんぼう</td>\r\n			<td>★★★</td>\r\n			<td>ngh&egrave;o n&agrave;n, bần c&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>便宜</td>\r\n			<td>べんぎ</td>\r\n			<td>★★★</td>\r\n			<td>tiện nghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>偏見</td>\r\n			<td>へんけん</td>\r\n			<td>★★★</td>\r\n			<td>th&agrave;nh kiến, nh&igrave;n lệch lạc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>本名</td>\r\n			<td>ほんみょう</td>\r\n			<td>★★★</td>\r\n			<td>t&ecirc;n thật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>慢性</td>\r\n			<td>まんせい</td>\r\n			<td>★★★</td>\r\n			<td>m&atilde;n t&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>面目</td>\r\n			<td>めんぼく</td>\r\n			<td>★★★</td>\r\n			<td>bộ mặt, danh dự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>連日</td>\r\n			<td>れんじつ</td>\r\n			<td>★★★</td>\r\n			<td>nhiều ng&agrave;y liền, ng&agrave;y ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>運輸</td>\r\n			<td>うんゆ</td>\r\n			<td>★★</td>\r\n			<td>chuy&ecirc;n chở, vận tải</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>沿岸</td>\r\n			<td>えんがん</td>\r\n			<td>★★</td>\r\n			<td>bờ biển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>縁談</td>\r\n			<td>えんだん</td>\r\n			<td>★★</td>\r\n			<td>chuyện cưới sinh, lời cầu h&ocirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>観衆</td>\r\n			<td>かんしゅう</td>\r\n			<td>★★</td>\r\n			<td>người xem, kh&aacute;n giả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>感触</td>\r\n			<td>かんしょく</td>\r\n			<td>★★</td>\r\n			<td>cảm x&uacute;c, cảm gi&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>岩石</td>\r\n			<td>がんせき</td>\r\n			<td>★★</td>\r\n			<td>nham thạch, đ&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>慣用</td>\r\n			<td>かんよう</td>\r\n			<td>★★</td>\r\n			<td>thường d&ugrave;ng, quen d&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>官僚</td>\r\n			<td>かんりょう</td>\r\n			<td>★★</td>\r\n			<td>c&ocirc;ng chức, quan lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>貫禄</td>\r\n			<td>かんろく</td>\r\n			<td>★★</td>\r\n			<td>oai nghi&ecirc;m, đường bệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>勤労</td>\r\n			<td>きんろう</td>\r\n			<td>★★</td>\r\n			<td>l&agrave;m việc chăm chỉ, lao động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>軍備</td>\r\n			<td>ぐんび</td>\r\n			<td>★★</td>\r\n			<td>qu&acirc;n bị, trang bị qu&acirc;n sự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>権限</td>\r\n			<td>けんげん</td>\r\n			<td>★★</td>\r\n			<td>quyền hạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>健在</td>\r\n			<td>けんざい</td>\r\n			<td>★★</td>\r\n			<td>sống khỏe mạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>原子</td>\r\n			<td>げんし</td>\r\n			<td>★★</td>\r\n			<td>nguy&ecirc;n tử</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>元首</td>\r\n			<td>げんしゅ</td>\r\n			<td>★★</td>\r\n			<td>nguy&ecirc;n thủ, người đứng đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>懸賞</td>\r\n			<td>けんしょう</td>\r\n			<td>★★</td>\r\n			<td>giải thưởng, phần thưởng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>元素</td>\r\n			<td>げんそ</td>\r\n			<td>★★</td>\r\n			<td>nguy&ecirc;n tố</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>原典</td>\r\n			<td>げんてん</td>\r\n			<td>★★</td>\r\n			<td>nguy&ecirc;n bản, bản gốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>根本</td>\r\n			<td>こんぽん</td>\r\n			<td>★★</td>\r\n			<td>căn bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>山頂</td>\r\n			<td>さんちょう</td>\r\n			<td>★★</td>\r\n			<td>đỉnh n&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>山脈</td>\r\n			<td>さんみゃく</td>\r\n			<td>★★</td>\r\n			<td>d&atilde;y n&uacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>人格</td>\r\n			<td>じんかく</td>\r\n			<td>★★</td>\r\n			<td>nh&acirc;n c&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>新興</td>\r\n			<td>しんこう</td>\r\n			<td>★★</td>\r\n			<td>mới phất l&ecirc;n, mới nổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>紳士</td>\r\n			<td>しんし</td>\r\n			<td>★★</td>\r\n			<td>qu&yacute; &ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>人体</td>\r\n			<td>じんたい</td>\r\n			<td>★★</td>\r\n			<td>cơ thể người</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>神殿</td>\r\n			<td>しんでん</td>\r\n			<td>★★</td>\r\n			<td>điện thờ thần</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>信念</td>\r\n			<td>しんねん</td>\r\n			<td>★★</td>\r\n			<td>tin tưởng kh&ocirc;ng ch&uacute;t nghi ngờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>前提</td>\r\n			<td>ぜんてい</td>\r\n			<td>★★</td>\r\n			<td>tiền đề</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>担架</td>\r\n			<td>たんか</td>\r\n			<td>★★</td>\r\n			<td>c&aacute;i c&aacute;ng (khi&ecirc;ng người bệnh,...)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>炭素</td>\r\n			<td>たんそ</td>\r\n			<td>★★</td>\r\n			<td>c&aacute;c-bon</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>単独</td>\r\n			<td>たんどく</td>\r\n			<td>★★</td>\r\n			<td>đơn độc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>弾力</td>\r\n			<td>だんりょく</td>\r\n			<td>★★</td>\r\n			<td>lực đ&agrave;n hồi, sức nảy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>人情</td>\r\n			<td>にんじょう</td>\r\n			<td>★★</td>\r\n			<td>t&igrave;nh người</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>任務</td>\r\n			<td>にんむ</td>\r\n			<td>★★</td>\r\n			<td>nhiệm vụ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>燃料</td>\r\n			<td>ねんりょう</td>\r\n			<td>★★</td>\r\n			<td>nhi&ecirc;n liệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>晩年</td>\r\n			<td>ばんねん</td>\r\n			<td>★★</td>\r\n			<td>tuổi xế chiều, năm cuối đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>貧血</td>\r\n			<td>ひんけつ</td>\r\n			<td>★★</td>\r\n			<td>thiếu m&aacute;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>品質</td>\r\n			<td>ひんしつ</td>\r\n			<td>★★</td>\r\n			<td>chất lượng sản phẩm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>分母</td>\r\n			<td>ぶんぼ</td>\r\n			<td>★★</td>\r\n			<td>mẫu số (to&aacute;n)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>粉末</td>\r\n			<td>ふんまつ</td>\r\n			<td>★★</td>\r\n			<td>bột, hạt mịn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>弁論</td>\r\n			<td>べんろん</td>\r\n			<td>★★</td>\r\n			<td>h&ugrave;ng biện, diễn thuyết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>民俗</td>\r\n			<td>みんぞく</td>\r\n			<td>★★</td>\r\n			<td>tập tục d&acirc;n gian</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>恋愛</td>\r\n			<td>れんあい</td>\r\n			<td>★★</td>\r\n			<td>t&igrave;nh y&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>暗黙</td>\r\n			<td>あんもく</td>\r\n			<td>★</td>\r\n			<td>thầm lặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>因縁</td>\r\n			<td>いんねん</td>\r\n			<td>★</td>\r\n			<td>nh&acirc;n duy&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>陰謀</td>\r\n			<td>いんぼう</td>\r\n			<td>★</td>\r\n			<td>&acirc;m mưu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>運勢</td>\r\n			<td>うんせい</td>\r\n			<td>★</td>\r\n			<td>vận thế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>沿革</td>\r\n			<td>えんかく</td>\r\n			<td>★</td>\r\n			<td>đổi kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>遠隔</td>\r\n			<td>えんかく</td>\r\n			<td>★</td>\r\n			<td>c&aacute;ch xa nhau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>冤罪</td>\r\n			<td>えんざい</td>\r\n			<td>★</td>\r\n			<td>oan sai, h&agrave;m oan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>炎症</td>\r\n			<td>えんしょう</td>\r\n			<td>★</td>\r\n			<td>chứng vi&ecirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>音響</td>\r\n			<td>おんきょう</td>\r\n			<td>★</td>\r\n			<td>&acirc;m hưởng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>寒気</td>\r\n			<td>かんき</td>\r\n			<td>★</td>\r\n			<td>độ lạnh, hơi lạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>緩急</td>\r\n			<td>かんきゅう</td>\r\n			<td>★</td>\r\n			<td>nguy cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>間隙</td>\r\n			<td>かんげき</td>\r\n			<td>★</td>\r\n			<td>khe hở, lơ đễnh, bất h&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>鑑定</td>\r\n			<td>かんてい</td>\r\n			<td>★</td>\r\n			<td>đ&aacute;nh gi&aacute;, gi&aacute;m định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>勲章</td>\r\n			<td>くんしょう</td>\r\n			<td>★</td>\r\n			<td>hu&acirc;n chương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>圏外</td>\r\n			<td>けんがい</td>\r\n			<td>★</td>\r\n			<td>ngo&agrave;i v&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>見識</td>\r\n			<td>けんしき</td>\r\n			<td>★</td>\r\n			<td>khả năng nh&igrave;n nhận, nhận thức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>拳銃</td>\r\n			<td>けんじゅう</td>\r\n			<td>★</td>\r\n			<td>s&uacute;ng lục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>根性</td>\r\n			<td>こんじょう</td>\r\n			<td>★</td>\r\n			<td>bản t&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>痕跡</td>\r\n			<td>こんせき</td>\r\n			<td>★</td>\r\n			<td>vết t&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>暫定</td>\r\n			<td>ざんてい</td>\r\n			<td>★</td>\r\n			<td>tạm thời, l&acirc;m thời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>瞬時</td>\r\n			<td>しゅんじ</td>\r\n			<td>★</td>\r\n			<td>khoảnh khắc, trong nh&aacute;y mắt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>新鋭</td>\r\n			<td>しんえい</td>\r\n			<td>★</td>\r\n			<td>mới v&agrave; giỏi, tinh nhuệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>震災</td>\r\n			<td>しんさい</td>\r\n			<td>★</td>\r\n			<td>thảm họa động đất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>親睦</td>\r\n			<td>しんぼく</td>\r\n			<td>★</td>\r\n			<td>th&acirc;n thiết, th&acirc;n t&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>新米</td>\r\n			<td>しんまい</td>\r\n			<td>★</td>\r\n			<td>gạo mới, người mới, mới ch&acirc;n ướt ch&acirc;n r&aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>新緑</td>\r\n			<td>しんりょく</td>\r\n			<td>★</td>\r\n			<td>c&acirc;y cỏ xanh tươi, tươi trẻ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>寸前</td>\r\n			<td>すんぜん</td>\r\n			<td>★</td>\r\n			<td>gần, su&yacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>前兆</td>\r\n			<td>ぜんちょう</td>\r\n			<td>★</td>\r\n			<td>triệu chứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>尊厳</td>\r\n			<td>そんげん</td>\r\n			<td>★</td>\r\n			<td>t&ocirc;n nghi&ecirc;m, uy nghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>端緒</td>\r\n			<td>たんしょ／たんちょ</td>\r\n			<td>★</td>\r\n			<td>gợi &yacute;, manh mối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>暖冬</td>\r\n			<td>だんとう</td>\r\n			<td>★</td>\r\n			<td>m&ugrave;a đ&ocirc;ng ấm &aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>点呼</td>\r\n			<td>てんこ</td>\r\n			<td>★</td>\r\n			<td>điểm danh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>天秤</td>\r\n			<td>てんびん</td>\r\n			<td>★</td>\r\n			<td>c&aacute;i c&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>難関</td>\r\n			<td>なんかん</td>\r\n			<td>★</td>\r\n			<td>chướng ngại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>頻度</td>\r\n			<td>ひんど</td>\r\n			<td>★</td>\r\n			<td>tần suất, tần số</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>頻繁</td>\r\n			<td>ひんぱん</td>\r\n			<td>★</td>\r\n			<td>tấp nập, tần suất d&agrave;y đặc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>貧富</td>\r\n			<td>ひんぷ</td>\r\n			<td>★</td>\r\n			<td>gi&agrave;u v&agrave; ngh&egrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>127</td>\r\n			<td>免疫</td>\r\n			<td>めんえき</td>\r\n			<td>★</td>\r\n			<td>miễn dịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>128</td>\r\n			<td>面識</td>\r\n			<td>めんしき</td>\r\n			<td>★</td>\r\n			<td>gặp gỡ, gặp mặt nhau, quen biết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>129</td>\r\n			<td>欄外</td>\r\n			<td>らんがい</td>\r\n			<td>★</td>\r\n			<td>m&eacute;p, lề, r&igrave;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>130</td>\r\n			<td>倫理</td>\r\n			<td>りんり</td>\r\n			<td>★</td>\r\n			<td>đạo l&yacute;, đạo đức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>131</td>\r\n			<td>湾岸</td>\r\n			<td>わんがん</td>\r\n			<td>★</td>\r\n			<td>bờ vịnh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(19, 3, 'Bài 06', '', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>影響</td>\r\n			<td>えいきょう</td>\r\n			<td>★★★</td>\r\n			<td>ảnh hưởng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>介護</td>\r\n			<td>かいご</td>\r\n			<td>★★★</td>\r\n			<td>chăm s&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>回収</td>\r\n			<td>かいしゅう</td>\r\n			<td>★★★</td>\r\n			<td>thu hồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>改修</td>\r\n			<td>かいしゅう</td>\r\n			<td>★★★</td>\r\n			<td>sửa sang, cải tiến, n&acirc;ng cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>解消</td>\r\n			<td>かいしょう</td>\r\n			<td>★★★</td>\r\n			<td>giải quyết, hủy bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>概説</td>\r\n			<td>がいせつ</td>\r\n			<td>★★★</td>\r\n			<td>kh&aacute;i qu&aacute;t, mi&ecirc;u tả chung, tổng quan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>改善</td>\r\n			<td>かいぜん</td>\r\n			<td>★★★</td>\r\n			<td>cải thiện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>開拓</td>\r\n			<td>かいたく</td>\r\n			<td>★★★</td>\r\n			<td>khai ph&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>該当</td>\r\n			<td>がいとう</td>\r\n			<td>★★★</td>\r\n			<td>th&iacute;ch hợp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>介入</td>\r\n			<td>かいにゅう</td>\r\n			<td>★★★</td>\r\n			<td>can thiệp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>介抱</td>\r\n			<td>かいほう</td>\r\n			<td>★★★</td>\r\n			<td>chăm s&oacute;c, chăm nom</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>警戒</td>\r\n			<td>けいかい</td>\r\n			<td>★★★</td>\r\n			<td>cảnh gi&aacute;c, đề ph&ograve;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>掲載</td>\r\n			<td>けいさい</td>\r\n			<td>★★★</td>\r\n			<td>đăng tải</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>継続</td>\r\n			<td>けいぞく</td>\r\n			<td>★★★</td>\r\n			<td>kế tục, tiếp tục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>携帯</td>\r\n			<td>けいたい</td>\r\n			<td>★★★</td>\r\n			<td>cầm theo, điện thoại di động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>契約</td>\r\n			<td>けいやく</td>\r\n			<td>★★★</td>\r\n			<td>hợp đồng, giao k&egrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>細工</td>\r\n			<td>さいく</td>\r\n			<td>★★★</td>\r\n			<td>t&aacute;c phẩm tinh xảo, thợ thủ c&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>採択</td>\r\n			<td>さいたく</td>\r\n			<td>★★★</td>\r\n			<td>tuyển lựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>栽培</td>\r\n			<td>さいばい</td>\r\n			<td>★★★</td>\r\n			<td>canh t&aacute;c, trồng trọt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>再発</td>\r\n			<td>さいはつ</td>\r\n			<td>★★★</td>\r\n			<td>t&aacute;i ph&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>推進</td>\r\n			<td>すいしん</td>\r\n			<td>★★★</td>\r\n			<td>th&uacute;c đẩy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>衰退</td>\r\n			<td>すいたい</td>\r\n			<td>★★★</td>\r\n			<td>suy tho&aacute;i, sa s&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>推理</td>\r\n			<td>すいり</td>\r\n			<td>★★★</td>\r\n			<td>suy luận, lập luận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>制限</td>\r\n			<td>せいげん</td>\r\n			<td>★★★</td>\r\n			<td>hạn chế, giới hạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>精算</td>\r\n			<td>せいさん</td>\r\n			<td>★★★</td>\r\n			<td>thanh to&aacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>盛装</td>\r\n			<td>せいそう</td>\r\n			<td>★★★</td>\r\n			<td>ăn mặc lộng lẫy, diện đồ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>対処</td>\r\n			<td>たいしょ</td>\r\n			<td>★★★</td>\r\n			<td>xử l&yacute; th&iacute;ch hợp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>追放</td>\r\n			<td>ついほう</td>\r\n			<td>★★★</td>\r\n			<td>xua đuổi, tống khứ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>提案</td>\r\n			<td>ていあん</td>\r\n			<td>★★★</td>\r\n			<td>đề &aacute;n, đề xuất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>定義</td>\r\n			<td>ていぎ</td>\r\n			<td>★★★</td>\r\n			<td>định nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>提供</td>\r\n			<td>ていきょう</td>\r\n			<td>★★★</td>\r\n			<td>cung cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>提携</td>\r\n			<td>ていけい</td>\r\n			<td>★★★</td>\r\n			<td>hợp t&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>抵抗</td>\r\n			<td>ていこう</td>\r\n			<td>★★★</td>\r\n			<td>kh&aacute;ng cự, trở kh&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>停滞</td>\r\n			<td>ていたい</td>\r\n			<td>★★★</td>\r\n			<td>đ&igrave;nh trệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>廃棄</td>\r\n			<td>はいき</td>\r\n			<td>★★★</td>\r\n			<td>vứt bỏ, hủy bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>配慮</td>\r\n			<td>はいりょ</td>\r\n			<td>★★★</td>\r\n			<td>quan t&acirc;m, chăm s&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>閉鎖</td>\r\n			<td>へいさ</td>\r\n			<td>★★★</td>\r\n			<td>đ&oacute;ng cửa, phong tỏa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>類似</td>\r\n			<td>るいじ</td>\r\n			<td>★★★</td>\r\n			<td>giống nhau, tương tự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>類推</td>\r\n			<td>るいすい</td>\r\n			<td>★★★</td>\r\n			<td>loại suy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>改革</td>\r\n			<td>かいかく</td>\r\n			<td>★★</td>\r\n			<td>cải c&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>開催</td>\r\n			<td>かいさい</td>\r\n			<td>★★</td>\r\n			<td>tổ chức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>解除</td>\r\n			<td>かいじょ</td>\r\n			<td>★★</td>\r\n			<td>hủy bỏ, b&atilde;i bỏ, triệt ti&ecirc;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>解剖</td>\r\n			<td>かいぼう</td>\r\n			<td>★★</td>\r\n			<td>giải phẫu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>回覧</td>\r\n			<td>かいらん</td>\r\n			<td>★★</td>\r\n			<td>chuyền tay nhau xem</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>経過</td>\r\n			<td>けいか</td>\r\n			<td>★★</td>\r\n			<td>tr&ocirc;i qua, qu&aacute; độ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>軽減</td>\r\n			<td>けいげん</td>\r\n			<td>★★</td>\r\n			<td>giảm nhẹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>傾斜</td>\r\n			<td>けいしゃ</td>\r\n			<td>★★</td>\r\n			<td>hướng nghi&ecirc;ng, dốc xuống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>軽蔑</td>\r\n			<td>けいべつ</td>\r\n			<td>★★</td>\r\n			<td>khinh miệt, coi thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>採掘</td>\r\n			<td>さいくつ</td>\r\n			<td>★★</td>\r\n			<td>khai th&aacute;c mỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>採決</td>\r\n			<td>さいけつ</td>\r\n			<td>★★</td>\r\n			<td>bỏ phiếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>再建</td>\r\n			<td>さいけん</td>\r\n			<td>★★</td>\r\n			<td>x&acirc;y dựng lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>吹奏</td>\r\n			<td>すいそう</td>\r\n			<td>★★</td>\r\n			<td>tr&igrave;nh diễn nhạc cụ thổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>推測</td>\r\n			<td>すいそく</td>\r\n			<td>★★</td>\r\n			<td>suy đo&aacute;n, ước đo&aacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>静止</td>\r\n			<td>せいし</td>\r\n			<td>★★</td>\r\n			<td>bất động, tĩnh lặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>成熟</td>\r\n			<td>せいじゅく</td>\r\n			<td>★★</td>\r\n			<td>trưởng th&agrave;nh, ch&iacute;n muồi, th&agrave;nh thục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>制定</td>\r\n			<td>せいてい</td>\r\n			<td>★★</td>\r\n			<td>thiết lập, ban h&agrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>征服</td>\r\n			<td>せいふく</td>\r\n			<td>★★</td>\r\n			<td>chinh phục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>整列</td>\r\n			<td>せいれつ</td>\r\n			<td>★★</td>\r\n			<td>xếp th&agrave;nh h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>退化</td>\r\n			<td>たいか</td>\r\n			<td>★★</td>\r\n			<td>tho&aacute;i h&oacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>体験</td>\r\n			<td>たいけん</td>\r\n			<td>★★</td>\r\n			<td>trải nghiệm, kinh nghiệm bản th&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>対抗</td>\r\n			<td>たいこう</td>\r\n			<td>★★</td>\r\n			<td>đối kh&aacute;ng, chống đối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>退治</td>\r\n			<td>たいじ</td>\r\n			<td>★★</td>\r\n			<td>dọn sạch, triệt ph&aacute;, chữa l&agrave;nh bệnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>退職</td>\r\n			<td>たいしょく</td>\r\n			<td>★★</td>\r\n			<td>nghỉ việc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>滞納</td>\r\n			<td>たいのう</td>\r\n			<td>★★</td>\r\n			<td>thanh to&aacute;n chậm , khất nợ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>対比</td>\r\n			<td>たいひ</td>\r\n			<td>★★</td>\r\n			<td>so s&aacute;nh đối chiếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>代弁</td>\r\n			<td>だいべん</td>\r\n			<td>★★</td>\r\n			<td>n&oacute;i thay, đại diện n&oacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>待望</td>\r\n			<td>たいぼう</td>\r\n			<td>★★</td>\r\n			<td>mong chờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>追求</td>\r\n			<td>ついきゅう</td>\r\n			<td>★★</td>\r\n			<td>t&igrave;m kiếm, mưu cầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>追跡</td>\r\n			<td>ついせき</td>\r\n			<td>★★</td>\r\n			<td>lần theo, truy đuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>墜落</td>\r\n			<td>ついらく</td>\r\n			<td>★★</td>\r\n			<td>rơi từ tr&ecirc;n cao xuống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>提示</td>\r\n			<td>ていじ</td>\r\n			<td>★★</td>\r\n			<td>rơi từ tr&ecirc;n cao xuống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>訂正</td>\r\n			<td>ていせい</td>\r\n			<td>★★</td>\r\n			<td>đ&iacute;nh ch&iacute;nh, sửa lại chỗ sai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>配給</td>\r\n			<td>はいきゅう</td>\r\n			<td>★★</td>\r\n			<td>cấp ph&aacute;t, ph&acirc;n ph&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>廃止</td>\r\n			<td>はいし</td>\r\n			<td>★★</td>\r\n			<td>b&atilde;i bỏ, thủ ti&ecirc;u, phế bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>拝借</td>\r\n			<td>はいしゃく</td>\r\n			<td>★★</td>\r\n			<td>mượn (khi&ecirc;m tốn)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>排除</td>\r\n			<td>はいじょ</td>\r\n			<td>★★</td>\r\n			<td>b&agrave;i trừ, thủ ti&ecirc;u, loại bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>賠償</td>\r\n			<td>ばいしょう</td>\r\n			<td>★★</td>\r\n			<td>bồi thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>排水</td>\r\n			<td>はいすい</td>\r\n			<td>★★</td>\r\n			<td>ti&ecirc;u nước, tho&aacute;t nước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>配置</td>\r\n			<td>はいち</td>\r\n			<td>★★</td>\r\n			<td>b&agrave;y tr&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>配布</td>\r\n			<td>はいふ</td>\r\n			<td>★★</td>\r\n			<td>ph&acirc;n ph&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>敗北</td>\r\n			<td>はいぼく</td>\r\n			<td>★★</td>\r\n			<td>ph&acirc;n ph&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>配列</td>\r\n			<td>はいれつ</td>\r\n			<td>★★</td>\r\n			<td>xếp theo trật tự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>閉口</td>\r\n			<td>へいこう</td>\r\n			<td>★★</td>\r\n			<td>kh&ocirc;ng chịu nổi, n&iacute;n lặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>並列</td>\r\n			<td>へいれつ</td>\r\n			<td>★★</td>\r\n			<td>song song, ngang h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>埋蔵</td>\r\n			<td>まいぞう</td>\r\n			<td>★★</td>\r\n			<td>ch&ocirc;n cất, ch&ocirc;n lấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>命中</td>\r\n			<td>めいちゅう</td>\r\n			<td>★★</td>\r\n			<td>nhắm mục ti&ecirc;u, c&uacute; đ&aacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>解雇</td>\r\n			<td>かいこ</td>\r\n			<td>★</td>\r\n			<td>đuổi việc, sa thải</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>回顧</td>\r\n			<td>かいこ</td>\r\n			<td>★</td>\r\n			<td>hồi tưởng, quay lại ph&iacute;a sau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>概算</td>\r\n			<td>がいさん</td>\r\n			<td>★</td>\r\n			<td>ước t&iacute;nh sơ bộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>解消</td>\r\n			<td>かいしょう</td>\r\n			<td>★</td>\r\n			<td>giải quyết, hủy bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>改築</td>\r\n			<td>かいちく</td>\r\n			<td>★</td>\r\n			<td>x&acirc;y lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>回避</td>\r\n			<td>かいひ</td>\r\n			<td>★</td>\r\n			<td>tr&aacute;nh n&eacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>開封</td>\r\n			<td>かいふう</td>\r\n			<td>★</td>\r\n			<td>mở bao thư, thư bị mở</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>開幕</td>\r\n			<td>かいまく</td>\r\n			<td>★</td>\r\n			<td>khai mạc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>迎合</td>\r\n			<td>げいごう</td>\r\n			<td>★</td>\r\n			<td>chiều &yacute; người kh&aacute;c, lấy l&ograve;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>継承</td>\r\n			<td>けいしょう</td>\r\n			<td>★</td>\r\n			<td>thừa kế, thừa tự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>傾倒</td>\r\n			<td>けいとう</td>\r\n			<td>★</td>\r\n			<td>tận tụy, hết l&ograve;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>掲揚</td>\r\n			<td>けいよう</td>\r\n			<td>★</td>\r\n			<td>giương cao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>裁決</td>\r\n			<td>さいけつ</td>\r\n			<td>★</td>\r\n			<td>t&agrave;i ph&aacute;n, ph&acirc;n xử</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>採取</td>\r\n			<td>さいしゅ</td>\r\n			<td>★</td>\r\n			<td>thu gặt, r&uacute;t ra, chiết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>采配</td>\r\n			<td>さいはい</td>\r\n			<td>★</td>\r\n			<td>gậy chỉ huy, ra lệnh, điều khiển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>推敲</td>\r\n			<td>すいこう</td>\r\n			<td>★</td>\r\n			<td>gọt giũa sắp xếp (c&acirc;u chữ)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>遂行</td>\r\n			<td>すいこう</td>\r\n			<td>★</td>\r\n			<td>ho&agrave;n th&agrave;nh (nhiệm vụ)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>衰弱</td>\r\n			<td>すいじゃく</td>\r\n			<td>★</td>\r\n			<td>suy nhược, suy yếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>推奨</td>\r\n			<td>すいしょう</td>\r\n			<td>★</td>\r\n			<td>t&aacute;n dương, ca ngợi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>制御</td>\r\n			<td>せいぎょ</td>\r\n			<td>★</td>\r\n			<td>chế ngự, kiềm chế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>整頓</td>\r\n			<td>せいとん</td>\r\n			<td>★</td>\r\n			<td>xếp gọn g&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>制覇</td>\r\n			<td>せいは</td>\r\n			<td>★</td>\r\n			<td>vượt trội, v&ocirc; địch, thống trị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>誓約</td>\r\n			<td>せいやく</td>\r\n			<td>★</td>\r\n			<td>thề ước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>待機</td>\r\n			<td>たいき</td>\r\n			<td>★</td>\r\n			<td>chờ đợi, chờ sẵn, đợi thời cơ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>退却</td>\r\n			<td>たいきゃく</td>\r\n			<td>★</td>\r\n			<td>r&uacute;t lui, lui binh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>対称</td>\r\n			<td>たいしょう</td>\r\n			<td>★</td>\r\n			<td>đối xứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>堆積</td>\r\n			<td>たいせき</td>\r\n			<td>★</td>\r\n			<td>chất chồng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>退廃</td>\r\n			<td>たいはい</td>\r\n			<td>★</td>\r\n			<td>tho&aacute;i h&oacute;a, suy đồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>追憶</td>\r\n			<td>ついおく</td>\r\n			<td>★</td>\r\n			<td>nhớ lại chuyện xưa, ho&agrave;i niệm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>追突</td>\r\n			<td>ついとつ</td>\r\n			<td>★</td>\r\n			<td>va chạm ph&iacute;a sau, t&ocirc;ng từ sau xe</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>締結</td>\r\n			<td>ていけつ</td>\r\n			<td>★</td>\r\n			<td>buộc chặt, k&iacute; kết (hợp đồng,...)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>抵触</td>\r\n			<td>ていしょく</td>\r\n			<td>★</td>\r\n			<td>vi phạm, xung đột</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>提訴</td>\r\n			<td>ていそ</td>\r\n			<td>★</td>\r\n			<td>khởi kiện, kiện ra t&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>定着</td>\r\n			<td>ていちゃく</td>\r\n			<td>★</td>\r\n			<td>được thiết lập, b&aacute;m chặt, định h&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>低迷</td>\r\n			<td>ていめい</td>\r\n			<td>★</td>\r\n			<td>suy sụp, đi xuống, ti&ecirc;u điều</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>内臓</td>\r\n			<td>ないぞう</td>\r\n			<td>★</td>\r\n			<td>nội tạng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>媒介</td>\r\n			<td>ばいかい</td>\r\n			<td>★</td>\r\n			<td>m&ocirc;i giới, l&agrave;m trung gian</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>売却</td>\r\n			<td>ばいきゃく</td>\r\n			<td>★</td>\r\n			<td>b&aacute;n ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>買収</td>\r\n			<td>ばいしゅう</td>\r\n			<td>★</td>\r\n			<td>mua v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>排出</td>\r\n			<td>はいしゅつ</td>\r\n			<td>★</td>\r\n			<td>thải ra ngo&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>127</td>\r\n			<td>廃絶</td>\r\n			<td>はいぜつ</td>\r\n			<td>★</td>\r\n			<td>loại bỏ, thải trừ, th&aacute;o ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>128</td>\r\n			<td>倍増</td>\r\n			<td>ばいぞう</td>\r\n			<td>★</td>\r\n			<td>tăng gấp đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>129</td>\r\n			<td>配属</td>\r\n			<td>はいぞく</td>\r\n			<td>★</td>\r\n			<td>điều phối, bổ nhiệm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>130</td>\r\n			<td>拝聴</td>\r\n			<td>はいちょう</td>\r\n			<td>★</td>\r\n			<td>nghe (khi&ecirc;m tốn)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>131</td>\r\n			<td>培養</td>\r\n			<td>ばいよう</td>\r\n			<td>★</td>\r\n			<td>bồi dưỡng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>132</td>\r\n			<td>併記</td>\r\n			<td>へいき</td>\r\n			<td>★</td>\r\n			<td>viết k&egrave;m theo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>133</td>\r\n			<td>累積</td>\r\n			<td>るいせき</td>\r\n			<td>★</td>\r\n			<td>t&iacute;ch lũy, lũy t&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>134</td>\r\n			<td>冷却</td>\r\n			<td>れいきゃく</td>\r\n			<td>★</td>\r\n			<td>l&agrave;m lạnh, ướp lạnh, nguội lạnh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0);
INSERT INTO `giao_trinh_bai` (`id`, `giao_trinh_id`, `name`, `image`, `content`, `show_img`) VALUES
(20, 3, 'Bài 07', '', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>愛想</td>\r\n			<td>あいそ／あいそう</td>\r\n			<td>★★★</td>\r\n			<td>c&oacute; cảm t&igrave;nh, l&agrave;m người kh&aacute;c vui, &yacute; tốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>栄養</td>\r\n			<td>えいよう</td>\r\n			<td>★★★</td>\r\n			<td>dinh dưỡng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>海峡</td>\r\n			<td>かいきょう</td>\r\n			<td>★★★</td>\r\n			<td>eo biển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>怪獣</td>\r\n			<td>かいじゅう</td>\r\n			<td>★★★</td>\r\n			<td>qu&aacute;i th&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>街頭</td>\r\n			<td>がいとう</td>\r\n			<td>★★★</td>\r\n			<td>tr&ecirc;n phố, tr&ecirc;n đường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>概念</td>\r\n			<td>がいねん</td>\r\n			<td>★★★</td>\r\n			<td>kh&aacute;i niệm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>経緯</td>\r\n			<td>けいい</td>\r\n			<td>★★★</td>\r\n			<td>ngang dọc, kinh độ v&agrave; vĩ độ, l&yacute; do</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>形勢</td>\r\n			<td>けいせい</td>\r\n			<td>★★★</td>\r\n			<td>t&igrave;nh thế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>形態</td>\r\n			<td>けいたい</td>\r\n			<td>★★★</td>\r\n			<td>h&igrave;nh thể</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>刑罰</td>\r\n			<td>けいばつ</td>\r\n			<td>★★★</td>\r\n			<td>h&igrave;nh phạt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>災害</td>\r\n			<td>さいがい</td>\r\n			<td>★★★</td>\r\n			<td>thảm họa, tai họa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>細菌</td>\r\n			<td>さいきん</td>\r\n			<td>★★★</td>\r\n			<td>vi khuẩn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>採算</td>\r\n			<td>さいさん</td>\r\n			<td>★★★</td>\r\n			<td>c&acirc;n đối thu chi, lợi nhuận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>細胞</td>\r\n			<td>さいぼう</td>\r\n			<td>★★★</td>\r\n			<td>tế b&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>睡眠</td>\r\n			<td>すいみん</td>\r\n			<td>★★★</td>\r\n			<td>ngủ nghỉ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>誠意</td>\r\n			<td>せいい</td>\r\n			<td>★★★</td>\r\n			<td>th&agrave;nh &yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>正規</td>\r\n			<td>せいき</td>\r\n			<td>★★★</td>\r\n			<td>ch&iacute;nh thức, ch&iacute;nh quy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>政策</td>\r\n			<td>せいさく</td>\r\n			<td>★★★</td>\r\n			<td>ch&iacute;nh s&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>正常</td>\r\n			<td>せいじょう</td>\r\n			<td>★★★</td>\r\n			<td>trạng th&aacute;i b&igrave;nh thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>制服</td>\r\n			<td>せいふく</td>\r\n			<td>★★★</td>\r\n			<td>đồng phục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>待遇</td>\r\n			<td>たいぐう</td>\r\n			<td>★★★</td>\r\n			<td>đ&atilde;i ngộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>態勢</td>\r\n			<td>たいせい</td>\r\n			<td>★★★</td>\r\n			<td>tư thế sẵn s&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>邸宅</td>\r\n			<td>ていたく</td>\r\n			<td>★★★</td>\r\n			<td>biệt thự, khu nh&agrave; lớn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>内臓</td>\r\n			<td>ないぞう</td>\r\n			<td>★★★</td>\r\n			<td>nội tạng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>拝啓</td>\r\n			<td>はいけい</td>\r\n			<td>★★★</td>\r\n			<td>k&iacute;nh gửi (lời mở đầu l&aacute; thư)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>背景</td>\r\n			<td>はいけい</td>\r\n			<td>★★★</td>\r\n			<td>bối cảnh, ph&ocirc;ng nền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>俳優</td>\r\n			<td>はいゆう</td>\r\n			<td>★★★</td>\r\n			<td>diễn vi&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>迷信</td>\r\n			<td>めいしん</td>\r\n			<td>★★★</td>\r\n			<td>m&ecirc; t&iacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>名簿</td>\r\n			<td>めいぼ</td>\r\n			<td>★★★</td>\r\n			<td>danh bạ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>名誉</td>\r\n			<td>めいよ</td>\r\n			<td>★★★</td>\r\n			<td>danh dự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>映写</td>\r\n			<td>えいしゃ</td>\r\n			<td>★★</td>\r\n			<td>tr&igrave;nh chiếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>衛星</td>\r\n			<td>えいせい</td>\r\n			<td>★★</td>\r\n			<td>vệ tinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>映像</td>\r\n			<td>えいぞう</td>\r\n			<td>★★</td>\r\n			<td>h&igrave;nh ảnh, cảnh phim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>英雄</td>\r\n			<td>えいゆう</td>\r\n			<td>★★</td>\r\n			<td>anh h&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>階層</td>\r\n			<td>かいそう</td>\r\n			<td>★★</td>\r\n			<td>giai cấp, tầng lớp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>街道</td>\r\n			<td>かいどう</td>\r\n			<td>★★</td>\r\n			<td>con đường (k&egrave;m sau t&ecirc;n đường)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>海抜</td>\r\n			<td>かいばつ</td>\r\n			<td>★★</td>\r\n			<td>độ cao so với mặt nước biển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>概要</td>\r\n			<td>がいよう</td>\r\n			<td>★★</td>\r\n			<td>kh&aacute;i qu&aacute;t, nội dung ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>概略</td>\r\n			<td>がいりゃく</td>\r\n			<td>★★</td>\r\n			<td>t&oacute;m lược, sơ lược</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>契機</td>\r\n			<td>けいき</td>\r\n			<td>★★</td>\r\n			<td>nguy&ecirc;n do, động cơ, cơ hội</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>経費</td>\r\n			<td>けいひ</td>\r\n			<td>★★</td>\r\n			<td>kinh ph&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>警部</td>\r\n			<td>けいぶ</td>\r\n			<td>★★</td>\r\n			<td>vi&ecirc;n thanh tra cảnh s&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>経歴</td>\r\n			<td>けいれき</td>\r\n			<td>★★</td>\r\n			<td>qu&aacute; tr&igrave;nh l&agrave;m việc, l&yacute; lịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>財源</td>\r\n			<td>ざいげん</td>\r\n			<td>★★</td>\r\n			<td>nguồn t&agrave;i ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>在庫</td>\r\n			<td>ざいこ</td>\r\n			<td>★★</td>\r\n			<td>c&ograve;n trong kho, c&ograve;n h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>財政</td>\r\n			<td>ざいせい</td>\r\n			<td>★★</td>\r\n			<td>t&agrave;i ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>最善</td>\r\n			<td>さいぜん</td>\r\n			<td>★★</td>\r\n			<td>tốt nhất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>水源</td>\r\n			<td>すいげん</td>\r\n			<td>★★</td>\r\n			<td>nguồn nước</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>政権</td>\r\n			<td>せいけん</td>\r\n			<td>★★</td>\r\n			<td>quyền lực ch&iacute;nh trị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>制裁</td>\r\n			<td>せいさい</td>\r\n			<td>★★</td>\r\n			<td>chế t&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>青春</td>\r\n			<td>せいしゅん</td>\r\n			<td>★★</td>\r\n			<td>thanh xu&acirc;n, tuổi trẻ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>製鉄</td>\r\n			<td>せいてつ</td>\r\n			<td>★★</td>\r\n			<td>sản xuất sắt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>勢力</td>\r\n			<td>せいりょく</td>\r\n			<td>★★</td>\r\n			<td>thế lực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>大家</td>\r\n			<td>たいか</td>\r\n			<td>★★</td>\r\n			<td>người c&oacute; thanh danh, nh&agrave; lớn, người gi&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>大衆</td>\r\n			<td>たいしゅう</td>\r\n			<td>★★</td>\r\n			<td>đại ch&uacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>対等</td>\r\n			<td>たいとう</td>\r\n			<td>★★</td>\r\n			<td>đối đẳng, ngang nhau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>体裁</td>\r\n			<td>ていさい</td>\r\n			<td>★★</td>\r\n			<td>ngoại h&igrave;nh, định dạng, thể diện, tr&igrave;nh b&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>堤防</td>\r\n			<td>ていぼう</td>\r\n			<td>★★</td>\r\n			<td>đ&ecirc; điều, ph&ograve;ng bị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>内閣</td>\r\n			<td>ないかく</td>\r\n			<td>★★</td>\r\n			<td>nội c&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>内緒</td>\r\n			<td>ないしょ</td>\r\n			<td>★★</td>\r\n			<td>b&iacute; mật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>内陸</td>\r\n			<td>ないりく</td>\r\n			<td>★★</td>\r\n			<td>đất liền, nội địa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>黴菌</td>\r\n			<td>ばいきん</td>\r\n			<td>★★</td>\r\n			<td>vi khuẩn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>倍率</td>\r\n			<td>ばいりつ</td>\r\n			<td>★★</td>\r\n			<td>vi sinh vật c&oacute; hại g&acirc;y bệnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>兵器</td>\r\n			<td>へいき</td>\r\n			<td>★★</td>\r\n			<td>binh kh&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>平常</td>\r\n			<td>へいじょう</td>\r\n			<td>★★</td>\r\n			<td>b&igrave;nh thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>名称</td>\r\n			<td>めいしょう</td>\r\n			<td>★★</td>\r\n			<td>danh xưng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>栄誉</td>\r\n			<td>えいよ</td>\r\n			<td>★</td>\r\n			<td>vinh dự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>街灯</td>\r\n			<td>がいとう</td>\r\n			<td>★</td>\r\n			<td>đ&egrave;n đường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>怪物</td>\r\n			<td>かいぶつ</td>\r\n			<td>★</td>\r\n			<td>qu&aacute;i vật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>渓谷</td>\r\n			<td>けいこく</td>\r\n			<td>★</td>\r\n			<td>hẻm vực, thung lũng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>警報</td>\r\n			<td>けいほう</td>\r\n			<td>★</td>\r\n			<td>cảnh b&aacute;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>債権</td>\r\n			<td>さいけん</td>\r\n			<td>★</td>\r\n			<td>quyền lợi c&oacute; được, số tiền thu nhận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>際限</td>\r\n			<td>さいげん</td>\r\n			<td>★</td>\r\n			<td>giới hạn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>妻子</td>\r\n			<td>さいし</td>\r\n			<td>★</td>\r\n			<td>vợ con</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>在籍</td>\r\n			<td>ざいせき</td>\r\n			<td>★</td>\r\n			<td>c&oacute; trong danh s&aacute;ch, được ghi v&agrave;o sổ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>罪人</td>\r\n			<td>ざいにん</td>\r\n			<td>★</td>\r\n			<td>tội phạm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>財閥</td>\r\n			<td>ざいばつ</td>\r\n			<td>★</td>\r\n			<td>t&agrave;i phiệt, người gi&agrave;u</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>歳末</td>\r\n			<td>さいまつ</td>\r\n			<td>★</td>\r\n			<td>cuối năm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>債務</td>\r\n			<td>さいむ</td>\r\n			<td>★</td>\r\n			<td>nghĩa vụ phải l&agrave;m, t&agrave;i khoản nợ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>裁量</td>\r\n			<td>さいりょう</td>\r\n			<td>★</td>\r\n			<td>tự &yacute; định đoạt, t&ugrave;y nghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>随一</td>\r\n			<td>ずいいち</td>\r\n			<td>★</td>\r\n			<td>nhất, c&aacute;i đầu ti&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>随処</td>\r\n			<td>ずいしょ</td>\r\n			<td>★</td>\r\n			<td>khắp nơi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>聖域</td>\r\n			<td>せいいき</td>\r\n			<td>★</td>\r\n			<td>th&aacute;nh địa, nơi thờ thần (kh&ocirc;ng được x&acirc;m nhập)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>精鋭</td>\r\n			<td>せいえい</td>\r\n			<td>★</td>\r\n			<td>tinh nhuệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>声援</td>\r\n			<td>せいえん</td>\r\n			<td>★</td>\r\n			<td>reo h&ograve; cổ vũ, hoan h&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>税収</td>\r\n			<td>ぜいしゅう</td>\r\n			<td>★</td>\r\n			<td>thu nhập từ thuế, tiền thu thuế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>生態</td>\r\n			<td>せいたい</td>\r\n			<td>★</td>\r\n			<td>sinh th&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>歳暮</td>\r\n			<td>せいぼ</td>\r\n			<td>★</td>\r\n			<td>cuối năm, qu&agrave; cuối năm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>代案</td>\r\n			<td>だいあん</td>\r\n			<td>★</td>\r\n			<td>dự &aacute;n thay thế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>耐久</td>\r\n			<td>たいきゅう</td>\r\n			<td>★</td>\r\n			<td>vĩnh cửu, l&acirc;u d&agrave;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>胎児</td>\r\n			<td>たいじ</td>\r\n			<td>★</td>\r\n			<td>b&agrave;o thai, thai nhi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>耐熱</td>\r\n			<td>たいねつ</td>\r\n			<td>★</td>\r\n			<td>chịu nhiệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>大仏</td>\r\n			<td>だいぶつ</td>\r\n			<td>★</td>\r\n			<td>tượng Phật lớn (nổi tiếng ở Kamakura)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>追伸</td>\r\n			<td>ついしん</td>\r\n			<td>★</td>\r\n			<td>t&aacute;i b&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>廃墟</td>\r\n			<td>はいきょ</td>\r\n			<td>★</td>\r\n			<td>tan hoang, đổ n&aacute;t, t&agrave;n t&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>媒体</td>\r\n			<td>ばいたい</td>\r\n			<td>★</td>\r\n			<td>trung gian, thiết bị ghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>弊害</td>\r\n			<td>へいがい</td>\r\n			<td>★</td>\r\n			<td>tệ nạn, t&aacute;c hại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>弊社</td>\r\n			<td>へいしゃ</td>\r\n			<td>★</td>\r\n			<td>c&ocirc;ng ty ch&uacute;ng t&ocirc;i (khi&ecirc;m tốn)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>明細</td>\r\n			<td>めいさい</td>\r\n			<td>★</td>\r\n			<td>chi tiết, th&ocirc;ng số kĩ thuật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>命日</td>\r\n			<td>めいにち</td>\r\n			<td>★</td>\r\n			<td>ng&agrave;y giỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>迷路</td>\r\n			<td>めいろ</td>\r\n			<td>★</td>\r\n			<td>m&ecirc; cung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>雷雨</td>\r\n			<td>らいう</td>\r\n			<td>★</td>\r\n			<td>mưa c&oacute; sấm chớp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>霊魂</td>\r\n			<td>れいこん</td>\r\n			<td>★</td>\r\n			<td>linh hồn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>賄賂</td>\r\n			<td>わいろ</td>\r\n			<td>★</td>\r\n			<td>hối lộ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(21, 3, 'Bài 08', '', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>応募</td>\r\n			<td>おうぼ</td>\r\n			<td>★★★</td>\r\n			<td>ứng tuyển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>行為</td>\r\n			<td>こうい</td>\r\n			<td>★★★</td>\r\n			<td>h&agrave;nh vi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>後悔</td>\r\n			<td>こうかい</td>\r\n			<td>★★★</td>\r\n			<td>hối hận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>航海</td>\r\n			<td>こうかい</td>\r\n			<td>★★★</td>\r\n			<td>đi biển, h&agrave;ng hải</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>抗議</td>\r\n			<td>こうぎ</td>\r\n			<td>★★★</td>\r\n			<td>kh&aacute;ng nghị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>貢献</td>\r\n			<td>こうけん</td>\r\n			<td>★★★</td>\r\n			<td>cống hiến</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>交渉</td>\r\n			<td>こうしょう</td>\r\n			<td>★★★</td>\r\n			<td>đ&agrave;m ph&aacute;n, thương lượng, mồi quan hệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>向上</td>\r\n			<td>こうじょう</td>\r\n			<td>★★★</td>\r\n			<td>n&acirc;ng cao, tiến triển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>拘束</td>\r\n			<td>こうそく</td>\r\n			<td>★★★</td>\r\n			<td>b&oacute; buộc, bắt &eacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>購読</td>\r\n			<td>こうどく</td>\r\n			<td>★★★</td>\r\n			<td>đặt mua b&aacute;o ch&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>交付</td>\r\n			<td>こうふ</td>\r\n			<td>★★★</td>\r\n			<td>cấp ph&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>興奮</td>\r\n			<td>こうふん</td>\r\n			<td>★★★</td>\r\n			<td>hưng phấn, phấn kh&iacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>考慮</td>\r\n			<td>こうりょ</td>\r\n			<td>★★★</td>\r\n			<td>xem x&eacute;t, suy t&iacute;nh trước, c&acirc;n nhắc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>崇拝</td>\r\n			<td>すうはい</td>\r\n			<td>★★★</td>\r\n			<td>s&ugrave;ng b&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>捜査</td>\r\n			<td>そうさ</td>\r\n			<td>★★★</td>\r\n			<td>điều tra, d&ograve; x&eacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>創作</td>\r\n			<td>そうさく</td>\r\n			<td>★★★</td>\r\n			<td>s&aacute;ng t&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>捜索</td>\r\n			<td>そうさく</td>\r\n			<td>★★★</td>\r\n			<td>t&igrave;m kiếm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>装飾</td>\r\n			<td>そうしょく</td>\r\n			<td>★★★</td>\r\n			<td>trang sức, trang tr&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>想定</td>\r\n			<td>そうてい</td>\r\n			<td>★★★</td>\r\n			<td>giả định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>遭難</td>\r\n			<td>そうなん</td>\r\n			<td>★★★</td>\r\n			<td>gặp nạn (nguy hiểm đến t&iacute;nh mạng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>痛感</td>\r\n			<td>つうかん</td>\r\n			<td>★★★</td>\r\n			<td>cảm nhận s&acirc;u sắc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>同意</td>\r\n			<td>どうい</td>\r\n			<td>★★★</td>\r\n			<td>đồng &yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>統合</td>\r\n			<td>とうごう</td>\r\n			<td>★★★</td>\r\n			<td>hợp nhất, gom lại l&agrave;m một</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>倒産</td>\r\n			<td>とうさん</td>\r\n			<td>★★★</td>\r\n			<td>ph&aacute; sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>投資</td>\r\n			<td>とうし</td>\r\n			<td>★★★</td>\r\n			<td>đầu tư</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>統制</td>\r\n			<td>とうせい</td>\r\n			<td>★★★</td>\r\n			<td>thống trị, điều khiển, cai quản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>統率</td>\r\n			<td>とうそつ</td>\r\n			<td>★★★</td>\r\n			<td>thống l&atilde;nh, l&atilde;nh đạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>到達</td>\r\n			<td>とうたつ</td>\r\n			<td>★★★</td>\r\n			<td>đi đến</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>投入</td>\r\n			<td>とうにゅう</td>\r\n			<td>★★★</td>\r\n			<td>n&eacute;m v&agrave;o, đưa v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>導入</td>\r\n			<td>どうにゅう</td>\r\n			<td>★★★</td>\r\n			<td>c&agrave;i đặt (phần mềm), &aacute;p dụng v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>逃亡</td>\r\n			<td>とうぼう</td>\r\n			<td>★★★</td>\r\n			<td>đ&agrave;o tẩu, chạy trốn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>動揺</td>\r\n			<td>どうよう</td>\r\n			<td>★★★</td>\r\n			<td>dao động, mất b&igrave;nh tĩnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>登録</td>\r\n			<td>とうろく</td>\r\n			<td>★★★</td>\r\n			<td>đăng k&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>奉仕</td>\r\n			<td>ほうし</td>\r\n			<td>★★★</td>\r\n			<td>phụng sự, phục vụ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>防止</td>\r\n			<td>ぼうし</td>\r\n			<td>★★★</td>\r\n			<td>đề ph&ograve;ng, ngăn ngừa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>報道</td>\r\n			<td>ほうどう</td>\r\n			<td>★★★</td>\r\n			<td>quảng b&aacute;o, đưa tin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>飽和</td>\r\n			<td>ほうわ</td>\r\n			<td>★★★</td>\r\n			<td>b&atilde;o h&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>優先</td>\r\n			<td>ゆうせん</td>\r\n			<td>★★★</td>\r\n			<td>ưu ti&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>融通</td>\r\n			<td>ゆうずう</td>\r\n			<td>★★★</td>\r\n			<td>tiền cho vay, tiện nghi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>誘導</td>\r\n			<td>ゆうどう</td>\r\n			<td>★★★</td>\r\n			<td>dẫn dắt, cảm ứng điện từ, điều chế dẫn xuất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>誘惑</td>\r\n			<td>ゆうわく</td>\r\n			<td>★★★</td>\r\n			<td>dẫn dụ, dụ dỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>要請</td>\r\n			<td>ようせい</td>\r\n			<td>★★★</td>\r\n			<td>thỉnh cầu, cầu khẩn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>養成</td>\r\n			<td>ようせい</td>\r\n			<td>★★★</td>\r\n			<td>nu&ocirc;i dưỡng, vun bồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>老衰</td>\r\n			<td>ろうすい</td>\r\n			<td>★★★</td>\r\n			<td>gi&agrave; yếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>朗読</td>\r\n			<td>ろうどく</td>\r\n			<td>★★★</td>\r\n			<td>ng&acirc;m thơ, đọc th&agrave;nh tiếng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>浪費</td>\r\n			<td>ろうひ</td>\r\n			<td>★★★</td>\r\n			<td>l&atilde;ng ph&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>交易</td>\r\n			<td>こうえき</td>\r\n			<td>★★</td>\r\n			<td>giao thương, bu&ocirc;n b&aacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>耕作</td>\r\n			<td>こうさく</td>\r\n			<td>★★</td>\r\n			<td>canh t&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>控除</td>\r\n			<td>こうじょ</td>\r\n			<td>★★</td>\r\n			<td>khấu trừ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>抗争</td>\r\n			<td>こうそう</td>\r\n			<td>★★</td>\r\n			<td>kh&aacute;ng chiến, phản kh&aacute;ng, giao chiến</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>構想</td>\r\n			<td>こうそう</td>\r\n			<td>★★</td>\r\n			<td>cấu tứ, thai ngh&eacute;n trong đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>後退</td>\r\n			<td>こうたい</td>\r\n			<td>★★</td>\r\n			<td>lui về ph&iacute;a sau, thụt l&ugrave;i, suy yếu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>公認</td>\r\n			<td>こうにん</td>\r\n			<td>★★</td>\r\n			<td>c&ocirc;ng nhận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>荒廃</td>\r\n			<td>こうはい</td>\r\n			<td>★★</td>\r\n			<td>t&agrave;n ph&aacute;, hủy hoại, tồi t&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>購買</td>\r\n			<td>こうばい</td>\r\n			<td>★★</td>\r\n			<td>mua v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>増強</td>\r\n			<td>ぞうきょう</td>\r\n			<td>★★</td>\r\n			<td>gia tăng, tăng cường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>喪失</td>\r\n			<td>そうしつ</td>\r\n			<td>★★</td>\r\n			<td>đ&aacute;nh mất, l&agrave;m mất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>操縦</td>\r\n			<td>そうじゅう</td>\r\n			<td>★★</td>\r\n			<td>điều khiển, thao t&aacute;c, thao t&uacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>創造</td>\r\n			<td>そうぞう</td>\r\n			<td>★★</td>\r\n			<td>s&aacute;ng tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>装備</td>\r\n			<td>そうび</td>\r\n			<td>★★</td>\r\n			<td>trang bị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>統治</td>\r\n			<td>とうち</td>\r\n			<td>★★</td>\r\n			<td>thống trị, cai quản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>同封</td>\r\n			<td>どうふう</td>\r\n			<td>★★</td>\r\n			<td>gửi k&egrave;m, bỏ chung trong bao thư</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>冬眠</td>\r\n			<td>とうみん</td>\r\n			<td>★★</td>\r\n			<td>ngủ đ&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>同盟</td>\r\n			<td>どうめい</td>\r\n			<td>★★</td>\r\n			<td>đồng minh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>討論</td>\r\n			<td>とうろん</td>\r\n			<td>★★</td>\r\n			<td>thảo luận</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>納入</td>\r\n			<td>のうにゅう</td>\r\n			<td>★★</td>\r\n			<td>nộp, đ&oacute;ng (tiền, phẩm vật)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>封鎖</td>\r\n			<td>ふうさ</td>\r\n			<td>★★</td>\r\n			<td>phong tỏa, bao v&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>防衛</td>\r\n			<td>ぼうえい</td>\r\n			<td>★★</td>\r\n			<td>ph&ograve;ng vệ, ph&ograve;ng thủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>崩壊</td>\r\n			<td>ほうかい</td>\r\n			<td>★★</td>\r\n			<td>hủy hoại, sụp đổ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>妨害</td>\r\n			<td>ぼうがい</td>\r\n			<td>★★</td>\r\n			<td>phương hại, cản trở</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>放棄</td>\r\n			<td>ほうき</td>\r\n			<td>★★</td>\r\n			<td>vứt bỏ, chối bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>放射</td>\r\n			<td>ほうしゃ</td>\r\n			<td>★★</td>\r\n			<td>ph&oacute;ng xạ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>放出</td>\r\n			<td>ほうしゅつ</td>\r\n			<td>★★</td>\r\n			<td>ph&aacute;t ra, tỏa ra, ph&acirc;n ph&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>放置</td>\r\n			<td>ほうち</td>\r\n			<td>★★</td>\r\n			<td>để bừa b&atilde;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>膨張</td>\r\n			<td>ぼうちょう</td>\r\n			<td>★★</td>\r\n			<td>ph&igrave;nh to, ph&aacute;t triển lớn mạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>優越</td>\r\n			<td>ゆうえつ</td>\r\n			<td>★★</td>\r\n			<td>ưu việt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>融資</td>\r\n			<td>ゆうし</td>\r\n			<td>★★</td>\r\n			<td>cho vay vốn, khoản vay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>養護</td>\r\n			<td>ようご</td>\r\n			<td>★★</td>\r\n			<td>điều dưỡng, chăm s&oacute;c đặc biệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>要望</td>\r\n			<td>ようぼう</td>\r\n			<td>★★</td>\r\n			<td>mong mỏi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>押印</td>\r\n			<td>おういん</td>\r\n			<td>★</td>\r\n			<td>đ&oacute;ng dấu, đ&oacute;ng mộc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>押収</td>\r\n			<td>おうしゅう</td>\r\n			<td>★</td>\r\n			<td>tịch thu, sung c&ocirc;ng quỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>興行</td>\r\n			<td>こうぎょう</td>\r\n			<td>★</td>\r\n			<td>biễu diễn, giải tr&iacute;, buổi tr&igrave;nh diễn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>降参</td>\r\n			<td>こうさん</td>\r\n			<td>★</td>\r\n			<td>đầu h&agrave;ng, chịu khuất phục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>更新</td>\r\n			<td>こうしん</td>\r\n			<td>★</td>\r\n			<td>cập nhật, l&agrave;m mới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>控訴</td>\r\n			<td>こうそ</td>\r\n			<td>★</td>\r\n			<td>kh&aacute;ng c&aacute;o, chống &aacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>更迭</td>\r\n			<td>こうてつ</td>\r\n			<td>★</td>\r\n			<td>thay đổi người</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>高騰</td>\r\n			<td>こうとう</td>\r\n			<td>★</td>\r\n			<td>tăng vọt (gi&aacute; cả)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>攻略</td>\r\n			<td>こうりゃく</td>\r\n			<td>★</td>\r\n			<td>chiếm được, đ&aacute;nh bại, đoạt lấy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>遭遇</td>\r\n			<td>そうぐう</td>\r\n			<td>★</td>\r\n			<td>chạm tr&aacute;n, t&igrave;nh cờ gặp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>贈呈</td>\r\n			<td>ぞうてい</td>\r\n			<td>★</td>\r\n			<td>tặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>挿入</td>\r\n			<td>そうにゅう</td>\r\n			<td>★</td>\r\n			<td>ch&egrave;n, th&ecirc;m v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>贈与</td>\r\n			<td>ぞうよ</td>\r\n			<td>★</td>\r\n			<td>trao tặng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>投函</td>\r\n			<td>とうかん</td>\r\n			<td>★</td>\r\n			<td>gửi bưu điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>投棄</td>\r\n			<td>とうき</td>\r\n			<td>★</td>\r\n			<td>n&eacute;m bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>騰貴</td>\r\n			<td>とうき</td>\r\n			<td>★</td>\r\n			<td>tăng gi&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>凍結</td>\r\n			<td>とうけつ</td>\r\n			<td>★</td>\r\n			<td>đ&ocirc;ng cứng, đ&oacute;ng băng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>踏襲</td>\r\n			<td>とうしゅう</td>\r\n			<td>★</td>\r\n			<td>tu&acirc;n theo, trung th&agrave;nh với, gắn b&oacute; với</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>搭乗</td>\r\n			<td>とうじょう</td>\r\n			<td>★</td>\r\n			<td>l&ecirc;n (t&agrave;u thuyền, m&aacute;y bay)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>闘病</td>\r\n			<td>とうびょう</td>\r\n			<td>★</td>\r\n			<td>chiến đấu với bệnh tật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>当惑</td>\r\n			<td>とうわく</td>\r\n			<td>★</td>\r\n			<td>bối rối, l&uacute;ng t&uacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>防御</td>\r\n			<td>ぼうぎょ</td>\r\n			<td>★</td>\r\n			<td>ph&ograve;ng ngự</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>傍聴</td>\r\n			<td>ぼうちょう</td>\r\n			<td>★</td>\r\n			<td>ngồi nghe (kh&ocirc;ng được ph&aacute;t biểu), dự th&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>暴騰</td>\r\n			<td>ぼうとう</td>\r\n			<td>★</td>\r\n			<td>đột ngột tăng gi&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>網羅</td>\r\n			<td>もうら</td>\r\n			<td>★</td>\r\n			<td>phủ khắp, tr&oacute;i buộc, gom tất cả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>誘拐</td>\r\n			<td>ゆうかい</td>\r\n			<td>★</td>\r\n			<td>bắt c&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>優遇</td>\r\n			<td>ゆうぐう</td>\r\n			<td>★</td>\r\n			<td>đối xử tốt, hậu đ&atilde;i, ưu đ&atilde;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>融合</td>\r\n			<td>ゆうごう</td>\r\n			<td>★</td>\r\n			<td>nung chảy, hợp nhất lại, li&ecirc;n hiệp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>誘致</td>\r\n			<td>ゆうち</td>\r\n			<td>★</td>\r\n			<td>thu h&uacute;t, hấp dẫn, l&ocirc;i cuốn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>猶予</td>\r\n			<td>ゆうよ</td>\r\n			<td>★</td>\r\n			<td>ho&atilde;n thi h&agrave;nh, tr&igrave; ho&atilde;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>憂慮</td>\r\n			<td>ゆうりょ</td>\r\n			<td>★</td>\r\n			<td>lo lắng, cảm thấy bất an</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>養殖</td>\r\n			<td>ようしょく</td>\r\n			<td>★</td>\r\n			<td>nu&ocirc;i trồng thủy sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>漏洩</td>\r\n			<td>ろうえい</td>\r\n			<td>★</td>\r\n			<td>r&ograve; rỉ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>老朽</td>\r\n			<td>ろうきゅう</td>\r\n			<td>★</td>\r\n			<td>cũ kĩ, xuống cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>応急</td>\r\n			<td>おうきゅう</td>\r\n			<td>★★★</td>\r\n			<td>sơ cứu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>行為</td>\r\n			<td>こうい</td>\r\n			<td>★★★</td>\r\n			<td>h&agrave;nh vi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>洪水</td>\r\n			<td>こうずい</td>\r\n			<td>★★★</td>\r\n			<td>lũ lụt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>功績</td>\r\n			<td>こうせき</td>\r\n			<td>★★★</td>\r\n			<td>th&agrave;nh quả tốt, c&ocirc;ng trạng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>口頭</td>\r\n			<td>こうとう</td>\r\n			<td>★★★</td>\r\n			<td>bằng lời n&oacute;i, vấn đ&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>好評</td>\r\n			<td>こうひょう</td>\r\n			<td>★★★</td>\r\n			<td>đ&aacute;nh gi&aacute; tốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>行楽</td>\r\n			<td>こうらく</td>\r\n			<td>★★★</td>\r\n			<td>vui chơi, giải tr&iacute;, ti&ecirc;u khiển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>効率</td>\r\n			<td>こうりつ</td>\r\n			<td>★★★</td>\r\n			<td>hiệu suất, năng suất l&agrave;m việc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>高齢</td>\r\n			<td>こうれい</td>\r\n			<td>★★★</td>\r\n			<td>tuổi cao, lớn tuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>相応</td>\r\n			<td>そうおう</td>\r\n			<td>★★★</td>\r\n			<td>tương xứng, ph&ugrave; hợp, ứng với</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>騒音</td>\r\n			<td>そうおん</td>\r\n			<td>★★★</td>\r\n			<td>tiếng ồn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>相互</td>\r\n			<td>そうご</td>\r\n			<td>★★★</td>\r\n			<td>lẫn nhau, qua lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>通常</td>\r\n			<td>つうじょう</td>\r\n			<td>★★★</td>\r\n			<td>th&ocirc;ng thường, như thường lệ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>127</td>\r\n			<td>陶器</td>\r\n			<td>とうき</td>\r\n			<td>★★★</td>\r\n			<td>đồ gốm, đồ l&agrave;m bằng đất nung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>128</td>\r\n			<td>濃度</td>\r\n			<td>のうど</td>\r\n			<td>★★★</td>\r\n			<td>nồng độ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>129</td>\r\n			<td>防災</td>\r\n			<td>ぼうさい</td>\r\n			<td>★★★</td>\r\n			<td>ph&ograve;ng chống thi&ecirc;n tai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>130</td>\r\n			<td>冒頭</td>\r\n			<td>ぼうとう</td>\r\n			<td>★★★</td>\r\n			<td>phần m&agrave;o đầu, lời mở đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>131</td>\r\n			<td>優位</td>\r\n			<td>ゆうい</td>\r\n			<td>★★★</td>\r\n			<td>vị tr&iacute; tốt hơn, địa vị cao hơn, t&iacute;nh trội</td>\r\n		</tr>\r\n		<tr>\r\n			<td>132</td>\r\n			<td>優勢</td>\r\n			<td>ゆうせい</td>\r\n			<td>★★★</td>\r\n			<td>ưu thế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>133</td>\r\n			<td>幽霊</td>\r\n			<td>ゆうれい</td>\r\n			<td>★★★</td>\r\n			<td>vong linh, hồn ma</td>\r\n		</tr>\r\n		<tr>\r\n			<td>134</td>\r\n			<td>様相</td>\r\n			<td>ようそう</td>\r\n			<td>★★★</td>\r\n			<td>phương thức, m&ocirc; th&aacute;i, kh&iacute;a cạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>135</td>\r\n			<td>廊下</td>\r\n			<td>ろうか</td>\r\n			<td>★★★</td>\r\n			<td>h&agrave;nh lang, lối dẫn v&agrave;o trong nh&agrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>136</td>\r\n			<td>黄金</td>\r\n			<td>おうごん</td>\r\n			<td>★★</td>\r\n			<td>v&agrave;ng, bằng v&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>137</td>\r\n			<td>好況</td>\r\n			<td>こうきょう</td>\r\n			<td>★★</td>\r\n			<td>kinh tế ph&aacute;t triển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>138</td>\r\n			<td>興業</td>\r\n			<td>こうぎょう</td>\r\n			<td>★★</td>\r\n			<td>kh&ocirc;i phục sự nghiệp, chấn hưng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>139</td>\r\n			<td>鉱山</td>\r\n			<td>こうざん</td>\r\n			<td>★★</td>\r\n			<td>mỏ kho&aacute;ng sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>140</td>\r\n			<td>後半</td>\r\n			<td>こうはん</td>\r\n			<td>★★</td>\r\n			<td>nửa sau, hiệp sau</td>\r\n		</tr>\r\n		<tr>\r\n			<td>141</td>\r\n			<td>総合</td>\r\n			<td>そうごう</td>\r\n			<td>★★</td>\r\n			<td>tổng hợp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>142</td>\r\n			<td>騒動</td>\r\n			<td>そうどう</td>\r\n			<td>★★</td>\r\n			<td>n&aacute;o loạn, ẩu đả</td>\r\n		</tr>\r\n		<tr>\r\n			<td>143</td>\r\n			<td>動向</td>\r\n			<td>どうこう</td>\r\n			<td>★★</td>\r\n			<td>xu hướng, chiều hướng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>144</td>\r\n			<td>農耕</td>\r\n			<td>のうこう</td>\r\n			<td>★★</td>\r\n			<td>canh t&aacute;c n&ocirc;ng nghiệp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>145</td>\r\n			<td>風俗</td>\r\n			<td>ふうぞく</td>\r\n			<td>★★</td>\r\n			<td>phong tục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>146</td>\r\n			<td>法案</td>\r\n			<td>ほうあん</td>\r\n			<td>★★</td>\r\n			<td>luật dự thảo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>147</td>\r\n			<td>封建</td>\r\n			<td>ほうけん</td>\r\n			<td>★★</td>\r\n			<td>phong kiến</td>\r\n		</tr>\r\n		<tr>\r\n			<td>148</td>\r\n			<td>方策</td>\r\n			<td>ほうさく</td>\r\n			<td>★★</td>\r\n			<td>đối s&aacute;ch, phương s&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>149</td>\r\n			<td>豊作</td>\r\n			<td>ほうさく</td>\r\n			<td>★★</td>\r\n			<td>tr&uacute;ng m&ugrave;a, m&ugrave;a m&agrave;ng bội thu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>150</td>\r\n			<td>報酬</td>\r\n			<td>ほうしゅう</td>\r\n			<td>★★</td>\r\n			<td>th&ugrave; lao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>151</td>\r\n			<td>紡績</td>\r\n			<td>ぼうせき</td>\r\n			<td>★★</td>\r\n			<td>xe sợi, dệt sợi b&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>152</td>\r\n			<td>法廷</td>\r\n			<td>ほうてい</td>\r\n			<td>★★</td>\r\n			<td>t&ograve;a &aacute;n, ph&aacute;p đ&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>153</td>\r\n			<td>暴動</td>\r\n			<td>ぼうどう</td>\r\n			<td>★★</td>\r\n			<td>bạo động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>154</td>\r\n			<td>褒美</td>\r\n			<td>ほうび</td>\r\n			<td>★★</td>\r\n			<td>phần thưởng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>155</td>\r\n			<td>盲点</td>\r\n			<td>もうてん</td>\r\n			<td>★★</td>\r\n			<td>điểm m&ugrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>156</td>\r\n			<td>遊牧</td>\r\n			<td>ゆうぼく</td>\r\n			<td>★★</td>\r\n			<td>du mục</td>\r\n		</tr>\r\n		<tr>\r\n			<td>157</td>\r\n			<td>要因</td>\r\n			<td>よういん</td>\r\n			<td>★★</td>\r\n			<td>nguy&ecirc;n nh&acirc;n ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>158</td>\r\n			<td>溶液</td>\r\n			<td>ようえき</td>\r\n			<td>★★</td>\r\n			<td>dung dịch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>159</td>\r\n			<td>労力</td>\r\n			<td>ろうりょく</td>\r\n			<td>★★</td>\r\n			<td>sức lao động, lao động</td>\r\n		</tr>\r\n		<tr>\r\n			<td>160</td>\r\n			<td>偶像</td>\r\n			<td>ぐうぞう</td>\r\n			<td>★</td>\r\n			<td>tượng (Phật, thần,...), h&igrave;nh tượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>161</td>\r\n			<td>厚意</td>\r\n			<td>こうい</td>\r\n			<td>★</td>\r\n			<td>l&ograve;ng tốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>162</td>\r\n			<td>豪雨</td>\r\n			<td>ごうう</td>\r\n			<td>★</td>\r\n			<td>mưa to, mưa như tr&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>163</td>\r\n			<td>広報</td>\r\n			<td>こうほう</td>\r\n			<td>★</td>\r\n			<td>quảng b&aacute;, th&ocirc;ng b&aacute;o rộng r&atilde;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>164</td>\r\n			<td>謄本</td>\r\n			<td>とうほん</td>\r\n			<td>★</td>\r\n			<td>bản sao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>165</td>\r\n			<td>動脈</td>\r\n			<td>どうみゃく</td>\r\n			<td>★</td>\r\n			<td>động mạch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>166</td>\r\n			<td>脳裏</td>\r\n			<td>のうり</td>\r\n			<td>★</td>\r\n			<td>trong đầu, trong t&acirc;m tr&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>167</td>\r\n			<td>抱負</td>\r\n			<td>ほうふ</td>\r\n			<td>★</td>\r\n			<td>kh&aacute;t khao, ho&agrave;i b&atilde;o, ấp ủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>168</td>\r\n			<td>猛暑</td>\r\n			<td>もうしょ</td>\r\n			<td>★</td>\r\n			<td>n&oacute;ng kinh khủng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>169</td>\r\n			<td>容疑</td>\r\n			<td>ようぎ</td>\r\n			<td>★</td>\r\n			<td>t&igrave;nh nghi, ngờ vực</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh_bai_cau_hoi`
--

CREATE TABLE `giao_trinh_bai_cau_hoi` (
  `id` int(11) NOT NULL,
  `giao_trinh_bai_id` int(11) NOT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_dung` int(11) NOT NULL,
  `dap_an` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh_bai_cau_hoi`
--

INSERT INTO `giao_trinh_bai_cau_hoi` (`id`, `giao_trinh_bai_id`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `cau_dung`, `dap_an`, `dich`, `cau_hoi`) VALUES
(4, 3, 'ほじょ', 'ほうじょ', 'ぼじょ', 'ぼうじょ', 1, 'ほじょ', 'demo', '<p>彼には補助が必要だ。</p>\r\n'),
(5, 3, 'まひ', 'まふ', 'まび', 'まぶ', 1, 'まひ', '', '<p>あの政治家は金銭感覚が麻痺している。</p>\r\n'),
(6, 3, 'きく', 'きくう', 'きぐ', 'きぐう', 3, 'きぐ', '', '<p>社長は経営の悪化を危惧していた。</p>\r\n'),
(7, 3, 'きしょ', 'きしょう', 'きそ', 'きそう', 3, 'きそ', '', '<p>大物政治家が検察により起訴された。</p>\r\n'),
(8, 3, 'きょしゅ', 'きょじゅ', 'きょうしゅ', 'きょうじゅ', 1, 'きょしゅ', '', '<p>質問のある方は挙手をお願いします</p>\r\n'),
(9, 3, 'じふ', 'じふう', 'じぶ', 'じぶう', 1, 'じふ', '', '<p>彼は自らの才能を自負している、</p>\r\n'),
(10, 3, 'じゆ', 'じゆう', 'ちゆ', 'ちゆう', 3, 'ちゆ', '', '<p>彼の病気は自然に治癒した。</p>\r\n'),
(11, 3, 'こし', 'こうし', 'ごうじ', 'こじ', 4, 'こじ', '', '<p>彼は自らの才能を誇示した。</p>\r\n'),
(12, 3, 'さくき', 'さくぎ', 'さき', 'さぎ', 4, 'さぎ', '', '<p>彼は見知らぬ女性に声をかけられ、詐欺にあった。</p>\r\n'),
(13, 3, 'ちゃしょ', 'ちょしょ', 'ちゅうしょ', 'ちょうしょ', 2, 'ちょしょ', '', '<p>教授は自らの著書を図書館に寄贈した。</p>\r\n'),
(14, 3, 'きょい', 'きょうい', 'きょぎ', 'きょうぎ', 3, 'きょぎ', '', '<p>彼の証言は虚偽であった。</p>\r\n'),
(15, 3, 'ろち', 'ろじ', 'ろうち', 'ろうじ', 2, 'ろじ', '', '<p>彼の家は、入り組んで路地の奥にあった。</p>\r\n'),
(16, 4, 'きそ', 'きしょう', 'きぞう', 'きじょう', 3, 'きぞう', '', '<p>家電メーカーは被災地の施設にラジオを寄贈した。</p>\r\n'),
(17, 4, 'こぜつ', 'こうぜつ', 'きょぜつ', 'きょうぜつ', 3, 'きょぜつ', '', '<p>彼女は彼の申し入れを拒絶した。</p>\r\n'),
(18, 4, 'しょそく', 'しょぞく', 'じょそく', 'じょぞく', 2, 'しょぞく', '', '<p>彼は大学の映画研究部に所属している。</p>\r\n'),
(19, 4, 'たけつ', 'だけつ', 'たっけつ', 'だっけつ', 2, 'だけつ', '', '<p>ようやく労使交渉は妥結に至った。</p>\r\n'),
(20, 4, 'びそう', 'びしょう', 'ちょうそう', 'ちょうしょう', 2, 'びしょう', '', '<p>彼の表情に微笑が浮かんだ。</p>\r\n'),
(21, 4, 'ほかく', 'ほうかく', 'ほがく', 'ほうがく', 1, 'ほかく', '', '<p>鯨の捕獲は制限されている。</p>\r\n'),
(22, 4, 'ほそう', 'ほうそう', 'ほしょう', 'ほうしょう', 1, 'ほそう', '', '<p>道路の舗装工事が始まった。</p>\r\n'),
(23, 4, 'きかく', 'ききゃく', 'きこう', 'きごう', 2, 'ききゃく', '', '<p>彼の訴えは棄却された。</p>\r\n'),
(24, 4, 'こしつ', 'こちつ', 'こじつ', 'こじゅう', 1, 'こしつ', '', '<p>一つの考えに固執するのはよくない。</p>\r\n'),
(25, 4, 'しょたん', 'しゃたん', 'しょだん', 'しゃだん', 4, 'しゃだん', '', '<p>地震により首都圏の交通が一時的に遮断された。</p>\r\n'),
(26, 4, 'はしゅん', 'はじゅん', 'ひしゅん', 'ひじゅん', 4, 'ひじゅん', '', '<p>二国間で条約が批准された。</p>\r\n'),
(27, 4, 'けねん', 'けいねん', 'けんねん', 'げんねん', 1, 'けねん', '', '<p>景気の低迷が懸念される。</p>\r\n'),
(28, 5, '建て', '建ち', '..', '..', 1, '建て', '私は１０階（ 建て　）のマンションに住んでいます。/  Tôi đang sống ở chung cư 10 tầng.', '<p>私は１０階（ __ ）のマンションに住んでいます。</p>\r\n'),
(29, 5, '荷造り', '近所付き合い', '..', '..', 2, '近所付き合い', '引っ越ししてから（　近所付き合い ）が大変になった。 /  Sau khi chuyển nhà thì việc kết giao với hàng xóm trở nên khó khăn.', '<p>引っ越ししてから（ __ ）が大変になった。</p>\r\n'),
(30, 5, '物干し', '洗面所', '..', '..', 1, '', 'ベランダには（ 物干し　）も付いているからよかった。 / Ở ban công vì có cả chỗ phơi đồ nữa thật là tốt quá.', '<p>ベランダには（ __ ）も付いているからよかった。</p>\r\n'),
(31, 5, '合って', '回って', '..', '..', 1, '合って', '友達に付き（ 合って　）買い物に行った。/  Đi mua sắm kết giao bạn bè.', '<p>友達に付き（ __ ）買い物に行った。</p>\r\n'),
(32, 5, '礼金', '敷金', '..', '..', 2, '敷金', '（　敷金 ）は後で返してくれることになっている。 / Tiền đặt cọc sau này sẽ được trả lại.', '<p>（ __ ）は後で返してくれることになっている。</p>\r\n'),
(33, 5, '一人住まい', '人通り', '..', '..', 1, '一人住まい', '近くに大学があるので、このアパートには（ 一人住まい　）が多い。 / Vì gần trường đại học nên trong căn hộ này có nhiều người sống một mình.', '<p>近くに大学があるので、このアパートには（ __ ）が多い。</p>\r\n'),
(34, 5, '辺り', '日当たり', '住まい', 'ながめ', 4, 'ながめ', 'ベテランから見る外の（　ながめ　）は最高です。/ Quang cảnh bên ngoài nhìn từ ban công là tuyệt nhất.', '<p>ベテランから見る外の（_____）は最高です。</p>\r\n'),
(35, 5, '直後', '直後ろ', '真後ろ', '真ん後ろ', 3, '真後ろ', 'ぼくは、教室でいつもリンさんの（　真後ろ　）に座っている。/ Tôi lúc nào cũng ngồi ngay sau anh Rin trong lớp học.', '<p>ぼくは、教室でいつもリンさんの（ __ ）に座っている</p>\r\n'),
(36, 6, '節約', '省エネ', '..', '..', 1, '節約', '新しい洗濯機に買い換えたら水道代が（　節約　）できました。/ Sau khi mua cái máy giặt mới thì đã tiết kiệm được tiền nước.', '<p>新しい洗濯機に買い換えたら水道代が（ __ ）できました。</p>\r\n'),
(37, 6, '分別', '処分', '..', '..', 2, '処分', '古くなったテレビを（　処分　）した。/ Vứt đi cái ti vi đã cũ.', '<p>古くなったテレビを（ __ ）した。</p>\r\n'),
(38, 6, 'もれて', 'すすいで', '..', '..', 2, 'すすいで', 'ビンはよく（　すすいで　）からリサイクルに出してください。/ Sau khi rửa kĩ chai rồi hãy vứt vào thùng rác.', '<p>ビンはよく（ __ ）からリサイクルに出してください。</p>\r\n'),
(39, 6, 'もれて', 'たまって', '..', '..', 1, 'もれて', '生ごみの袋から、何か液が（　もれて　）いる。/ Từ cái bịch rác sinh hoạt có nước gì đó đang chảy ra.', '<p>生ごみの袋から、何か液が（ __ ）いる。</p>\r\n'),
(40, 6, '分別', '処分', '..', '..', 1, '分別', '不燃ごみと可燃ごみを（　分別　）して捨ててください。/ Hãy phân loại rác cháy được và rác không cháy được rồi vứt.', '<p>不燃ごみと可燃ごみを（ __ ）して捨ててください。</p>\r\n'),
(41, 6, '貼って', 'つぶして', '..', '..', 2, 'つぶして', '段ボールの箱は（　つぶして　）から資源ごみに出してください。/ Sau khi làm bẹp thùng cát tông hãy vứt vào khu rác tái chế.', '<p>段ボールの箱は（ __ ）から資源ごみに出してください。</p>\r\n'),
(42, 6, 'もれて', 'すすいで', 'こぼれて', 'たまって', 3, 'こぼれて', 'グラスが倒れて、酒が（　こぼれて　）しまった。/ Vì cốc thủy tinh bị rơi xuống nên rượu tràn ra mất rồi.', '<p>グラスが倒れて、酒が（　　）しまった。</p>\r\n'),
(43, 7, 'a', 'b', 'c', 'd', 2, 'ほじょ', 'Bác bỏ /rsdasdasdsadasdfasda', '<p>みなさん、あたまを　<ins>あげて</ins>&nbsp;ください。</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh_chinh`
--

CREATE TABLE `giao_trinh_chinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh_chinh`
--

INSERT INTO `giao_trinh_chinh` (`id`, `name`, `product_id`) VALUES
(2, 'Giáo trình Minnano NIHONGO - Giáo trình chính cấp độ N5', 261),
(3, 'Giáo trình hai', 261),
(4, 'Học GOI - Hán tự N1', 269),
(5, 'Học ngữ pháp N1', 269),
(6, '   N1・N2聴解（練習ブック）', 269),
(7, '   Shinkanzen Masuta Bunpou N1', 269),
(8, '   N1_Choukai', 269),
(9, '   Hội thoại_Business nihongo 30jikan', 269),
(10, '   N1_パワードリル', 269),
(11, '   絵で分かる日本語', 269),
(12, '   Soumatome N2 - Goi', 268),
(13, '   Soumatome N2 - Bunpou', 268),
(14, '   Soumatome N2 - Kanji', 268),
(15, '   Soumatome N2 - Dokkai', 268),
(16, '   Soumatome N2 - Choukai', 268),
(17, 'Soumatome N3 - Goi', 266),
(18, 'Soumatome N3 - Bunpou', 266),
(19, 'Soumatome N3 - Kanji', 266),
(20, 'Soumatome N3 - Dokkai', 266),
(21, 'Soumatome N3 - Choukai', 266),
(22, 'GIÁO TRÌNH MINANO NIHONGO - CẤP ĐỘ N4', 264),
(23, '中級から学ぶ', 268),
(24, '読解ー読むＮ2', 268);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh_chinh_bai`
--

CREATE TABLE `giao_trinh_chinh_bai` (
  `id` int(11) NOT NULL,
  `giao_trinh_chinh_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh_chinh_bai`
--

INSERT INTO `giao_trinh_chinh_bai` (`id`, `giao_trinh_chinh_id`, `name`, `note`, `dich`, `sort`) VALUES
(1, 2, 'Bài một', NULL, NULL, 0),
(2, 2, 'Bài 02', NULL, NULL, 0),
(3, 2, 'Bài 03', NULL, NULL, 0),
(4, 2, 'Bài 04', NULL, NULL, 0),
(5, 2, 'Bài 05', NULL, NULL, 0),
(6, 2, 'Bài 06', NULL, NULL, 0),
(7, 4, 'Bài 01', '', '', 1),
(8, 4, 'Bài 02', NULL, NULL, 2),
(9, 4, 'Bài 03', NULL, NULL, 3),
(10, 4, 'Bài 04', NULL, NULL, 4),
(11, 5, 'Mau_001 ～や否や／～や', '<h1><span style=\"color:#c0392b\">N1_Bunpou_kiteoboeru</span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\"><strong>Mẫu c&acirc;u</strong></span></td>\r\n			<td><span style=\"font-size:22px\"><span style=\"color:#d35400\"><strong>～や否や／や</strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\"><strong>Cấu tr&uacute;c</strong></span></td>\r\n			<td>\r\n			<p><span style=\"font-size:22px\"><span style=\"color:#2980b9\">Vる</span>　+　<span style=\"color:#d35400\"><strong>や否や／や</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:22px\"><strong>&Yacute; nghĩa &amp;&nbsp;</strong><strong>Cách dùng</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:22px\">～するとすぐ</span></p>\r\n\r\n			<p><span style=\"font-size:22px\">Ngay khi</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>\r\n			<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n			<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n			</div>\r\n\r\n			<p>空が暗くなるや否や大粒の雨が降り始めた。</p>\r\n\r\n			<p>Trời vừa sập tối l&agrave; bắt đầu mưa nặng hạt.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>空（そら）　　暗い（くらい）　　や否や（やいなや）　大粒（おおつぶ）　　雨（あめ）　　降り始める（ふりはじめる）</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>\r\n			<p>先生が教室に入るやいなや、学生たちはおしゃべりをやめた。</p>\r\n\r\n			<p>Thầy gi&aacute;o vừa bước v&agrave;o ph&ograve;ng l&agrave; bọn học sinh ngừng n&oacute;i chuyện.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>先生（せんせい）&nbsp; 教室（きょうしつ）&nbsp; 入る（はいる）&nbsp; 学生たち（がくせいたち）</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.</td>\r\n			<td>\r\n			<p>火災発生のベルが鳴るやいなや、消防士たちは部屋を飛び出した。</p>\r\n\r\n			<p>Chu&ocirc;ng b&aacute;o ch&aacute;y vừa reng l&agrave; những người l&iacute;nh cứu hỏa bắt đầu lao ra khỏi ph&ograve;ng</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>3　火災発生(かさいはっせい)&nbsp; 鳴(な)る&nbsp;&nbsp;&nbsp; 消防士(しょうぼうし)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4.</td>\r\n			<td>\r\n			<p>デパートが開店するやいなや、待っていた客たちはバーゲン会場に殺到した。</p>\r\n\r\n			<p>Cửa h&agrave;ng b&aacute;ch h&oacute;a vừa mở cửa l&agrave; những vị kh&aacute;ch đang chờ &ugrave;a v&agrave;o gian h&agrave;ng giảm gi&aacute;.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>)開店(かいてん)する&nbsp;&nbsp;&nbsp; 会場(かいじょう)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 殺到(さっとうする)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', '', 1),
(12, 6, '第1部_レッソン１　(聞き取りにくい音)', '', '', 1),
(13, 6, '第1部_レッソン2, 3, 4　(音の変化, アクセント, イントネーション)', '', '', 2),
(14, 6, '第2部_レッソン1　(課題理解)', '', '', 3),
(15, 6, '第2部_レッソン2　(ポイント理解)', '', '', 4),
(16, 6, '第2部_レッソン3　(概要理解)', '', '', 5),
(17, 6, '第2部_レッソン4　(即時応答)', '', '', 6),
(18, 6, '第2部_レッソン5　(総合理解)', '', '', 7),
(19, 5, '   Mau_02 　~すら', '<table border=\"0\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:300px\"><span style=\"font-size:22px\">Mẫu c&acirc;u</span></td>\r\n			<td><span style=\"color:#d35400\"><span style=\"font-size:22px\"><strong>～　すら</strong></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:300px\"><span style=\"font-size:22px\">Cấu tr&uacute;c</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:22px\">N　+　<span style=\"color:#d35400\"><strong>すら</strong></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:300px\">\r\n			<p><span style=\"font-size:22px\">&Yacute; nghĩa &amp; Cách dùng</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:22px\">～も（もちろん～も）＝さえ（N3）</span></p>\r\n\r\n			<p><span style=\"font-size:22px\">... cũng (kh&ocirc;ng chỉ ... m&agrave; c&ograve;n ...)</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>\r\n			<p>忙しくて食事をとる時間すらない。</p>\r\n\r\n			<p>Bận qu&aacute;, chẳng c&oacute; thời gian để ăn nữa.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>忙(いそがしい）　　食事(しょくじ)　　　時間(じかん)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>\r\n			<p>そんな簡単なこと、子どもですらできる。</p>\r\n\r\n			<p>Mấy c&aacute;i đơn giản như vậy, con n&iacute;t n&oacute; c&ograve;n biết l&agrave;m.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>2簡単(かんたん)　　　　　　　　　子ども(こども）</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.</td>\r\n			<td>\r\n			<p>試験前には10分の休憩時間すら惜しんで勉強したものだ。</p>\r\n\r\n			<p>Trước l&uacute;c thi, t&ocirc;i từng học lu&ocirc;n ngay cả 10 ph&uacute;t giải lao.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>試験前(しけんまえ)　　　休憩時間(きゅうけいじかん)&nbsp;惜(お)しん　　　　勉強(べんきょうする)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4.</td>\r\n			<td>\r\n			<p>腹が痛くて、起き上がることすら難しかった。</p>\r\n\r\n			<p>Đau lưng qu&aacute;, đứng dậy th&ocirc;i cũng kh&oacute; nữa l&agrave;.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>腹(はら)　　痛い(いたい)　　　起き(おき）　　上がる(あがる）&nbsp;難しい(むずかしい）</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5.</td>\r\n			<td>\r\n			<p>彼女は親にすら一言も言わずに家を出たそうだ。</p>\r\n\r\n			<p>Nghe đ&acirc;u l&agrave; c&ocirc; ấy ra khỏi nh&agrave; m&agrave; chẳng th&egrave;m n&oacute;i với bố mẹ một lời n&agrave;o.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>彼女(かのじょ)　　　親(おや)　　&nbsp;一言(ひとこと)　　　言う(いう)　　　家(いえ)　　　出る(でる)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n', '', 2),
(20, 5, '   Mau_03～ばこそ', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #9cc2e5 1.0pt; width:517.15pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:90.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:427.15pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:18.0pt\"><span style=\"color:#ff001c\">～ばこそ</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:427.15pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">V-</span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">ば</span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">い</span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">-</span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">ば</span></span></strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:red\">＋　こそ</span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">N</span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">／な</span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">-</span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"color:#2a9ef7\">であれば</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">&Yacute; nghĩa &amp;</span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Cách dùng</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:427.15pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">～だからこそ（他の理由ではない）（書き言葉）</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Ch&iacute;nh v&igrave; (kh&ocirc;ng phải l&yacute; do n&agrave;o kh&aacute;c) (văn viết)</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<table align=\"center\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #9cc2e5 1.0pt; width:573.7pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:35.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">1.</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:19.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">親は子どものためを思えばこそ厳しく叱るのだ。</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Ch&iacute;nh v&igrave; nghĩ cho con c&aacute;i, n&ecirc;n cha mẹ mới la nghi&ecirc;m khắc.</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">親</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">おや</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　　子</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">こ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">ども　　　思う</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">おもう</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)&nbsp;</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">厳しい</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">きびしい</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　　　叱る</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">しかる</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:35.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">2.</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:19.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">「こんなことまで話すのは、あなたを信用していればこそです」</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">&quot;M&igrave;nh n&oacute;i đến những chuyện như vầy ch&iacute;nh l&agrave; bởi v&igrave; m&igrave;nh tin tưởng nơi cậu.&rdquo;</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">話す</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">はなす</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　　　信用する</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">しんようする</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">3.</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:19.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">小説を書くことが楽しければこそ、</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">40</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">年も書き続けてきたのです。</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Ch&iacute;nh v&igrave; c&ocirc;ng việc viết tiểu thuyết l&agrave; niềm vui n&ecirc;n mới t&ocirc;i mới viết suốt 40 năm qua.</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">3</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　小説</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">しょうせつ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　書く</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">かく</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　　楽しい</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">たのしい</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　年</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">ねん</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　続く</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">つづく</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:35.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">4.</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:19.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">主婦業と仕事の両立は大変だが、主婦であればこそできる仕事もあるのではないかと思う。</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">Thật l&agrave; kh&oacute; để l&agrave;m tốt cả việc nội trợ v&agrave; c&ocirc;ng việc, nhưng ch&iacute;nh v&igrave; l&agrave; người nội trợ n&ecirc;n t&ocirc;i nghĩ cũng c&oacute; c&ocirc;ng việc c&oacute; thể l&agrave;m được.</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">主婦業</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">しゅふぎょう</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　仕事</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">しごと</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　両立</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">りょうりつ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　大変</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">たいへん</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　主婦</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">しゅふ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:35.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">5.</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:19.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">私が仕事に打ち込めたのは、家族の理解があったればこそです。</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">* T&ocirc;i c&oacute; thể chuy&ecirc;n t&acirc;m v&agrave;o c&ocirc;ng việc l&agrave; nhờ c&oacute; gia đ&igrave;nh hiểu cho.</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">打つ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">うつ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　込む</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">こむ</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　家族</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">かぞく</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">　　理解</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">(</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">りかい</span></span><span style=\"font-size:12.0pt\"><span style=\"color:#444444\">)</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '', 3),
(21, 5, '   Mau_04～ながらに／の', NULL, NULL, 5),
(22, 5, '   Mau_05～なしに（は）', NULL, NULL, 6),
(23, 5, '   Mau_06～にひきかえ', NULL, NULL, 7),
(24, 5, '   Mau_07～にかかわる', NULL, NULL, 8),
(25, 5, '   Mau_08～にもまして', NULL, NULL, 9),
(26, 5, '   Mau_09～まみれ', NULL, NULL, 10),
(27, 5, '   Mau_ 10～ に即して', NULL, NULL, 11),
(28, 12, '第1週_1日目（日本語総まとめN2_語彙）', NULL, NULL, 0),
(29, 12, '第1週_2日目（日本語総まとめN2_語彙）', NULL, NULL, 0),
(30, 12, '第1週_3日目（日本語総まとめN2_語彙）', NULL, NULL, 0),
(31, 4, 'Bài 05', '', '', 5),
(32, 4, 'Bài 06', NULL, NULL, 6),
(33, 4, 'Bài 07', NULL, NULL, 7),
(34, 4, 'Bài 08', NULL, NULL, 8),
(35, 4, 'Bài 09', NULL, NULL, 9),
(36, 4, 'Bài 10', NULL, NULL, 10),
(37, 4, 'Bài 11', NULL, NULL, 11),
(38, 4, 'Bài 12', NULL, NULL, 12),
(39, 4, 'Bài 13', NULL, NULL, 13),
(40, 4, 'Bài 14', NULL, NULL, 14),
(41, 4, 'Bài 15', NULL, NULL, 15),
(42, 4, 'Bài 16', NULL, NULL, 16),
(43, 4, 'Bài 17', NULL, NULL, 17),
(44, 4, 'Bài 18', NULL, NULL, 18),
(45, 4, 'Bài 19', NULL, NULL, 19),
(46, 4, 'Bài 20', NULL, NULL, 20),
(47, 22, 'Bài 26', NULL, NULL, 0),
(48, 22, 'Bài 27', NULL, NULL, 0),
(49, 22, 'Bài 28', NULL, NULL, 0),
(50, 22, 'Bài 29', NULL, NULL, 0),
(51, 22, 'Bài 30', NULL, NULL, 0),
(52, 22, 'Bài 31', NULL, NULL, 0),
(53, 22, 'Bài 32', NULL, NULL, 0),
(54, 22, 'Bài 33', NULL, NULL, 0),
(55, 22, 'Bài 34', NULL, NULL, 0),
(56, 22, 'Bài 35', NULL, NULL, 0),
(57, 5, '   Sougo_mondai_03 (078-120)', NULL, NULL, 4),
(59, 7, 'B01_BaiHoc (1-6)', '', '', 0),
(60, 7, 'B01_Mondai (1-6)', '', '', 0),
(61, 7, 'B02_BaiHoc (7-11)', '', '', 0),
(62, 7, 'B02_Mondai (7-11)', '', '', 0),
(63, 10, '第01回　（文字・語彙）', '', '', 0),
(64, 10, '第02回　（文字・語彙）', '', '', 0),
(65, 10, '第03回　（文字・語彙）', '', '', 0),
(66, 10, '第04回　（文字・語彙）', '', '', 0),
(67, 10, '第05回　（文字・語彙）', '', '', 0),
(68, 9, 'Business Nihongo 30jikan Bài 1', '', '', 0),
(69, 8, 'Bai 1', '<p><span style=\"font-size:18px\"><span style=\"color:#e74c3c\">問題　まず質問を聞いてください。それから話を聞いて、問題用紙の1から4のなか最もよいものを一つ選んでください。</span></span></p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"319\" src=\"/image/images/2.PNG\" width=\"866\" /></p>\r\n', '', 0),
(70, 11, 'Bài 1', '', '', 0),
(71, 23, 'Bài 1', '', '', 0),
(72, 23, 'Bài 2', '', '', 0),
(73, 23, 'Bài 3', '', '', 0),
(74, 23, 'Bài 4', '', '', 0),
(75, 23, 'Bài 5', '', '', 0),
(76, 24, 'N2_YOUMU_PART1_P01_BAI_01', '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh_tab_chinh`
--

CREATE TABLE `giao_trinh_tab_chinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `giao_trinh_chinh_bai_id` int(11) NOT NULL,
  `tab_chon_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh_tab_chinh`
--

INSERT INTO `giao_trinh_tab_chinh` (`id`, `name`, `image`, `giao_trinh_chinh_bai_id`, `tab_chon_id`) VALUES
(5, 'Từ vựng', 'minna_01.png', 1, 0),
(6, 'Ngữ pháp', 'nguphap.jpg', 1, 0),
(7, 'B01_リスト', 'tab1.png', 7, 1),
(8, 'B01_チェック', 'tab2.png', 7, 2),
(9, 'B01_練習問題', 'tab3.png', 7, 3),
(10, 'N1・N2聴解＿練習ブック_第1部_レッソン１　(聞き取りにくい音)', 'tab1.png', 12, 0),
(12, 'Bài tập ngữ pháp', '', 57, 0),
(13, '第01回　（文字・語彙）', '', 63, 0),
(14, 'B02_リスト', 'ngày thứ 3.JPG', 8, 0),
(15, 'N1_Bunpou_C01_B01_１　～　かたがた', '', 59, 0),
(16, 'Bài 1 (Phần 1 紹介)', 'class.png', 68, 0),
(17, 'Bài 1 (Phần 2 談話)', 'grammar.png', 68, 0),
(18, '1', '', 69, 0),
(19, '考えましょう', '3.png', 71, 0),
(20, '使いましょう', '4.png', 71, 0),
(21, '書きましょう', '5.png', 71, 0),
(22, '速読', '6.png', 71, 0),
(23, '聴解①', '7.png', 71, 0),
(24, '聴解②', '8.png', 71, 0),
(25, 'Bài dịch', '', 70, 1),
(26, 'N2_YOUMU_PART1_P01_BAI_01', '', 76, 1),
(27, '読解問題', '', 64, 1),
(28, '読解問題', '', 65, 1),
(29, '読解問題', '', 65, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_trinh_tab_phu`
--

CREATE TABLE `giao_trinh_tab_phu` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `giao_trinh_tab_chinh_id` int(11) NOT NULL,
  `noi_dung` int(11) NOT NULL DEFAULT 0,
  `cau_hoi` int(11) NOT NULL DEFAULT 0,
  `phien_am` int(11) NOT NULL DEFAULT 0,
  `phien_am_nghe` int(11) NOT NULL DEFAULT 0,
  `dien_tu` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giao_trinh_tab_phu`
--

INSERT INTO `giao_trinh_tab_phu` (`id`, `name`, `note`, `giao_trinh_tab_chinh_id`, `noi_dung`, `cau_hoi`, `phien_am`, `phien_am_nghe`, `dien_tu`) VALUES
(5, 'Danh sách từ vựng', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>Mục từ</td>\r\n			<td>JP</td>\r\n			<td>VN</td>\r\n			<td>H&aacute;n Tự</td>\r\n			<td>&Acirc;m H&aacute;n</td>\r\n			<td>\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>わたし</td>\r\n			<td>\r\n			<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n			<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/1%20-%201%20-%20Kotoba.mp3\">&nbsp;</audio>\r\n			</div>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(1)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>t&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>わたしたち</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(2)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(3)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>ch&uacute;ng t&ocirc;i, ch&uacute;ng ta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>あなた</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(4)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(5)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>anh/ chị/ &ocirc;ng/ b&agrave;,</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>あのひと</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(6)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(7)\">play</a></td>\r\n			<td>あの人</td>\r\n			<td>NH&Acirc;N</td>\r\n			<td>người kia, người đ&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>あのかた</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(8)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(9)\">play</a></td>\r\n			<td>あの方</td>\r\n			<td>PHƯƠNG</td>\r\n			<td>vị kia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>みなさん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(10)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(11)\">play</a></td>\r\n			<td>皆さん</td>\r\n			<td>GIAI</td>\r\n			<td>c&aacute;c anh chị, c&aacute;c &ocirc;ng b&agrave;, c&aacute;c bạn, qu&yacute; vị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>～さん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(12)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(13)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>anh, chị, &ocirc;ng, b&agrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>～ちゃん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(14)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(15)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>b&eacute;~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>～くん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(16)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(17)\">play</a></td>\r\n			<td>～君</td>\r\n			<td>QU&Acirc;N</td>\r\n			<td>cậu b&eacute;~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>～じん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(18)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(19)\">play</a></td>\r\n			<td>～人</td>\r\n			<td>NH&Acirc;N</td>\r\n			<td>người (nước)~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>せんせい</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(20)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(21)\">play</a></td>\r\n			<td>先生</td>\r\n			<td>TI&Ecirc;N SINH</td>\r\n			<td>thầy/ c&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>きょうし</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(22)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(23)\">play</a></td>\r\n			<td>教師</td>\r\n			<td>GI&Aacute;O SƯ</td>\r\n			<td>gi&aacute;o vi&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>がくせい</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(24)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(25)\">play</a></td>\r\n			<td>学生</td>\r\n			<td>HỌC SINH</td>\r\n			<td>học sinh, sinh vi&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>かいしゃいん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(26)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(27)\">play</a></td>\r\n			<td>会社員</td>\r\n			<td>HỘI X&Atilde; VI&Ecirc;N</td>\r\n			<td>nh&acirc;n vi&ecirc;n c&ocirc;ng ty</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>しゃいん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(28)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(29)\">play</a></td>\r\n			<td>社員</td>\r\n			<td>X&Atilde; VI&Ecirc;N</td>\r\n			<td>nh&acirc;n vi&ecirc;n c&ocirc;ng ty ~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>ぎんこういん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(30)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(31)\">play</a></td>\r\n			<td>銀行員</td>\r\n			<td>NG&Acirc;N H&Agrave;NH VI&Ecirc;N</td>\r\n			<td>nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>いしゃ</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(32)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(33)\">play</a></td>\r\n			<td>医者</td>\r\n			<td>Y GIẢ</td>\r\n			<td>b&aacute;c sĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>けんきゅうしゃ</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(34)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(35)\">play</a></td>\r\n			<td>研究者</td>\r\n			<td>NGHI&Ecirc;N CỨU GIẢ</td>\r\n			<td>nh&agrave; nghi&ecirc;n cứu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>エンジニア</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(36)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(37)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>kỹ sư</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>だいがく</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(38)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(39)\">play</a></td>\r\n			<td>大学</td>\r\n			<td>ĐẠI HỌC</td>\r\n			<td>đại học, trường đại học</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>びょういん</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(40)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(41)\">play</a></td>\r\n			<td>病院</td>\r\n			<td>BỆNH VIỆN</td>\r\n			<td>bệnh viện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>でんき</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(42)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(43)\">play</a></td>\r\n			<td>電気</td>\r\n			<td>ĐIỆN KH&Iacute;</td>\r\n			<td>điện, đ&egrave;n điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>だれ</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(44)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(45)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>ai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>どなた</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(46)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(47)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>vị n&agrave;o, l&agrave; c&aacute;ch n&oacute;i lịch sự của だれ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>～さい</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(48)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(49)\">play</a></td>\r\n			<td>～歳</td>\r\n			<td>TUẾ</td>\r\n			<td>～ tuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>なんさい</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(50)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(51)\">play</a></td>\r\n			<td>何歳</td>\r\n			<td>H&Agrave; TUẾ</td>\r\n			<td>mấy tuổi, bao nhi&ecirc;u tuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>おいくつ</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(52)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(53)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>mấy tuổi, bao nhi&ecirc;u tuổi 、l&agrave; c&aacute;ch n&oacute;i lịch sự của なんさい</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>はい</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(54)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(55)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>v&acirc;ng, dạ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>いいえ</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(56)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(57)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>しつれいですがおなまえは？</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(58)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(59)\">play</a></td>\r\n			<td>失礼ですがお名前は？</td>\r\n			<td>THẤT LỄ DANH TIỀN</td>\r\n			<td>xin lỗi, t&ecirc;n anh/chị l&agrave; g&igrave;?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>はじめまして。</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(60)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(61)\">play</a></td>\r\n			<td>初めまして。</td>\r\n			<td>SƠ</td>\r\n			<td>Rất h&acirc;n hạnh được gặp anh/chị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>どうぞよろしくおねがいします。</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(62)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(63)\">play</a></td>\r\n			<td>どうぞよろしくお願いします。</td>\r\n			<td>NGUYỆN</td>\r\n			<td>Rất mong được sự gi&uacute;p đỡ của anh/chị, rất vui được l&agrave;m quen với anh/chị (D&ugrave;ng l&agrave;m c&acirc;u kết th&uacute;c sau khi giới thiệu về m&igrave;nh.)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>こちらは～さんです。</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(64)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(65)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Đ&acirc;y l&agrave; anh/chị/&ocirc;ng/b&agrave; ~.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>～からきました。</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(66)\">play</a></td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(67)\">play</a></td>\r\n			<td>～から来ました。</td>\r\n			<td>LAI</td>\r\n			<td>(t&ocirc;i) đến từ ~.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>アメリカ</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(68)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>イギリス</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(69)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Anh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>インド</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(70)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ấn Độ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>インドネシア</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(71)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Indonesia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>かんこく</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(72)\">play</a></td>\r\n			<td>韓国</td>\r\n			<td>H&Agrave;N QUỐC</td>\r\n			<td>H&agrave;n Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>タイ</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(73)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Th&aacute;i Lan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>ちゅうごく</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(74)\">play</a></td>\r\n			<td>中国</td>\r\n			<td>TRUNG QUỐC</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>ドイツ</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(75)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Đức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>にほん</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(76)\">play</a></td>\r\n			<td>日本</td>\r\n			<td>NHẬT BẢN</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>フランス</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(77)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>ブラジル</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(78)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Braxin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>さくらだいがく</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(79)\">play</a></td>\r\n			<td>さくら大学</td>\r\n			<td>ĐẠI HỌC</td>\r\n			<td>Đại học Sakura</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>ふじだいがく</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(80)\">play</a></td>\r\n			<td>富士大学</td>\r\n			<td>PH&Uacute; SĨ ĐẠI HỌC</td>\r\n			<td>Đại học Ph&uacute; Sĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>パワーでんき</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(81)\">play</a></td>\r\n			<td>パワー電気</td>\r\n			<td>ĐIỆN KH&Iacute;</td>\r\n			<td>C&ocirc;ng ty điện Power</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>ブラジルエアー</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(82)\">play</a></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>C&ocirc;ng ty Brazin Air</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>こうべびょういん</td>\r\n			<td>&nbsp;</td>\r\n			<td><a href=\"javascript:;\" onclick=\"playMp4(83)\">play</a></td>\r\n			<td>神戸病院</td>\r\n			<td>THẦN HỘ BỆNH VIỆN</td>\r\n			<td>Bệnh viện Kobe</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 5, 0, 0, 0, 0, 0),
(6, 'Nghe đọc từ mới', '<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/1%20-%201%20-%20Kotoba.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>TT</td>\r\n			<td>Mục từ</td>\r\n			<td>H&aacute;n Tự</td>\r\n			<td>Nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>わたし</td>\r\n			<td>&nbsp;</td>\r\n			<td>t&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>わたしたち</td>\r\n			<td>&nbsp;</td>\r\n			<td>ch&uacute;ng t&ocirc;i, ch&uacute;ng ta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>あなた</td>\r\n			<td>&nbsp;</td>\r\n			<td>anh/ chị/ &ocirc;ng/ b&agrave;,</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>あのひと</td>\r\n			<td>あの人</td>\r\n			<td>người kia, người đ&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>あのかた</td>\r\n			<td>あの方</td>\r\n			<td>vị kia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>みなさん</td>\r\n			<td>皆さん</td>\r\n			<td>c&aacute;c anh chị, c&aacute;c &ocirc;ng b&agrave;, c&aacute;c bạn, qu&yacute; vị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>～さん</td>\r\n			<td>&nbsp;</td>\r\n			<td>anh, chị, &ocirc;ng, b&agrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>～ちゃん</td>\r\n			<td>&nbsp;</td>\r\n			<td>b&eacute;~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>～くん</td>\r\n			<td>～君</td>\r\n			<td>cậu b&eacute;~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>～じん</td>\r\n			<td>～人</td>\r\n			<td>người (nước)~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>せんせい</td>\r\n			<td>先生</td>\r\n			<td>thầy/ c&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>きょうし</td>\r\n			<td>教師</td>\r\n			<td>gi&aacute;o vi&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>がくせい</td>\r\n			<td>学生</td>\r\n			<td>học sinh, sinh vi&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>かいしゃいん</td>\r\n			<td>会社員</td>\r\n			<td>nh&acirc;n vi&ecirc;n c&ocirc;ng ty</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>しゃいん</td>\r\n			<td>社員</td>\r\n			<td>nh&acirc;n vi&ecirc;n c&ocirc;ng ty ~</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>ぎんこういん</td>\r\n			<td>銀行員</td>\r\n			<td>nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>いしゃ</td>\r\n			<td>医者</td>\r\n			<td>b&aacute;c sĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>けんきゅうしゃ</td>\r\n			<td>研究者</td>\r\n			<td>nh&agrave; nghi&ecirc;n cứu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>エンジニア</td>\r\n			<td>&nbsp;</td>\r\n			<td>kỹ sư</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>だいがく</td>\r\n			<td>大学</td>\r\n			<td>đại học, trường đại học</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>びょういん</td>\r\n			<td>病院</td>\r\n			<td>bệnh viện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>でんき</td>\r\n			<td>電気</td>\r\n			<td>điện, đ&egrave;n điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>だれ</td>\r\n			<td>&nbsp;</td>\r\n			<td>ai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>どなた</td>\r\n			<td>&nbsp;</td>\r\n			<td>vị n&agrave;o, l&agrave; c&aacute;ch n&oacute;i lịch sự của だれ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>～さい</td>\r\n			<td>～歳</td>\r\n			<td>～ tuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>なんさい</td>\r\n			<td>何歳</td>\r\n			<td>mấy tuổi, bao nhi&ecirc;u tuổi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>おいくつ</td>\r\n			<td>&nbsp;</td>\r\n			<td>mấy tuổi, bao nhi&ecirc;u tuổi 、l&agrave; c&aacute;ch n&oacute;i lịch sự của なんさい</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>はい</td>\r\n			<td>&nbsp;</td>\r\n			<td>v&acirc;ng, dạ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>いいえ</td>\r\n			<td>&nbsp;</td>\r\n			<td>kh&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>しつれいですがおなまえは？</td>\r\n			<td>失礼ですがお名前は？</td>\r\n			<td>xin lỗi, t&ecirc;n anh/chị l&agrave; g&igrave;?</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>はじめまして。</td>\r\n			<td>初めまして。</td>\r\n			<td>Rất h&acirc;n hạnh được gặp anh/chị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>どうぞよろしくおねがいします。</td>\r\n			<td>どうぞよろしくお願いします。</td>\r\n			<td>Rất mong được sự gi&uacute;p đỡ của anh/chị, rất vui được l&agrave;m quen với anh/chị (D&ugrave;ng l&agrave;m c&acirc;u kết th&uacute;c sau khi giới thiệu về m&igrave;nh.)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>こちらは～さんです。</td>\r\n			<td>&nbsp;</td>\r\n			<td>Đ&acirc;y l&agrave; anh/chị/&ocirc;ng/b&agrave; ~.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>～からきました。</td>\r\n			<td>～から来ました。</td>\r\n			<td>(t&ocirc;i) đến từ ~.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>アメリカ</td>\r\n			<td>&nbsp;</td>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>イギリス</td>\r\n			<td>&nbsp;</td>\r\n			<td>Anh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>インド</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ấn Độ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>インドネシア</td>\r\n			<td>&nbsp;</td>\r\n			<td>Indonesia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>かんこく</td>\r\n			<td>韓国</td>\r\n			<td>H&agrave;n Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>タイ</td>\r\n			<td>&nbsp;</td>\r\n			<td>Th&aacute;i Lan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>ちゅうごく</td>\r\n			<td>中国</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>ドイツ</td>\r\n			<td>&nbsp;</td>\r\n			<td>Đức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>にほん</td>\r\n			<td>日本</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>フランス</td>\r\n			<td>&nbsp;</td>\r\n			<td>Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>ブラジル</td>\r\n			<td>&nbsp;</td>\r\n			<td>Braxin</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>さくらだいがく</td>\r\n			<td>さくら大学</td>\r\n			<td>Đại học Sakura</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>ふじだいがく</td>\r\n			<td>富士大学</td>\r\n			<td>Đại học Ph&uacute; Sĩ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>パワーでんき</td>\r\n			<td>パワー電気</td>\r\n			<td>C&ocirc;ng ty điện Power</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>ブラジルエアー</td>\r\n			<td>&nbsp;</td>\r\n			<td>C&ocirc;ng ty Brazin Air</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>こうべびょういん</td>\r\n			<td>神戸病院</td>\r\n			<td>Bệnh viện Kobe</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 5, 0, 0, 0, 0, 0),
(7, 'Hiragana', '<table border=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p><strong>Hiragana</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>H&aacute;n Tự</strong></p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p><strong>&Acirc;m H&aacute;n</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nghĩa</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>\r\n			<p>わたし</p>\r\n			</td>\r\n			<td>\r\n			<p>私</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>TƯ</p>\r\n			</td>\r\n			<td>\r\n			<p>T&ocirc;i</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>\r\n			<p>わたしたち</p>\r\n			</td>\r\n			<td>\r\n			<p>私達</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>TƯ ĐẠT</p>\r\n			</td>\r\n			<td>\r\n			<p>Ch&uacute;ng t&ocirc;i, ch&uacute;ng ta</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>\r\n			<p>あのひと</p>\r\n			</td>\r\n			<td>\r\n			<p>あの人</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>NH&Acirc;N</p>\r\n			</td>\r\n			<td>\r\n			<p>Người kia, người đ&oacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>\r\n			<p>あのかた</p>\r\n			</td>\r\n			<td>\r\n			<p>あの方</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>PHƯƠNG</p>\r\n			</td>\r\n			<td>\r\n			<p>Vị kia</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>\r\n			<p>みなさん</p>\r\n			</td>\r\n			<td>\r\n			<p>皆さん</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>GIAI</p>\r\n			</td>\r\n			<td>\r\n			<p>C&aacute;c anh chị, c&aacute;c &ocirc;ng b&agrave;, c&aacute;c bạn, qu&yacute; vị</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>\r\n			<p>せんせい</p>\r\n			</td>\r\n			<td>\r\n			<p>先生</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>TI&Ecirc;N SINH</p>\r\n			</td>\r\n			<td>\r\n			<p>Thầy/ c&ocirc;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>\r\n			<p>きょうし</p>\r\n			</td>\r\n			<td>\r\n			<p>教師</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>GI&Aacute;O SƯ</p>\r\n			</td>\r\n			<td>\r\n			<p>Gi&aacute;o vi&ecirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>\r\n			<p>がくせい</p>\r\n			</td>\r\n			<td>\r\n			<p>学生</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>HỌC SINH</p>\r\n			</td>\r\n			<td>\r\n			<p>Học sinh, sinh vi&ecirc;n</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>\r\n			<p>かいしゃいん</p>\r\n			</td>\r\n			<td>\r\n			<p>会社員</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>HỘI X&Atilde; VI&Ecirc;N</p>\r\n			</td>\r\n			<td>\r\n			<p>Nh&acirc;n vi&ecirc;n c&ocirc;ng ty</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>\r\n			<p>しゃいん</p>\r\n			</td>\r\n			<td>\r\n			<p>社員</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>X&Atilde; VI&Ecirc;N</p>\r\n			</td>\r\n			<td>\r\n			<p>Nh&acirc;n vi&ecirc;n c&ocirc;ng ty ~</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>\r\n			<p>ぎんこういん</p>\r\n			</td>\r\n			<td>\r\n			<p>銀行員</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>NG&Acirc;N H&Agrave;NH VI&Ecirc;N</p>\r\n			</td>\r\n			<td>\r\n			<p>Nh&acirc;n vi&ecirc;n ng&acirc;n h&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>\r\n			<p>いしゃ</p>\r\n			</td>\r\n			<td>\r\n			<p>医者</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>Y GIẢ</p>\r\n			</td>\r\n			<td>\r\n			<p>B&aacute;c Sĩ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>\r\n			<p>けんきゅうしゃ</p>\r\n			</td>\r\n			<td>\r\n			<p>研究者</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>NGHI&Ecirc;N CỨU GIẢ</p>\r\n			</td>\r\n			<td>\r\n			<p>Nh&agrave; nghi&ecirc;n cứu</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>\r\n			<p>だいがく</p>\r\n			</td>\r\n			<td>\r\n			<p>大学</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>ĐẠI HỌC</p>\r\n			</td>\r\n			<td>\r\n			<p>Đại học, Trường đại học</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>\r\n			<p>びょういん</p>\r\n			</td>\r\n			<td>\r\n			<p>病院</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>BỆNH VIỆN</p>\r\n			</td>\r\n			<td>\r\n			<p>Bệnh viện</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>\r\n			<p>でんき</p>\r\n			</td>\r\n			<td>\r\n			<p>電気</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>ĐIỆN KH&Iacute;</p>\r\n			</td>\r\n			<td>\r\n			<p>Điện, Đ&egrave;n điện</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>\r\n			<p>なんさい</p>\r\n			</td>\r\n			<td>\r\n			<p>何歳</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>H&Agrave; TUẾ</p>\r\n			</td>\r\n			<td>\r\n			<p>Mấy tuổi, bao nhi&ecirc;u tuổi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>\r\n			<p>ちゅうごく</p>\r\n			</td>\r\n			<td>中国</td>\r\n			<td colspan=\"2\">\r\n			<p>TRUNG QUỐC</p>\r\n			</td>\r\n			<td>\r\n			<p>Trung Quốc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>\r\n			<p>にほん</p>\r\n			</td>\r\n			<td>\r\n			<p>日本</p>\r\n			</td>\r\n			<td colspan=\"2\">\r\n			<p>NHẬT BẢN</p>\r\n			</td>\r\n			<td>\r\n			<p>Nhật Bản</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 5, 0, 0, 0, 0, 0),
(8, 'test tu han', '', 5, 0, 0, 0, 0, 0),
(9, '1', '<p><span style=\"font-size:18px\"><span style=\"color:#e74c3c\"><strong>Khẳng định v&agrave; phủ định của một danh từ</strong></span></span></p>\r\n\r\n<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\">形</td>\r\n			<td>\r\n			<p>Khẳng định:&nbsp;N　です。</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Phủ định:</p>\r\n\r\n			<p>_____N　<strong>ではありません。</strong></p>\r\n			_____N　<strong>じゃありません。</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>意味</p>\r\n			</td>\r\n			<td>\r\n			<p>☞ Khẳng định: L&agrave; ~</p>\r\n\r\n			<p>☞ Phủ định: Kh&ocirc;ng phải l&agrave; ~</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>\r\n			<p>がくせい</p>\r\n\r\n			<p>がくせいです。</p>\r\n\r\n			<p>がくせいじゃありません。</p>\r\n			</td>\r\n			<td>\r\n			<p>Học sinh</p>\r\n\r\n			<p>L&agrave; học sinh.</p>\r\n\r\n			<p>Kh&ocirc;ng phải l&agrave; học sinh.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>\r\n			<p>やまだ</p>\r\n\r\n			<p>やまだです。</p>\r\n			やまだじゃありません。</td>\r\n			<td>\r\n			<p>Yamada</p>\r\n\r\n			<p>L&agrave; Yamada.</p>\r\n			Kh&ocirc;ng phải l&agrave; Yamada.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 6, 0, 0, 0, 0, 0),
(10, '{N1_Goi_GKK_JP_B01_P01}', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>STT</td>\r\n			<td>\r\n			<p>H&aacute;n tự</p>\r\n			</td>\r\n			<td>\r\n			<p>Hiragana</p>\r\n			</td>\r\n			<td style=\"vertical-align:top\">重要度</td>\r\n			<td style=\"vertical-align:top\">\r\n			<p>Nghĩa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>維持</td>\r\n			<td>いじ</td>\r\n			<td>★★★</td>\r\n			<td>duy tr&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>意図</td>\r\n			<td>いと</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; đồ, mục đ&iacute;ch, &yacute; định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>寄附</td>\r\n			<td>きふ</td>\r\n			<td>★★★</td>\r\n			<td>tặng cho, quy&ecirc;n g&oacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>拒否</td>\r\n			<td>きょひ</td>\r\n			<td>★★★</td>\r\n			<td>cự tuyệt, b&aacute;c bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>処置</td>\r\n			<td>しょち</td>\r\n			<td>★★★</td>\r\n			<td>xử tr&iacute;, đối xử</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>阻止</td>\r\n			<td>そし</td>\r\n			<td>★★★</td>\r\n			<td>cản trở, chướng ngại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>破棄</td>\r\n			<td>はき</td>\r\n			<td>★★★</td>\r\n			<td>hủy hoại, hủy bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>保護</td>\r\n			<td>ほご</td>\r\n			<td>★★★</td>\r\n			<td>bảo hộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>保守</td>\r\n			<td>ほしゅ</td>\r\n			<td>★★★</td>\r\n			<td>giữ g&igrave;n, duy tr&igrave;, bảo thủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>加味</td>\r\n			<td>かみ</td>\r\n			<td>★★</td>\r\n			<td>n&ecirc;m th&ecirc;m, th&ecirc;m v&agrave;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>寄与</td>\r\n			<td>きよ</td>\r\n			<td>★★</td>\r\n			<td>đ&oacute;ng g&oacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>指揮</td>\r\n			<td>しき</td>\r\n			<td>★★</td>\r\n			<td>chỉ huy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>支持</td>\r\n			<td>しじ</td>\r\n			<td>★★</td>\r\n			<td>n&acirc;ng đỡ, duy tr&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>自首</td>\r\n			<td>じしゅ</td>\r\n			<td>★★</td>\r\n			<td>tự th&uacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>所持</td>\r\n			<td>しょじ</td>\r\n			<td>★★</td>\r\n			<td>sở hữu, t&agrave;i sản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>補助</td>\r\n			<td>ほじょ</td>\r\n			<td>★★</td>\r\n			<td>bổ trợ, trợ cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>麻痺</td>\r\n			<td>まひ</td>\r\n			<td>★★</td>\r\n			<td>t&ecirc; liệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>餓死</td>\r\n			<td>がし</td>\r\n			<td>★</td>\r\n			<td>chết đ&oacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>帰化</td>\r\n			<td>きか</td>\r\n			<td>★</td>\r\n			<td>nhập quốc tịch, du nhập</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>危惧</td>\r\n			<td>きぐ</td>\r\n			<td>★</td>\r\n			<td>sợ sệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>起訴</td>\r\n			<td>きそ</td>\r\n			<td>★</td>\r\n			<td>khởi tố</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>忌避</td>\r\n			<td>きひ</td>\r\n			<td>★</td>\r\n			<td>n&eacute; tr&aacute;nh, tho&aacute;i th&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>挙手</td>\r\n			<td>きょしゅ</td>\r\n			<td>★</td>\r\n			<td>giơ tay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>駆使</td>\r\n			<td>くし</td>\r\n			<td>★</td>\r\n			<td>tận dụng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>駆除</td>\r\n			<td>くじょ</td>\r\n			<td>★</td>\r\n			<td>loại bỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>固辞</td>\r\n			<td>こじ</td>\r\n			<td>★</td>\r\n			<td>từ chối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>誇示</td>\r\n			<td>こじ</td>\r\n			<td>★</td>\r\n			<td>ph&ocirc; trương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>示唆</td>\r\n			<td>しさ</td>\r\n			<td>★</td>\r\n			<td>khơi gợi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>自負</td>\r\n			<td>じふ</td>\r\n			<td>★</td>\r\n			<td>tự phụ, ki&ecirc;u ngạo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>除去</td>\r\n			<td>じょきょ</td>\r\n			<td>★</td>\r\n			<td>loại trừ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>図示</td>\r\n			<td>ずし</td>\r\n			<td>★</td>\r\n			<td>đồ thị, biểu hiện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>打破</td>\r\n			<td>だは</td>\r\n			<td>★</td>\r\n			<td>ph&aacute; vỡ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>治癒</td>\r\n			<td>ちゆ</td>\r\n			<td>★</td>\r\n			<td>chữa trị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>卑下</td>\r\n			<td>ひげ</td>\r\n			<td>★</td>\r\n			<td>khi&ecirc;m tốn, nh&uacute;n nhường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>補佐</td>\r\n			<td>ほさ</td>\r\n			<td>★</td>\r\n			<td>trợ l&yacute;, phụ t&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>拉致</td>\r\n			<td>らち</td>\r\n			<td>★</td>\r\n			<td>bắt c&oacute;c, cuỗm đi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>濾過</td>\r\n			<td>ろか</td>\r\n			<td>★</td>\r\n			<td>lọc, thấm qua</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>意義</td>\r\n			<td>いぎ</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>異議</td>\r\n			<td>いぎ</td>\r\n			<td>★★★</td>\r\n			<td>phản đối, kh&aacute;ng nghị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>意地</td>\r\n			<td>いじ</td>\r\n			<td>★★★</td>\r\n			<td>t&acirc;m địa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>過疎</td>\r\n			<td>かそ</td>\r\n			<td>★★★</td>\r\n			<td>sự giảm d&acirc;n số</td>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>規模</td>\r\n			<td>きぼ</td>\r\n			<td>★★★</td>\r\n			<td>quy m&ocirc;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>義務</td>\r\n			<td>ぎむ</td>\r\n			<td>★★★</td>\r\n			<td>nghĩa vụ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>個々</td>\r\n			<td>ここ</td>\r\n			<td>★★★</td>\r\n			<td>từng c&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>誤差</td>\r\n			<td>ごさ</td>\r\n			<td>★★★</td>\r\n			<td>sai số, ch&ecirc;nh lệch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>磁気</td>\r\n			<td>じき</td>\r\n			<td>★★★</td>\r\n			<td>từ t&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>時期</td>\r\n			<td>じき</td>\r\n			<td>★★★</td>\r\n			<td>thời k&igrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>自己</td>\r\n			<td>じこ</td>\r\n			<td>★★★</td>\r\n			<td>tự m&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>視野</td>\r\n			<td>しや</td>\r\n			<td>★★★</td>\r\n			<td>tầm nh&igrave;n, tầm hiểu biết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>砂利</td>\r\n			<td>じゃり</td>\r\n			<td>★★★</td>\r\n			<td>sỏi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>趣旨</td>\r\n			<td>しゅし</td>\r\n			<td>★★★</td>\r\n			<td>&yacute; định, &yacute; ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>種々</td>\r\n			<td>しゅじゅ</td>\r\n			<td>★★★</td>\r\n			<td>đa dạng, nhiều loại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>措置</td>\r\n			<td>そち</td>\r\n			<td>★★★</td>\r\n			<td>biện ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>墓地</td>\r\n			<td>ぼち</td>\r\n			<td>★★★</td>\r\n			<td>nghĩa trang, nơi ch&ocirc;n cất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>余地</td>\r\n			<td>よち</td>\r\n			<td>★★★</td>\r\n			<td>đất trống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>危機</td>\r\n			<td>きき</td>\r\n			<td>★★</td>\r\n			<td>khủng hoảng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>義理</td>\r\n			<td>ぎり</td>\r\n			<td>★★</td>\r\n			<td>t&igrave;nh nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>下痢</td>\r\n			<td>げり</td>\r\n			<td>★★</td>\r\n			<td>ti&ecirc;u chảy</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>語彙</td>\r\n			<td>ごい</td>\r\n			<td>★★</td>\r\n			<td>từ vựng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>語句</td>\r\n			<td>ごく</td>\r\n			<td>★★</td>\r\n			<td>cụm từ ngữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>孤児</td>\r\n			<td>こじ</td>\r\n			<td>★★</td>\r\n			<td>trẻ mồ c&ocirc;i, c&ocirc; nhi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>詐欺</td>\r\n			<td>さぎ</td>\r\n			<td>★★</td>\r\n			<td>lừa đảo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>歯科</td>\r\n			<td>しか</td>\r\n			<td>★★</td>\r\n			<td>nha khoa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>64</td>\r\n			<td>自我</td>\r\n			<td>じが</td>\r\n			<td>★★</td>\r\n			<td>tự m&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>65</td>\r\n			<td>磁器</td>\r\n			<td>じき</td>\r\n			<td>★★</td>\r\n			<td>đồ gốm sứ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>66</td>\r\n			<td>時差</td>\r\n			<td>じさ</td>\r\n			<td>★★</td>\r\n			<td>ch&ecirc;nh lệch giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>67</td>\r\n			<td>自主</td>\r\n			<td>じしゅ</td>\r\n			<td>★★</td>\r\n			<td>tự chủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>68</td>\r\n			<td>守備</td>\r\n			<td>しゅび</td>\r\n			<td>★★</td>\r\n			<td>bảo vệ, trấn thủ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>69</td>\r\n			<td>助詞</td>\r\n			<td>じょし</td>\r\n			<td>★★</td>\r\n			<td>trợ từ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>70</td>\r\n			<td>庶務</td>\r\n			<td>しょむ</td>\r\n			<td>★★</td>\r\n			<td>tổng vụ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>71</td>\r\n			<td>世辞</td>\r\n			<td>せじ</td>\r\n			<td>★★</td>\r\n			<td>nịnh, t&acirc;ng bốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>72</td>\r\n			<td>著書</td>\r\n			<td>ちょしょ</td>\r\n			<td>★★</td>\r\n			<td>t&aacute;c phẩm s&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>73</td>\r\n			<td>徒歩</td>\r\n			<td>とほ</td>\r\n			<td>★★</td>\r\n			<td>đi bộ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>74</td>\r\n			<td>秘書</td>\r\n			<td>ひしょ</td>\r\n			<td>★★</td>\r\n			<td>thư k&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>75</td>\r\n			<td>不意</td>\r\n			<td>ふい</td>\r\n			<td>★★</td>\r\n			<td>bất chợt, kh&ocirc;ng ngờ tới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>76</td>\r\n			<td>部下</td>\r\n			<td>ぶか</td>\r\n			<td>★★</td>\r\n			<td>cấp dưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>77</td>\r\n			<td>捕虜</td>\r\n			<td>ほりょ</td>\r\n			<td>★★</td>\r\n			<td>t&ugrave; binh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>78</td>\r\n			<td>未知</td>\r\n			<td>みち</td>\r\n			<td>★★</td>\r\n			<td>chưa biết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>79</td>\r\n			<td>余暇</td>\r\n			<td>よか</td>\r\n			<td>★★</td>\r\n			<td>rảnh rỗi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>80</td>\r\n			<td>利子</td>\r\n			<td>りし</td>\r\n			<td>★★</td>\r\n			<td>l&atilde;i tức, tiền lời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>81</td>\r\n			<td>意気</td>\r\n			<td>いき</td>\r\n			<td>★</td>\r\n			<td>&yacute; muốn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>82</td>\r\n			<td>囲碁</td>\r\n			<td>いご</td>\r\n			<td>★</td>\r\n			<td>cờ v&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>83</td>\r\n			<td>遺書</td>\r\n			<td>いしょ</td>\r\n			<td>★</td>\r\n			<td>di thư, di ch&uacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>84</td>\r\n			<td>歌詞</td>\r\n			<td>かし</td>\r\n			<td>★</td>\r\n			<td>lời b&agrave;i h&aacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>85</td>\r\n			<td>過度</td>\r\n			<td>かど</td>\r\n			<td>★</td>\r\n			<td>qu&aacute; mức qui định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>86</td>\r\n			<td>可否</td>\r\n			<td>かひ</td>\r\n			<td>★</td>\r\n			<td>tốt v&agrave; xấu, t&aacute;n th&agrave;nh v&agrave; phản đối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>87</td>\r\n			<td>飢餓</td>\r\n			<td>きが</td>\r\n			<td>★</td>\r\n			<td>thiếu ăn, chết đ&oacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>88</td>\r\n			<td>機器</td>\r\n			<td>きき</td>\r\n			<td>★</td>\r\n			<td>thiết bị, m&aacute;y m&oacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>89</td>\r\n			<td>季語</td>\r\n			<td>きご</td>\r\n			<td>★</td>\r\n			<td>từ ngữ theo m&ugrave;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>機種</td>\r\n			<td>きしゅ</td>\r\n			<td>★</td>\r\n			<td>loại m&aacute;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>91</td>\r\n			<td>旗手</td>\r\n			<td>きしゅ</td>\r\n			<td>★</td>\r\n			<td>người cầm cờ hiệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>92</td>\r\n			<td>既知</td>\r\n			<td>きち</td>\r\n			<td>★</td>\r\n			<td>đ&atilde; biết rồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>93</td>\r\n			<td>虚偽</td>\r\n			<td>きょぎ</td>\r\n			<td>★</td>\r\n			<td>giả dối, sai sự thật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>94</td>\r\n			<td>虚無</td>\r\n			<td>きょむ</td>\r\n			<td>★</td>\r\n			<td>hư v&ocirc;, kh&ocirc;ng thực</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>呼気</td>\r\n			<td>こき</td>\r\n			<td>★</td>\r\n			<td>hơi thở</td>\r\n		</tr>\r\n		<tr>\r\n			<td>96</td>\r\n			<td>誤字</td>\r\n			<td>ごじ</td>\r\n			<td>★</td>\r\n			<td>chữ in sai, chữ sai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>97</td>\r\n			<td>語尾</td>\r\n			<td>ごび</td>\r\n			<td>★</td>\r\n			<td>vĩ tố, &acirc;m cuối, chữ tận c&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>98</td>\r\n			<td>差異</td>\r\n			<td>さい</td>\r\n			<td>★</td>\r\n			<td>sự sai kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>99</td>\r\n			<td>時価</td>\r\n			<td>じか</td>\r\n			<td>★</td>\r\n			<td>gi&aacute; hiện tại, gi&aacute; thị trường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>100</td>\r\n			<td>時下</td>\r\n			<td>じか</td>\r\n			<td>★</td>\r\n			<td>thời nay</td>\r\n		</tr>\r\n		<tr>\r\n			<td>101</td>\r\n			<td>時機</td>\r\n			<td>じき</td>\r\n			<td>★</td>\r\n			<td>cơ hội, thời cơ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>102</td>\r\n			<td>次期</td>\r\n			<td>じき</td>\r\n			<td>★</td>\r\n			<td>thời k&igrave; sau, thời tiếp theo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>103</td>\r\n			<td>私語</td>\r\n			<td>しご</td>\r\n			<td>★</td>\r\n			<td>n&oacute;i chuyện ri&ecirc;ng, th&igrave; thầm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>104</td>\r\n			<td>死語</td>\r\n			<td>しご</td>\r\n			<td>★</td>\r\n			<td>từ lỗi thời, tử ngữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>105</td>\r\n			<td>事後</td>\r\n			<td>じご</td>\r\n			<td>★</td>\r\n			<td>xảy ra sau đ&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>106</td>\r\n			<td>私費</td>\r\n			<td>しひ</td>\r\n			<td>★</td>\r\n			<td>tự trả tiền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>107</td>\r\n			<td>自費</td>\r\n			<td>じひ</td>\r\n			<td>★</td>\r\n			<td>tự trả tiền</td>\r\n		</tr>\r\n		<tr>\r\n			<td>108</td>\r\n			<td>首位</td>\r\n			<td>しゅい</td>\r\n			<td>★</td>\r\n			<td>vị tr&iacute; đứng đầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>109</td>\r\n			<td>主旨</td>\r\n			<td>しゅし</td>\r\n			<td>★</td>\r\n			<td>l&iacute; do ch&iacute;nh, &yacute; ch&iacute;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>110</td>\r\n			<td>種子</td>\r\n			<td>しゅし</td>\r\n			<td>★</td>\r\n			<td>hạt giống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>111</td>\r\n			<td>手話</td>\r\n			<td>しゅわ</td>\r\n			<td>★</td>\r\n			<td>ra dấu, ng&ocirc;n ngữ k&iacute; hiệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>112</td>\r\n			<td>書記</td>\r\n			<td>しょき</td>\r\n			<td>★</td>\r\n			<td>ghi ch&eacute;p, thư k&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>113</td>\r\n			<td>齟齬</td>\r\n			<td>そご</td>\r\n			<td>★</td>\r\n			<td>m&acirc;u thuẫn, bất h&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>114</td>\r\n			<td>地価</td>\r\n			<td>ちか</td>\r\n			<td>★</td>\r\n			<td>gi&aacute; đất</td>\r\n		</tr>\r\n		<tr>\r\n			<td>115</td>\r\n			<td>致死</td>\r\n			<td>ちし</td>\r\n			<td>★</td>\r\n			<td>ch&iacute; mạng, g&acirc;y chết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>116</td>\r\n			<td>覇者</td>\r\n			<td>はしゃ</td>\r\n			<td>★</td>\r\n			<td>qu&aacute;n qu&acirc;n, v&ocirc; địch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>117</td>\r\n			<td>馬車</td>\r\n			<td>ばしゃ</td>\r\n			<td>★</td>\r\n			<td>xe ngựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>118</td>\r\n			<td>避暑</td>\r\n			<td>ひしょ</td>\r\n			<td>★</td>\r\n			<td>tr&aacute;nh n&oacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>119</td>\r\n			<td>比喩</td>\r\n			<td>ひゆ</td>\r\n			<td>★</td>\r\n			<td>so s&aacute;nh, v&iacute; von</td>\r\n		</tr>\r\n		<tr>\r\n			<td>120</td>\r\n			<td>部署</td>\r\n			<td>ぶしょ</td>\r\n			<td>★</td>\r\n			<td>cương vị</td>\r\n		</tr>\r\n		<tr>\r\n			<td>121</td>\r\n			<td>不和</td>\r\n			<td>ふわ</td>\r\n			<td>★</td>\r\n			<td>bất h&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>122</td>\r\n			<td>簿記</td>\r\n			<td>ぼき</td>\r\n			<td>★</td>\r\n			<td>l&agrave;m sổ s&aacute;ch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>123</td>\r\n			<td>母語</td>\r\n			<td>ぼご</td>\r\n			<td>★</td>\r\n			<td>tiếng mẹ đẻ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>124</td>\r\n			<td>無期</td>\r\n			<td>むき</td>\r\n			<td>★</td>\r\n			<td>mập mờ, kh&ocirc;ng hạn định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>125</td>\r\n			<td>路地</td>\r\n			<td>ろじ</td>\r\n			<td>★</td>\r\n			<td>đường đi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>126</td>\r\n			<td>和語</td>\r\n			<td>わご</td>\r\n			<td>★</td>\r\n			<td>tiếng Nhật</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 7, 0, 0, 0, 0, 0),
(12, '{N1_Goi_GKK_JP_B01_Quiz_01}', '', 8, 5, 4, 3, 2, 1),
(13, '{N1_Goi_GKK_JP_B01_Mondai}', '', 9, 1, 2, 3, 4, 5),
(14, 'タイトル', '', 10, 1, 1, 1, 1, 1),
(15, 'レッソン１聞き取りにくい音P.0', '<table class=\"Table\" style=\"border-bottom:none; border-left:solid #cccccc 1.0pt; border-right:none; border-top:solid #cccccc 1.0pt; border:none; width:476.25pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:13.5pt\"><span style=\"color:blue\">やること：母音無声化、清濁の区別、「な」「ら」「だ」行の区別、長音、促音、撥音などの音を意識して聞く練習をしましょう。</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">苦手診断</span></span></strong></span></span></p>\r\n\r\n<table class=\"Table\" style=\"border-bottom:none; border-left:solid #cccccc 1.0pt; border-right:none; border-top:solid #cccccc 1.0pt; border:none; width:476.25pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:232.5pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">練習に入る前に、まず、自分の苦手な音は何かを知っておく必要があります。</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">自分にとって聞き取りにくい音は何かを、ここで診断してみましょう。自分の苦手な音がわかることは、聴解の達人になる第一歩です。</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">できなかった問題は、正答の横にある　&rarr;　で示したページで練習しましょう。</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#333333\">Trước khi đi v&agrave;o phần luyện tập, trước ti&ecirc;n cần phải biết được m&igrave;nh dở những &acirc;m n&agrave;o?</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#333333\">Tại đ&acirc;y ch&uacute;ng ta h&atilde;y c&ugrave;ng nhau chẩn đo&aacute;n xem &acirc;m kh&oacute; nghe đối với m&igrave;nh l&agrave; &acirc;m n&agrave;o? Việc biết được những &acirc;m m&igrave;nh dở l&agrave; bước đầu ti&ecirc;n tr&ecirc;n con đường l&agrave;m bạn với m&ocirc;n nghe.</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#333333\">Những b&agrave;i kh&ocirc;ng l&agrave;m được h&atilde;y luyện tập bằng&nbsp; trang c&oacute; đ&aacute;p &aacute;n b&ecirc;n cạnh.</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\">&nbsp;</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:19.5pt\"><span style=\"color:red\">やってみよう！</span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">（　　　）の中に、聞こえた言葉をひらがなで書いてください。</span></span></strong></span></span></p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">例題</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">（　　　　　　　　　　）です。</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">正答　らん（蘭）</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「なん（何）」「だん（段）」ではありません。</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">問題</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">では練習を始めましょう。</span></span></strong></span></p>\r\n', 10, 2, 1, 1, 1, 1),
(16, 'N1_Bunpou_kiteoboeru', '', 12, 1, 1, 1, 1, 2),
(17, '第01回　（文字・語彙）', '', 13, 1, 2, 3, 4, 5);
INSERT INTO `giao_trinh_tab_phu` (`id`, `name`, `note`, `giao_trinh_tab_chinh_id`, `noi_dung`, `cau_hoi`, `phien_am`, `phien_am_nghe`, `dien_tu`) VALUES
(18, '{N1_Goi_GKK_JP_B01_P01}', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:531.2pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#2076b8; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">STT</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#2076b8; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">H&aacute;n tự</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#2076b8; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">Hiragana</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#2076b8; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">重要度</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#2076b8; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">Nghĩa</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">1</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">維持</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">いじ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">duy tr&igrave;</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">2</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">意図</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">いと</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">&yacute; đồ, mục đ&iacute;ch, &yacute; định</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">3</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">寄附</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きふ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">tặng cho, quy&ecirc;n g&oacute;p</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">4</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">拒否</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きょひ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">cự tuyệt, b&aacute;c bỏ</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">5</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">処置</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">しょち</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">xử tr&iacute;, đối xử</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">6</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">阻止</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">そし</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">cản trở, chướng ngại</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">7</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">破棄</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">はき</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">hủy hoại, hủy bỏ</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">8</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">保護</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">ほご</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">bảo hộ</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">9</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">保守</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">ほしゅ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">giữ g&igrave;n, duy tr&igrave;, bảo thủ</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">10</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">加味</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">かみ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">n&ecirc;m th&ecirc;m, th&ecirc;m v&agrave;o</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">11</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">寄与</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きよ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">đ&oacute;ng g&oacute;p</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">12</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">指揮</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">しき</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">chỉ huy</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">13</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">支持</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">しじ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">n&acirc;ng đỡ, duy tr&igrave;</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">14</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">自首</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">じしゅ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">tự th&uacute;</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">15</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">所持</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">しょじ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">sở hữu, t&agrave;i sản</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">16</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">補助</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">ほじょ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">bổ trợ, trợ cấp</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">17</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">麻痺</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">まひ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">t&ecirc; liệt</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">18</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">餓死</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">がし</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">chết đ&oacute;i</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">19</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">帰化</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きか</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">nhập quốc tịch, du nhập</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">20</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">危惧</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きぐ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">sợ sệt</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">21</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">起訴</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きそ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">khởi tố</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">22</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">忌避</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きひ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">n&eacute; tr&aacute;nh, tho&aacute;i th&aacute;c</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">23</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">挙手</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">きょしゅ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">giơ tay</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">24</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">駆使</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">くし</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">tận dụng</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">25</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">駆除</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">くじょ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">loại bỏ</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">26</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">固辞</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">こじ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">từ chối</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:32.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><strong><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">27</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">誇示</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:134.7pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:17.5pt\"><span style=\"color:#444444\">こじ</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:3.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">★</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:7.0cm\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,\"><span style=\"font-size:9.0pt\"><span style=\"color:#444444\">ph&ocirc; trương</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 14, 1, 2, 3, 4, 5);
INSERT INTO `giao_trinh_tab_phu` (`id`, `name`, `note`, `giao_trinh_tab_chinh_id`, `noi_dung`, `cau_hoi`, `phien_am`, `phien_am_nghe`, `dien_tu`) VALUES
(19, 'abc', '<table cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:undefined; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#f6d4a1; width:100.0%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:16.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">１－１同時に二つの動作や状況が進行している時の表現。</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#ff001c\">～　かたがた</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2a9ef7\">Ｎ　</span></span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">かたがた</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">&Yacute; nghĩa &amp; </span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cách dùng</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">～　を兼ねて</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">一つの行為が二つの目的のために行われる時の表現。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Ch&uacute; &yacute;:</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">下の例のほかに　「お礼」「お見舞い」「お詫び」などの限られた名詞と共に用いる。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<div style=\"border-bottom:solid windowtext 1.0pt; padding:0cm 0cm 1.0pt 0cm\">\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n</div>\r\n\r\n<table align=\"left\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; margin-left:6.75pt; margin-right:6.75pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">1.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">無事に　卒業できたので、恩師に報告</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">かたがた</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、手紙を書いた。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">2.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">ご挨拶</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">かたがた</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、伺いました。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">{N1_Bunpou_C01_B01_</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">２　～　かたわら</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">}</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">----------------------------------------------------------</span></span></span></span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:14.22%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:85.78%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#ff001c\">～　かたわら</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:14.22%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:85.78%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖる</span></span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:white\">======</span></span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">かたわら</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｎの</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:14.22%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">&Yacute; nghĩa &amp; Cách dùng</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:85.78%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">～</span></span></span></strong><strong>&nbsp;</strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">－方で</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">何か主なことをしているほかに、もう一つのことを行っている状況を表す。</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">長い間続けていることに用いる場合が多い。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; margin-left:6.75pt; margin-right:6.75pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">1.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">私の母は自分で編み物を習う</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">かたわら</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、人にも教えている。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">2.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">彼は銀行員としての仕事の</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">かたわら</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、作曲もしていました。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">{N1_Bunpou_C01_B01_</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">３　～　がてら</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">}</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">-----------------------------------------</span></span></span></span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#ff001c\">～　がてら</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖ<s>ます</s></span></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2a9ef7\">がてら</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｎ</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">&Yacute; nghĩa &amp;</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cách dùng</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">～　のついでに</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">ある一つの動作をして、もう一つほかの目的も果たすことを表す。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; margin-left:6.75pt; margin-right:6.75pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">1.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">「お近くにお越しの折には、お遊び</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">がてら</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、お寄りください。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">2.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">散歩</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">がてら</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、たばこを買って来よう。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">--------------------------------------------------------</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">{N1_Bunpou_C01_B01_</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">４　～　が早いか</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">}</span></span></span></span></span></p>\r\n\r\n<table cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:undefined; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#f6d4a1; width:100.0%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:16.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">１－２　ほぼ同時に</span></span></span></strong><strong><span style=\"font-size:16.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:red\">また</span></span></span></strong><strong><span style=\"font-size:16.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">は直後に、二つの動作を行ったり、状況が起こったりする時の表現。</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:18.1%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.9%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#ff001c\">～　が早いか</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:18.1%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.9%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖる</span></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:white\">===</span></span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2a9ef7\">が早いか</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖた</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:18.1%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">&Yacute; nghĩa &amp;</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cách dùng</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:81.9%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">～　とすぐに</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">続けてすぐに後の動作をする、あるいはその瞬間に何かが起こる様子を表す。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; margin-left:6.75pt; margin-right:6.75pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">1.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">わたしの顔を見る</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">が早いか</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、彼は性急にしゃべりはじめた。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">2.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">地震だと叫ぶ</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">が早いか</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、子供たちは机の下にもぐり込んだ。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">3.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">ベルが鳴った</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">が早いか</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、生徒たちは教室を飛び出して行った。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">---------------------------------------------</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">{N1_Bunpou_C01_B01_</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">５　～　そばから</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">}</span></span></span></span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#ff001c\">～　そばから</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖる</span></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:white\">====</span></span></span></strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2a9ef7\">そばから</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖた</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">&Yacute; nghĩa &amp;</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cách dùng</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">～とすぐに</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">次々に同じことを繰り返している様子を表す。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">&nbsp;</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:black\">参考：　「はしから」　　＜～とすぐに＞</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:black\">・聞いた</span></span></span></strong><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#993300\">はしから</span></span></span></strong><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:black\">忘れてしまうなんて、我ながら情けないよ。</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; margin-left:6.75pt; margin-right:6.75pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">1.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">庭をきれいに掃く</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">そばから</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">落ち葉が散ってくる。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">2.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">聞いた</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">そばから</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">忘れてしまうなんて、我ながら情けない。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">-------------------------------------------</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">{N1_Bunpou_C01_B01_</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">６　～なり</span></span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">}</span></span></span></span></span></p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Mẫu c&acirc;u</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#ff001c\">～なり</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cấu tr&uacute;c</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">Ｖる</span></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2a9ef7\">なり</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">&Yacute; nghĩa &amp;</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">Cách dùng</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">～とすぐ</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">ある動作に続いてすぐに後の動作をしたり、何か予期しないことが起こる時の表現。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:19.62%\">&nbsp;</td>\r\n			<td style=\"width:80.38%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#990000\">注意：</span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">類語　４　～が早いか・７　～や</span></span></span></strong><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">/　～や否や・★２級　～たとたん（に）。</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; margin-left:6.75pt; margin-right:6.75pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">1.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">友人は部屋に入って来る</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">なり</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、どっかりと腰を下ろした。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:5.36%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">2.</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:94.64%\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">父は深夜に帰宅した弟の顔を見る</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:red\">なり</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Microsoft YaHei&quot;,&quot;sans-serif&quot;\"><span style=\"color:#444444\">、怒鳴りつけた。</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">--------------------------------------</span></span></p>\r\n', 15, 1, 2, 3, 4, 5);
INSERT INTO `giao_trinh_tab_phu` (`id`, `name`, `note`, `giao_trinh_tab_chinh_id`, `noi_dung`, `cau_hoi`, `phien_am`, `phien_am_nghe`, `dien_tu`) VALUES
(20, '紹介', '<p><strong>紹介する</strong></p>\r\n\r\n<p>仕事では、第一印象はとても大切です。自己紹介のしかたや、ほかの人に紹介してもらった時の受け答えで第一印象が決まります。この課では、自社の人や他社の人に初めて会った時にどんな紹介をしたらいいかを勉強します。</p>\r\n\r\n<p><br />\r\n<strong>クイズ</strong></p>\r\n\r\n<p>Ａさんは上司と一緒にＸ社へ行って、Ｘ社の部長にあいさつをします。上司とＸ社の部長は初めて会います。誰を最初に紹介したらいいか考えてください。</p>\r\n', 16, 1, 2, 3, 4, 5),
(21, '表現', '<p><strong>自己紹介する (Tự giới thiệu)</strong></p>\r\n\r\n<p><strong><ins>Cấu Tr&uacute;c 1:</ins></strong></p>\r\n\r\n<p><strong>「名前」&nbsp;&nbsp; &nbsp;と申します&nbsp;</strong>&nbsp; &nbsp;= &nbsp;&nbsp;T&ocirc;i t&ecirc;n l&agrave; _______<br />\r\nでございます</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>~でございます=&nbsp;thường d&ugrave;ng trong trường hợp n&oacute;i chuyện điện thoại với người c&ocirc;ng ty kh&aacute;c, hoặc d&ugrave;ng giới thiệu t&ecirc;n người với c&ocirc;ng ty kh&aacute;c. &Iacute;t d&ugrave;ng trong nội bộ c&ocirc;ng ty hoặc d&ugrave;ng tự giới thiệu với cấp tr&ecirc;n.</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>オリエンタル商事のリビングストンでございます。</p>\r\n\r\n<p><br />\r\n<strong><ins>Cấu Tr&uacute;c 2:</ins></strong></p>\r\n\r\n<p><strong>＿（こと）になります&nbsp;</strong>&nbsp; &nbsp;=&nbsp;&nbsp;Trở n&ecirc;n, được, l&agrave;m h&agrave;nh động n&agrave;o đ&oacute;<br />\r\nLưu &yacute; &amp; V&iacute; dụ</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>Đ&acirc;y l&agrave; c&aacute;ch n&oacute;i khi&ecirc;m nhường ngữ thể hiện một h&agrave;nh động n&agrave;o đ&oacute; của bản th&acirc;n, hoặc thể hiện h&agrave;nh động được quyết định bởi người kh&aacute;c</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>今日から営業３課で働くことになりましたリビングストンと申します。<br />\r\n今日から営業３課に配属になりましたリビングストンと申します。</p>\r\n\r\n<p><strong><ins>Cấu Tr&uacute;c 3:</ins></strong></p>\r\n\r\n<p><strong>よろしくご指導ください。</strong>&nbsp;&nbsp; &nbsp;=&nbsp;&nbsp;Xin h&atilde;y hướng dẫn/ chỉ đạo</p>\r\n\r\n<p>Lưu &yacute; &amp; V&iacute; dụ<br />\r\nĐ&acirc;y l&agrave; mẫu k&iacute;nh ngữ y&ecirc;u cầu người kh&aacute;c l&agrave;m g&igrave;. Lưu &yacute; c&aacute;ch biến đổi động từ th&agrave;nh k&iacute;nh ngữ/khi&ecirc;m nhường ngữ qua &quot;お／ご&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>他社の人にあいさつする(Ch&agrave;o hỏi người c&ocirc;ng ty kh&aacute;c)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>お世話になっております。</p>\r\n			</td>\r\n			<td>\r\n			<p>= &nbsp;Xin được gi&uacute;p đỡ / L&agrave;m phiền anh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nLưu &yacute;:</p>\r\n\r\n<p>C&acirc;u n&agrave;y d&ugrave;ng sau khi đ&atilde; giới thiệu t&ecirc;n họ, c&ocirc;ng ty. V&agrave; c&ograve;n được sử dụng trong văn viết (Mail, thư).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ほかの人を紹介する(Giới thiệu người kh&aacute;c)</strong></p>\r\n\r\n<p><strong>Cấu Tr&uacute;c 1:</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>「自社の人の名前」でございます。</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>= Đ&acirc;y l&agrave; ___________________</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Lưu &yacute; &amp; V&iacute; dụ<br />\r\nLưu &yacute;:</p>\r\n\r\n<p>Lu&ocirc;n n&ecirc;n c&oacute; từ xưng h&ocirc; ph&iacute;a trước như &ldquo;こちら、この方&rdquo; . D&ugrave;ng giới thiệu người thuộc nh&oacute;m/ tổ/ c&ocirc;ng ty của m&igrave;nh. Khi giới thiệu thường&nbsp;&nbsp;c&oacute; th&ecirc;m chức danh để biết được người được giới thiệu l&agrave; cấp tr&ecirc;n hay dưới. Ch&uacute; &yacute;, d&ugrave; kh&ocirc;ng phải l&agrave; bản th&acirc;n m&igrave;nh, nhưng vẫn xem l&agrave; người của nh&oacute;m m&igrave;nh n&ecirc;n bỏ nh&acirc;n xưng &ldquo;さん／様&rdquo; ở ph&iacute;a sau t&ecirc;n.</p>\r\n\r\n<p>V&iacute; dụ</p>\r\n\r\n<p>こちらは営業部部長お長井でございます。</p>\r\n\r\n<p><ins><strong>Cấu Tr&uacute;c 2:</strong></ins></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>「他社の人の名前」様でいらっしゃいます。</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>= Đ&acirc;y l&agrave; ng&agrave;i __________</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Lưu &yacute; &amp; V&iacute; dụ<br />\r\nLưu &yacute;:</p>\r\n\r\n<p>Mẫu n&agrave;y d&ugrave;ng giới thiệu người kh&aacute;c, nhưng l&agrave; người kh&ocirc;ng thuộc nh&oacute;m/ tổ/ c&ocirc;ng ty m&igrave;nh. V&igrave; vậy về mặt ngữ ph&aacute;p ch&uacute;ng ta phải sử dụng k&iacute;nh ngữ.</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>こちらはＸ社の開発部部長の江藤様でいらっしゃいます。</p>\r\n', 16, 1, 2, 3, 4, 5),
(22, 'ビジネスコラム', '<p><strong>名刺交換</strong><br />\r\nビジネスで初対面の人に会った時、名刺交換をします。「ＯＯ社の。。。。と申します」と会社の名前と自分の名前を言いながら、名刺を相手の胸の高さに出して渡します。会社の名前と自分の名前を言ってから、「どうぞよろしくお願いします」と言います。受け取る時、「ちょうだいいたします」と言います。両手で名刺を持って、渡したり受け取ったりするのがいちばんていねいですが、同時にだしてしまったらどうしたらいいでしょうか。相手が名刺を取るのを持ってから受け取ります。相手を優先する気持ちを示すことになります。</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"315\" src=\"/image/images/BUKA_bai1_Koramu.jpg\" width=\"450\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 16, 1, 2, 3, 4, 5),
(23, '談話1- Phần 1', '<p><strong>自己紹介する</strong></p>\r\n\r\n<p><strong>Từ vựng</strong></p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:105pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Mục từ</span></span></span></td>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:24pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Loại</span></span></span></td>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:78pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">H&aacute;n Tự</span></span></span></td>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:67pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">&Acirc;m H&aacute;n</span></span></span></td>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:114pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Nghĩa</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">めいわく</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">迷惑</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">M&Ecirc; HOẶC</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Sự phiền h&agrave;, quấy rầy</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">しどう</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">指導</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">CHỈ ĐẠO</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Chỉ đạo, hướng dẫn</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">てんきん</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">転勤</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">CHUYỂN CẦN</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Chuyển việc (1 c&ocirc;ng ty)</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">けんしゅう</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">研修</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">NGHI&Ecirc;N TU</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Huấn luyện, đ&agrave;o tạo</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">はいぞく</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">配属</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">PHỐI THUỘC</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Bố tr&iacute; nh&acirc;n vi&ecirc;n</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">みょうじ</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">名字</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">DANH TỰ</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Họ</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">たんとう （する）</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n/v</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">担当（する）</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">ĐẢM ĐƯƠNG</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Đảm nhiệm, đảm tr&aacute;ch</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">プロジェクト</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Dự &aacute;n, kế hoạch</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">チーム</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Nh&oacute;m, đội</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">くわわる</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">加わる</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">GIA</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Th&ecirc;m v&agrave;o, gia tăng</span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>B&agrave;i đ&agrave;m thoại</strong></p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/Nhac-chuong-iphone-13-pro-max-mac-dinh.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>＜社内で＞</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:none; width:461pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:47pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Ａ：</span></span></span></td>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:414pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">(1)今日から営業３課で働くことになりましたリビングストンと申します。</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Ｂ：</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">かわだです。よろしくお願いいたします。</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Ａ：</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">(2)ごめいわくをおかけすることもあるかとおもいますが、よろしくご指導ください。</span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>B&agrave;i giảng</strong><br />\r\nT&igrave;nh huống:</p>\r\n\r\n<p>Đ&acirc;y l&agrave; mẫu đối thoại d&ugrave;ng cho trường hợp nh&acirc;n vi&ecirc;n mới bắt đầu v&agrave;o l&agrave;m việc tại một ph&ograve;ng ban n&agrave;o đ&oacute; trong c&ocirc;ng ty.</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>Ch&uacute; &yacute; rằng đối với trường hợp l&agrave; người mới l&uacute;c n&agrave;o cũng cần sử dụng k&iacute;nh ngữ đối với những nh&acirc;n vi&ecirc;n đ&atilde; đang l&agrave;m việc nhằm thể hiện sự t&ocirc;n trọng. Nhưng người được xem như l&agrave; người đi trước ( người đang l&agrave;m việc tại c&ocirc;ng ty ) c&oacute; thể d&ugrave;ng c&aacute;ch n&oacute;i th&ocirc;ng thường, kh&ocirc;ng nhất thiết phải d&ugrave;ng k&iacute;nh ngữ.</p>\r\n\r\n<p>Ngữ ph&aacute;p:</p>\r\n\r\n<p>Ph&iacute;a nh&acirc;n vi&ecirc;n mới:</p>\r\n\r\n<p>A. Sử dụng khi&ecirc;m nhường ngữ cho những g&igrave; thuộc về m&igrave;nh.</p>\r\n\r\n<p>+ C&aacute;ch giới thiệu về bản th&acirc;n: Trước hết l&agrave; giới thiệu t&ecirc;n v&agrave; l&yacute; do của sự giới thiệu/ gặp mặt ( Ho&agrave;n cảnh bản th&acirc;n ). C&oacute; thể t&aacute;ch c&acirc;u hoặc gộp chung lại như phần kaiwa (Ch&uacute; &yacute; phần l&yacute; do sẽ bổ nghĩa cho phần t&ecirc;n giới thiệu ở vế sau).</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>今日から営業３課で働くことになりました&nbsp;&nbsp;リビングストンと申します。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&darr;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&darr;</p>\r\n\r\n<p>L&yacute; do của sự giới thiệu/ gặp mặt &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T&ecirc;n</p>\r\n\r\n<p>+ N&oacute;i về h&agrave;nh động, suy nghĩ, &yacute; kiến của bản th&acirc;n: thường xuy&ecirc;n d&ugrave;ng mẫu &ldquo;とおもいます&rdquo;</p>\r\n\r\n<p>+ Ch&uacute; &yacute; c&aacute;c cụm từ như :&nbsp;&nbsp;&ldquo;ごめいわく&rdquo; 、&ldquo;おかけする&rdquo;、&ldquo;ご指導&rdquo;</p>\r\n\r\n<p>+ Lưu &yacute; l&agrave; thường khi thể hiện &yacute; khi&ecirc;m nhường th&igrave; kh&ocirc;ng d&ugrave;ng trực tiếp động từ m&agrave; thường sẽ chuyển th&agrave;nh cụm danh từ:</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>今日から営業３課で働く&rarr; 今日から営業３課で働くこと</p>\r\n\r\n<p>ごめいわくをおかけする&rarr; ごめいわくをおかけすること</p>\r\n\r\n<p>B. Sử dụng k&iacute;nh ngữ khi n&oacute;i đến h&agrave;nh động của người kh&aacute;c:</p>\r\n\r\n<p>(Trong mẫu n&agrave;y l&agrave; việc y&ecirc;u cầu người kh&aacute;c l&agrave;m g&igrave;.)</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>お／ご　＋　V　＋　ください</strong></span></p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>ご指導&nbsp;&nbsp;ください= Xin h&atilde;y chỉ đạo/ hướng dẫn</p>\r\n\r\n<p>ご覧　&nbsp;&nbsp;&nbsp;ください= Xin h&atilde;y xem/ Vui l&ograve;ng xem</p>\r\n\r\n<p>ご確認　ください= Xin h&atilde;y x&aacute;c nhận/ Vui l&ograve;ng x&aacute;c nhận</p>\r\n\r\n<p>お持ち&nbsp;&nbsp;&nbsp;ください= Xin h&atilde;y mang theo/ Vui l&ograve;ng mang theo</p>\r\n\r\n<p>お伝え&nbsp;&nbsp;&nbsp;ください= Xin h&atilde;y truyền đạt/ Vui l&ograve;ng truyền đạt</p>\r\n\r\n<p>Luyện tập</p>\r\n\r\n<p>(C&aacute;c bạn thay thế c&aacute;c vị tr&iacute; (1) &amp; (2) v&agrave;o b&agrave;i đ&agrave;m thoại b&ecirc;n dưới. Luyện tập với c&aacute;c mẫu đ&agrave;m thoại n&agrave;y.)</p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>Ａ：&nbsp;&nbsp; &nbsp;(1)今日から営業３課で働くことになりましたリビングストンと申します。<br />\r\nＢ：&nbsp;&nbsp; &nbsp;かわだです。よろしくお願いいたします。<br />\r\nＡ：&nbsp;&nbsp; &nbsp;(2)ごめいわくをおかけすることもあるかとおもいますが、よろしくご指導ください。</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"khung\" style=\"height:192px; width:610px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong><span style=\"font-size:18px\">例</span></strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_1a_rei.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(1)今日から営業３課で働くこと</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:311px; opacity:0; top:2573px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">L&agrave;m việc ở ph&ograve;ng kinh doanh 3 từ h&ocirc;m nay</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(2)ご迷惑をおかける</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:804px; opacity:0; top:2571px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">L&agrave;m phiền</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_1a_1.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(1)大阪から転勤</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:324px; opacity:0; top:2614px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">Chuyển c&ocirc;ng t&aacute;c từ Osaka</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(2)いろいろお伺いする</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:641px; opacity:0; top:2635px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">Hỏi nhiều việc</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_1a_2.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(1)こちらで６か月間研修を受けること</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:497px; opacity:0; top:2668px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">Được nghi&ecirc;n cứu 6 th&aacute;ng ở đ&acirc;y</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(2)日本語を間違える</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:740px; opacity:0; top:2682px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">Nhầm (Sai) tiếng Nhật</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_1a_3.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(1)今日から営業３課に配属 </span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:394px; opacity:0; top:2718px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">Bố tr&iacute; ở ph&ograve;ng kinh doanh 3 từ h&ocirc;m nay</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div class=\"tudich\">\r\n			<div class=\"candich\" style=\"background:none; color:#333333\"><span style=\"font-size:18px\">(2)失礼な日本語を使う</span></div>\r\n\r\n			<div class=\"kqdich\" style=\"display:none; left:819px; opacity:0; top:2728px\">\r\n			<div class=\"nddich\"><span style=\"font-size:14px\">D&ugrave;ng những tiếng Nhật c&ograve;n thất lễ</span></div>\r\n			</div>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 17, 1, 2, 3, 4, 5),
(24, '談話1- Phần 2', '<p><strong>自己紹介する</strong></p>\r\n\r\n<p><strong>B&agrave;i đ&agrave;m thoại</strong></p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>A：今日からこちらで研修をうけることになったリビングストンです。イギリスから参りました。 どうぞよろしくお願いいたします。リビングストンは名字ですが、言いにくい方はダニーと呼んでください。</p>\r\n\r\n<p>B&agrave;i giảng</p>\r\n\r\n<p>T&igrave;nh huống:</p>\r\n\r\n<p>L&agrave; một đoạn hội thoại ngắn tự giới thiệu về bản th&acirc;n với mọi người/ nhiều người.</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>Ch&uacute; &yacute; rằng đối với trường hợp l&agrave; người mới l&uacute;c n&agrave;o cũng cần sử dụng k&iacute;nh ngữ đối với những nh&acirc;n vi&ecirc;n đ&atilde; đang l&agrave;m việc nhằm thể hiện sự t&ocirc;n trọng, v&agrave; sử dụng thể khi&ecirc;m nhường đối với ch&iacute;nh bản th&acirc;n m&igrave;nh.</p>\r\n\r\n<p>Ngữ ph&aacute;p:</p>\r\n\r\n<p>- Lưu &yacute; l&agrave; thường khi thể hiện &yacute; khi&ecirc;m nhường th&igrave; kh&ocirc;ng d&ugrave;ng trực tiếp động từ m&agrave; thường sẽ chuyển th&agrave;nh cụm danh từ:</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>今日からこちらで研修を受ける&rarr; 今日からこちらで研修を受けること</p>\r\n\r\n<p>- Đối với c&aacute;ch n&oacute;i khi&ecirc;m nhường ngữ, th&ocirc;ng thường d&ugrave;ng những từ ngữ thể hiện sự bị động trong sự việc/ h&agrave;nh động của bản th&acirc;n người n&oacute;i. Mang h&agrave;m &yacute; &ldquo;được, nhận&rdquo; từ người kh&aacute;c.</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>うける、ことになる、に決められる</p>\r\n\r\n<p>- C&aacute;ch chia ở thể khi&ecirc;m nhường ngữ:</p>\r\n\r\n<p>+ Danh động từ + いたします</p>\r\n\r\n<p>+ C&aacute;c động từ đặc biệt: 参ります、申します、拝見します</p>\r\n\r\n<p>(C&aacute;c bạn thay thế c&aacute;c cụm từ sau v&agrave;o b&agrave;i đ&agrave;m thoại b&ecirc;n dưới. Luyện tập với c&aacute;c mẫu đ&agrave;m thoại n&agrave;y.)</p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>A：今日からこちらで研修をうけることになったリビングストンです。イギリスから参りました。 どうぞよろしくお願いいたします。リビングストンは名字ですが、言いにくい方はダニーと呼んでください。<br />\r\n&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>例</p>\r\n			</td>\r\n			<td>mp3</td>\r\n			<td>\r\n			<p>こちらで研修を受けること</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>今日から営業３課に配属</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>今度、営業担当</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>今日からこちらの課でみなさんと一緒に仕事をすること</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 17, 1, 2, 3, 4, 5),
(25, '談話2', '<p>他社の人にあいさつする</p>\r\n\r\n<p>Từ vựng</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:none; width:403pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:103pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Mục từ</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap; width:38pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Từ Loại</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap; width:53pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">H&aacute;n Tự</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap; width:110pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">&Acirc;m H&aacute;n</span></span></span></td>\r\n			<td style=\"height:15.0pt; text-align:center; vertical-align:middle; white-space:nowrap; width:99pt\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Nghĩa</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">せわ</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">世話</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">THẾ THOẠI</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Quan t&acirc;m, chăm s&oacute;c</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">しんせいひん</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">新製品</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">T&Acirc;N CHẾ PHẨM</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Sản phẩm mới</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">きかく</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">企画</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">X&Iacute; HỌA</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Kế hoạch</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">ちく</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">地区</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">ĐỊA KHU</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">V&ugrave;ng, khu vực</span></span></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">しじょうちょうさ</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">n</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">市場調査</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">THỊ TRƯỜNG ĐIỀU TRA</span></span></span></td>\r\n			<td style=\"height:15.0pt; vertical-align:bottom; white-space:nowrap\"><span style=\"font-size:11pt\"><span style=\"color:black\"><span style=\"font-family:Calibri,sans-serif\">Điều tra thị trường</span></span></span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>B&agrave;i đ&agrave;m thoại</p>\r\n\r\n<p>file mp3</p>\r\n\r\n<p>Ａ：&nbsp;&nbsp; &nbsp;(1)御社を担当させていただきますオリエンタル商事のリビングストンでございます。どうぞよろしくお願いいたします。<br />\r\nB：&nbsp;&nbsp; &nbsp;あ、リビングストンさんですか。いつもお世話になっております。(2)営業部の木村でごさいます。こちらこそどうぞよろしくお願いいたします。</p>\r\n\r\n<p>B&agrave;i giảng</p>\r\n\r\n<p>T&igrave;nh huống:</p>\r\n\r\n<p>L&agrave; mẫu hội thoại d&ugrave;ng cho trường hợp nh&acirc;n vi&ecirc;n (chưa biết mặt nhau) của 2 c&ocirc;ng ty kh&aacute;c nhau ch&agrave;o hỏi.&nbsp;</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>Lu&ocirc;n sử dụng k&iacute;nh ngữ đối với người ở c&ocirc;ng ty kh&aacute;c (trừ trường hợp đ&atilde; th&acirc;n thiết). Ngo&agrave;i ra, với lần đầu gặp mặt, ngo&agrave;i việc giới thiệu t&ecirc;n, c&ocirc;ng ty, n&ecirc;n giới thiệu cả vị tr&iacute;, bộ phận hoặc c&ocirc;ng việc m&igrave;nh đang đảm nhiệm.</p>\r\n\r\n<p>Ngữ ph&aacute;p:</p>\r\n\r\n<p>Lưu &yacute; c&aacute;c mẫu ngữ ph&aacute;p d&ugrave;ng trong k&iacute;nh ngữ:</p>\r\n\r\n<p>1. V + させていただく : Được ai cho m&igrave;nh l&agrave;m g&igrave; - Thường d&ugrave;ng với người ở bậc tr&ecirc;n, hoặc d&ugrave;ng để xin ph&eacute;p điều g&igrave; đ&oacute;. Thể hiện sự biết ơn.</p>\r\n\r\n<p>V&iacute; dụ:</p>\r\n\r\n<p>すみませんが、今日は急に用事がありますので、早く帰らせていただけませんか。<br />\r\n2. Cụm danh từ: Th&ocirc;ng thường khi bổ nghĩa cho danh từ đứng sau, động từ/t&iacute;nh từ ở ph&iacute;a trước sẽ được chuyển th&agrave;nh thể r&uacute;t gọn. Tuy nhi&ecirc;n trong trường hợp lịch sự vẫn c&oacute; thể để nguy&ecirc;n thể ます形 .</p>\r\n\r\n<p>Luyện tập</p>\r\n\r\n<p>(C&aacute;c bạn h&atilde;y thay đổi cụm từ (1) để th&agrave;nh thể ph&ugrave; hợp v&agrave;o trong đoạn văn trước khi nghe. Luyện tập với c&aacute;c mẫu đ&agrave;m thoại n&agrave;y với c&aacute;c File nghe.)</p>\r\n\r\n<p>file .mp3</p>\r\n\r\n<p>Ａ：&nbsp;&nbsp; &nbsp;(1)御社を担当させていただきますオリエンタル商事のリビングストンでございます。どうぞよろしくお願いいたします。<br />\r\nB：&nbsp;&nbsp; &nbsp;あ、リビングストンさんですか。いつもお世話になっております。(2)営業部の木村でごさいます。こちらこそどうぞよろしくお願いいたします。</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"khung\" style=\"height:472px; width:610px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong><span style=\"font-size:18px\">例</span></strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_2_rei.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:18px\">(1)御社を担当する</span></td>\r\n			<td><span style=\"font-size:18px\">(2)営業部</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Đ&aacute;p &aacute;n:</td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:18px\">(1)御社を担当させていただきます</span></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_2_1.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:18px\">(1)新製品の企画を担当する&nbsp;&nbsp; </span></td>\r\n			<td><span style=\"font-size:18px\">(2)開発部</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Đ&aacute;p &aacute;n:</td>\r\n			<td>&nbsp;</td>\r\n			<td><input type=\"text\" value=\"新製品の企画を担当させていただきます\" /><input type=\"text\" /><input type=\"button\" value=\"\" /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_2_2.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:18px\">(1)この地区を担当している&nbsp; </span></td>\r\n			<td><span style=\"font-size:18px\">(2)経理部</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Đ&aacute;p &aacute;n:</td>\r\n			<td>&nbsp;</td>\r\n			<td><input type=\"text\" value=\"この地区を担当しております\" /><input type=\"text\" /><input type=\"button\" value=\"\" /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td>\r\n			<div class=\"playwrap\">\r\n			<audio src=\"Audio/FD3/BUKA_BAI1_2_3.mp3\">&nbsp;</audio>\r\n			</div>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:18px\">(1)市場調査を担当している&nbsp; </span></td>\r\n			<td><span style=\"font-size:18px\">(2)総務部</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Đ&aacute;p &aacute;n:</td>\r\n			<td>&nbsp;</td>\r\n			<td><input type=\"text\" value=\"市場調査を担当しております\" /><input type=\"text\" /><input type=\"button\" value=\"\" /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 17, 1, 2, 3, 4, 5),
(26, '談話3', '', 17, 1, 2, 3, 4, 5),
(27, '1', '', 18, 1, 2, 3, 4, 5),
(28, '1月ー１', '<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/1%20-%201%20-%20Kotoba.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>日本には伝統的なお正月の習慣もありますが、最近は、神社に初詣に行く人、親戚が集まってお祝いをする人、お正月休みに旅行をする人、テレビを見てのんびり過ごす人など、さまざまです。また、お店はお正月気分で、にぎやかに初売りをします。</p>\r\n\r\n<p>立ったり座ったりみんなでお祝い!</p>\r\n\r\n<p>元旦に初詣に行った。毎年、家族で明治神宮に行く。31日の夜中から多くの人が参拝に出かけてくる。境内に入る前に、もう行列ができていた。<strong>爪先立ちをして</strong>前のほうを見たが、どんなに<strong>背伸びして</strong>みても一番前までは見えない。一番込んでいるときは10分以上も全く動けず、<strong>突っ立った</strong>ままで待たされることもあるらしい。三が日だけで約300万人が参拝するそうだ。</p>\r\n\r\n<p>初詣の後は、おじいさんの家に親戚がみんな集まって新年会をする。おじいさんの前で<strong>正座して</strong>、新年の挨拶をした。おばあさんは足が悪いのでいすに<strong>腰掛けて</strong>、孫たちにお年玉を渡している。僕は足がしびれたので、すぐ<strong>あぐらをかいて座り</strong>、妹の睦子は<strong>横座りをした</strong>。おばさんたちは次々におせち料理を運んで忙しそうにしているが、おじさんたちは、もうコタツの周りに<strong>座り込んで</strong>、飲んだり食べたりしている。子供たちはテレビの前に<strong>膝を抱えて座って</strong>、お正月恒例の駅伝競走を見ている。今年も皆にとってよい一年になりますように！</p>\r\n', 25, 1, 2, 3, 4, 5),
(29, '文章の文法', '', 26, 1, 2, 3, 4, 5),
(30, 'P1', '<p><span style=\"color:#e74c3c\"><span style=\"font-size:22px\">清濁の区別の問題</span></span></p>\r\n\r\n<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"color:#333333\">「か」 行と「が」行、「さ」行と「ざ」行、「た」行と「だ」行の音は、母語によってどちらか判断しにくい人がいます。特に単語の途中にこ のような音があると、聞き取りにくいことがあります。なかなか判断できるようにならないかもしれませんが、意識して発音すること、注意して聞くことで、少 しずつできるようになるでしょう。</span></strong></span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;<span style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"color:#333333\">Giống như từ 「き」của 「きかい」, 「つ」của 「つける」、「き」「し」「ち」「ひ」「ぴ」 của cột い&nbsp; v&agrave;&nbsp; 「く」「す」「つ」「ふ」「ぷ」của cột う , khi đứng trước c&aacute;c h&agrave;ng 「か」 「さ」「た」「は」「ぱ」、th&igrave; nguy&ecirc;n &acirc;m &ldquo;i&rdquo; hay l&agrave;&nbsp; &ldquo;u&rdquo;...sẽ trở n&ecirc;n nhỏ đi giống như l&agrave; th&igrave; th&agrave;o rất l&agrave; kh&oacute; nghe. Đ&acirc;y gọi l&agrave; hiện tượng &quot; V&ocirc; Thanh H&oacute;a Nguy&ecirc;n &Acirc;m&quot;.</span></strong></span></span></span></p>\r\n\r\n			<p><span style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"color:#333333\">Độ nhỏ đi sẽ kh&aacute;c nhau t&ugrave;y theo từng người v&igrave; vậy c&oacute; người ph&aacute;t &acirc;m nghe rất r&otilde; nhưng cũng c&oacute; người ph&aacute;t &acirc;m nghe kh&ocirc;ng r&otilde; lắm. Cũng c&oacute; trường hợp&nbsp; m&igrave;nh tưởng l&agrave; m&igrave;nh nghe thấy nhưng thực ra m&igrave;nh lại kh&ocirc;ng nghe r&otilde; được. H&atilde;y nghe một c&aacute;ch cẩn thận!</span></strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:19.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:red\">練習してみよう！</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;\"><span style=\"color:#333333\">（　　　）の中に、聞こえた言葉をひらがなで書いてください。</span></span></span></strong></span></span></p>\r\n\r\n<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p><big>例題</big></p>\r\n\r\n<p><big>（　　　　　　　　　　　）です。</big></p>\r\n\r\n<p><big>正答　くすり（薬）</big></p>\r\n\r\n<p><big>解説「く」は、「さ」行の「す」の前にあるので、母音&ldquo;u&rdquo;が無声化します。</big></p>\r\n\r\n<p><big>問題</big></p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, 1, 2, 3, 4, 5),
(31, 'P2', '', 10, 1, 2, 3, 4, 5),
(32, 'P3', '', 10, 1, 2, 3, 4, 5),
(33, 'P4', '', 10, 1, 2, 3, 4, 5),
(34, 'P5', '', 10, 1, 2, 3, 4, 5),
(35, '読解問題', '', 27, 1, 2, 3, 4, 5),
(36, 'trac nghiem', '', 29, 1, 2, 3, 4, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ket_qua_kiem_tra`
--

CREATE TABLE `ket_qua_kiem_tra` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ngay` datetime NOT NULL,
  `tong` int(11) NOT NULL,
  `dung` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ket_qua_kiem_tra`
--

INSERT INTO `ket_qua_kiem_tra` (`id`, `user_id`, `ngay`, `tong`, `dung`, `name`) VALUES
(1, 3, '2021-10-16 08:51:42', 4, 2, 'Nhóm câu đố số một'),
(2, 3, '2022-07-30 16:03:56', 6, 0, '   文法形式の判断 (Ngữ pháp)'),
(3, 3, '2022-07-30 16:12:51', 6, 0, '   文法形式の判断 (Ngữ pháp)'),
(4, 3, '2022-07-30 16:12:55', 0, 0, '   言い換え類義 & 用法'),
(5, 3, '2022-08-04 10:24:23', 6, 2, '   文法形式の判断 (Ngữ pháp)'),
(6, 3, '2022-08-04 10:24:33', 6, 0, '   文法形式の判断 (Ngữ pháp)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_quyen`
--

CREATE TABLE `khach_quyen` (
  `id` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `giao_trinh_bai` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khach_quyen`
--

INSERT INTO `khach_quyen` (`id`, `ip`, `giao_trinh_bai`, `ngay`) VALUES
(2, '118.71.168.197', '[\"7\",\"8\",\"9\",\"46\"]', '2022-03-26'),
(3, '14.248.147.125', '[\"7\"]', '2022-06-14'),
(4, '139.99.62.149', '[\"70\"]', '2022-06-27'),
(5, '116.101.228.31', '[\"70\"]', '2022-06-27'),
(6, '117.7.143.182', '[\"70\",\"44\"]', '2022-07-01'),
(7, '113.164.233.26', '[\"7\"]', '2022-07-19'),
(8, '116.107.253.105', '[\"7\",\"63\",\"64\",\"65\",\"66\"]', '2022-07-24'),
(9, '123.16.229.20', '[\"7\"]', '2022-07-30'),
(10, '81.19.136.20', '[\"6\",\"3\",\"1\",\"2\",\"4\",\"5\"]', '2022-08-19'),
(11, '222.252.92.165', '[\"7\"]', '2022-12-20'),
(12, '116.97.108.205', '[\"7\",\"55\"]', '2023-01-01'),
(13, '116.97.108.240', '[\"55\"]', '2023-01-01'),
(14, '15.235.162.57', '[\"7\"]', '2023-01-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_hoat_dong`
--

CREATE TABLE `lich_su_hoat_dong` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lich_su_hoat_dong`
--

INSERT INTO `lich_su_hoat_dong` (`id`, `user_id`, `ip`, `ngay`) VALUES
(1, 3, '123.16.152.93', '2021-10-14 16:57:30'),
(2, 3, '123.16.152.93', '2021-10-15 09:57:35'),
(3, 3, '123.16.152.93', '2021-10-15 10:54:08'),
(4, 3, '123.16.152.93', '2021-10-16 08:51:33'),
(6, 3, '222.252.92.15', '2022-03-22 17:37:33'),
(7, 8, '116.101.224.102', '2022-04-25 05:17:38'),
(8, 8, '116.101.224.102', '2022-04-25 05:19:34'),
(9, 3, '14.248.147.125', '2022-06-14 14:03:31'),
(10, 7, '116.107.253.105', '2022-07-24 08:16:42'),
(11, 3, '123.16.229.20', '2022-07-29 15:02:44'),
(12, 3, '123.16.229.20', '2022-07-30 09:30:24'),
(13, 3, '123.16.229.20', '2022-08-04 10:24:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19'),
(5, 'tuấn', 'tuan@gmail.com', '0123', '', '123', '2018-08-24 12:15:54'),
(6, '', '', '', '', '', '2019-12-18 03:14:37'),
(7, 'ádldahk', 'asdasdasd@dsdad.com', '132413213213', '', 'Chỉ là một lượt test\r\n', '2019-12-23 03:53:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luu_cau_de_thi`
--

CREATE TABLE `luu_cau_de_thi` (
  `id` int(11) NOT NULL,
  `luu_nhom_de_thi_id` int(11) NOT NULL,
  `cau_1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `chon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_cau` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `luu_cau_de_thi`
--

INSERT INTO `luu_cau_de_thi` (`id`, `luu_nhom_de_thi_id`, `cau_1`, `cau_2`, `cau_3`, `cau_4`, `chon`, `ma_cau`, `name`) VALUES
(1, 1, 'くもり', 'ゆき', 'あめ', 'はれ', 'はれ', 1, 'あしたは　雨です。\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luu_de_thi`
--

CREATE TABLE `luu_de_thi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `luu_de_thi`
--

INSERT INTO `luu_de_thi` (`id`, `user_id`, `name`, `ngay`) VALUES
(1, 3, 'Đề thi N1', '2021-09-16 11:47:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luu_nhom_de_thi`
--

CREATE TABLE `luu_nhom_de_thi` (
  `id` int(11) NOT NULL,
  `luu_de_thi_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `luu_nhom_de_thi`
--

INSERT INTO `luu_nhom_de_thi` (`id`, `luu_de_thi_id`, `name`) VALUES
(1, 1, 'もんだい１_________の　ことばは　ひらがなで　どう　かきますか。１·２·３·４から　いちばん　いい　ものを　ひとつ　えらんで　ください。');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(147, 'Đề luyện thi N1', 1, 8, 'de-thi/1', 0, 0, 0, 0, 0, 1, 263, 0, 0, NULL),
(153, 'Liên hệ', 10, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'GIỚI THIỆU', 2, 13, '', 0, 0, 0, 35, 0, 1, 0, 0, 0, NULL),
(164, 'Tin tức', 9, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(261, 'Tài liệu', 6, 8, 'tai-lieu', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(262, 'Học Online với GV', 3, 3, '', 101, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(263, 'Đề thi online', 5, 8, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(264, 'Đăng ký VIP', 7, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(265, 'Tìm kiếm', 8, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(266, 'Lớp N1 Online', 1, 4, '', 0, 0, 274, 0, 0, 1, 262, 0, 0, NULL),
(267, 'Lớp N2 online', 2, 4, '', 0, 0, 273, 0, 0, 1, 262, 0, 0, NULL),
(268, 'Lớp N3 online', 3, 4, '', 0, 0, 272, 0, 0, 1, 262, 0, 0, NULL),
(269, 'Lớp N4 online', 4, 4, '', 0, 0, 271, 0, 0, 1, 262, 0, 0, NULL),
(270, 'Lớp N5 online', 5, 4, '', 0, 0, 270, 0, 0, 1, 262, 0, 0, NULL),
(271, 'Học theo cấp độ', 4, 3, '', 102, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(272, 'Cấp độ N1', 1, 4, '', 0, 0, 269, 0, 0, 1, 271, 0, 0, NULL),
(273, 'Cấp độ N2', 2, 4, '', 0, 0, 268, 0, 0, 1, 271, 0, 0, NULL),
(274, 'Cấp độ N3', 3, 4, '', 0, 0, 266, 0, 0, 1, 271, 0, 0, NULL),
(275, 'Cấp độ N4', 4, 4, '', 0, 0, 264, 0, 0, 1, 271, 0, 0, NULL),
(276, 'Cấp độ N5', 5, 4, '', 0, 0, 261, 0, 0, 1, 271, 0, 0, NULL),
(277, 'Đề luyện thi N2', 2, 8, 'de-thi/2', 0, 0, 0, 0, 0, 1, 263, 0, 0, NULL),
(278, 'Đề luyện thi N3', 3, 8, 'de-thi/3', 0, 0, 0, 0, 0, 1, 263, 0, 0, NULL),
(279, 'Đề thi JLPT N1', 4, 8, 'de-thi/1', 0, 0, 0, 0, 0, 1, 263, 0, 0, NULL),
(280, 'Đề thi JLPT N2', 5, 8, 'de-thi/1', 0, 0, 0, 0, 0, 1, 263, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(271, 'vn', 'Đề luyện thi N1', 0, 'de-thi/1', 147),
(272, 'en', 'Sản phẩm', 0, '', 147),
(283, 'vn', 'Liên hệ', 0, '', 153),
(284, 'en', 'Liên hệ', 0, '', 153),
(287, 'vn', 'GIỚI THIỆU', 0, '', 155),
(288, 'en', 'GIỚI THIỆU', 0, '', 155),
(305, 'vn', 'Tin tức', 0, '', 164),
(306, 'en', 'Tin tức', 0, '', 164),
(515, 'vn', 'Tài liệu', 0, 'tai-lieu', 261),
(516, 'en', 'Tuyển dụng', 0, '', 261),
(517, 'vn', 'Học Online với GV', 0, '', 262),
(518, 'en', 'Học Online với GV', 0, '', 262),
(519, 'vn', 'Đề thi online', 0, '', 263),
(520, 'en', 'Đề thi online', 0, 'de-thi', 263),
(521, 'vn', 'Đăng ký VIP', 0, '', 264),
(522, 'en', 'Đăng ký VIP', 0, '', 264),
(523, 'vn', 'Tìm kiếm', 0, '', 265),
(524, 'en', 'Tìm kiếm', 0, '', 265),
(525, 'vn', 'Lớp N1 Online', 0, '', 266),
(526, 'en', 'Lớp N1 Online', 0, '', 266),
(527, 'vn', 'Lớp N2 online', 0, '', 267),
(528, 'en', 'Lớp N2 online', 0, '', 267),
(529, 'vn', 'Lớp N3 online', 0, '', 268),
(530, 'en', 'Lớp N3 online', 0, '', 268),
(531, 'vn', 'Lớp N4 online', 0, '', 269),
(532, 'en', 'Lớp N4 online', 0, '', 269),
(533, 'vn', 'Lớp N5 online', 0, '', 270),
(534, 'en', 'Lớp N5 online', 0, '', 270),
(535, 'vn', 'Học theo cấp độ', 0, '', 271),
(536, 'en', 'Học theo cấp độ', 0, '', 271),
(537, 'vn', 'Cấp độ N1', 0, '', 272),
(538, 'en', 'Cấp độ N1', 0, '', 272),
(539, 'vn', 'Cấp độ N2', 0, '', 273),
(540, 'en', 'Cấp độ N2', 0, '', 273),
(541, 'vn', 'Cấp độ N3', 0, '', 274),
(542, 'en', 'Cấp độ N3', 0, '', 274),
(543, 'vn', 'Cấp độ N4', 0, '', 275),
(544, 'en', 'Cấp độ N4', 0, '', 275),
(545, 'vn', 'Cấp độ N5', 0, '', 276),
(546, 'en', 'Cấp độ N5', 0, '', 276),
(547, 'vn', 'Đề luyện thi N2', 0, 'de-thi/2', 277),
(548, 'en', 'Đề luyện thi N2', 0, 'de-thi/2', 277),
(549, 'vn', 'Đề luyện thi N3', 0, 'de-thi/3', 278),
(550, 'en', 'Đề luyện thi N3', 0, 'de-thi/3', 278),
(551, 'vn', 'Đề thi JLPT N1', 0, 'de-thi/1', 279),
(552, 'en', 'Đề thi JLPT N1', 0, 'de-thi/1', 279),
(553, 'vn', 'Đề thi JLPT N2', 0, 'de-thi/1', 280),
(554, 'en', 'Đề thi JLPT N2', 0, 'de-thi/1', 280);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(160, 'The standard Lorem Ipsum passage', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'tin-tuc-2.jpg', 0, 0, '', '2021-09-14 18:09:02', '2021-09-14 18:09:17', 1, '', '', '', '', '', 'The standard Lorem Ipsum passage', '', 'the-standard-lorem-ipsum-passage', '', 1),
(161, 'The standard Lorem Ipsum passage', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'tin-tuc-2.jpg', 0, 0, '', '2021-09-14 18:09:41', NULL, 1, '', '', '', '', '', 'The standard Lorem Ipsum passage', '', 'the-standard-lorem-ipsum-passage-1', '', 1),
(162, 'The standard Lorem Ipsum passage', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'tin-tuc-2.jpg', 0, 0, '', '2021-09-14 18:09:00', NULL, 1, '', '', '', '', '', 'The standard Lorem Ipsum passage', '', 'the-standard-lorem-ipsum-passage-2', '', 1),
(163, 'Hướng dẫn nâng cấp thành viên Vip', '* Quyền lợi thành viên VIP:\r\n\r\n+ Được xem tất cả các phần học bao gồm: Phần học theo giáo trình, các khóa học có ghi dành cho thành viên VIP, các đề luyện thi, các đề thi...\r\n\r\n+ Xem các bài học không giới hạn lượt xem, bài xem các cấp độ N5, N4, N3, N2, N1 (trong thời gian tài khoản còn ngày VIP).', '<h1>Bảng học ph&iacute; n&acirc;ng cấp VIP</h1>\r\n\r\n<p><strong>* Quyền lợi th&agrave;nh vi&ecirc;n VIP:</strong></p>\r\n\r\n<p>+ Được xem tất cả c&aacute;c phần học bao gồm: Phần học theo gi&aacute;o tr&igrave;nh, c&aacute;c kh&oacute;a học c&oacute; ghi d&agrave;nh cho th&agrave;nh vi&ecirc;n VIP, c&aacute;c đề luyện thi, c&aacute;c đề thi...</p>\r\n\r\n<p>+ Xem c&aacute;c b&agrave;i học kh&ocirc;ng giới hạn lượt xem, b&agrave;i xem c&aacute;c cấp độ N5, N4, N3, N2, N1 (trong thời gian t&agrave;i khoản c&ograve;n ng&agrave;y VIP).</p>\r\n\r\n<p><strong>* Bảng gi&aacute; n&acirc;ng cấp VIP:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" style=\"height:197px; width:1219px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Chuyển khoản qua ng&acirc;n h&agrave;ng tại Việt Nam:</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>500.000đ&nbsp;&nbsp; 　　 ➡　　　1 năm (360 ng&agrave;y)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>900.000đ 　　　➡　　　2 năm(720 ng&agrave;y)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1.200.000đ 　　➡　　　3 năm(1080 ng&agrave;y)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;Ch&uacute; &yacute;:</strong></p>\r\n\r\n			<p>+ Th&agrave;nh vi&ecirc;n VIP kh&ocirc;ng tham gia được c&aacute;c kh&oacute;a học trực tiếp với gi&aacute;o vi&ecirc;n, kh&oacute;a học c&oacute; học ph&iacute; thu theo th&aacute;ng.</p>\r\n\r\n			<p>+ Một t&agrave;i khoản VIP chỉ sử dụng cho 1 học vi&ecirc;n.</p>\r\n\r\n			<p>+ Một số kh&oacute;a học ph&aacute;t triển sau n&agrave;y ( Hiện tại chưa c&oacute;), c&oacute; thể sẽ t&iacute;nh ph&iacute; ri&ecirc;ng theo từng kh&oacute;a học. Khi c&oacute; c&aacute;c kh&oacute;a như vậy ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o danh s&aacute;ch c&aacute;c kh&oacute;a tại đ&acirc;y.</p>\r\n\r\n			<p>+ Một số phần học y&ecirc;u cầu phải n&acirc;ng cấp g&oacute;i VIP 3 năm. (Hiện tại: Phần l&yacute; thuyết học l&aacute;i xe &Ocirc; T&ocirc; tại Nhật)</p>\r\n\r\n			<p>+ C&aacute;c phần miễn ph&iacute; trong nhiều trường hợp sẽ tự động chuyển sang chế độ VIP (chỉ ưu ti&ecirc;n cho th&agrave;nh vi&ecirc;n VIP) khi sever qu&aacute; tải.</p>\r\n\r\n			<p><strong>* Quy Định Bảo Lưu ng&agrave;y VIP:</strong></p>\r\n\r\n			<p>+ Khi n&acirc;ng cấp VIP, học vi&ecirc;n được bảo lưu số ng&agrave;y VIP 1 lần/ lượt nạp VIP.</p>\r\n\r\n			<p>Li&ecirc;n hệ với admin khi cần bảo lưu qua Email: bichhongnn@gmail.com. Hoặc qua tin nhắn tr&ecirc;n Fanpage:</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'the-thanh-vien-vip.jpg', 0, 0, '', '2021-09-14 18:09:19', '2021-09-18 14:09:48', 1, '', '', '', '', '', 'Hướng dẫn nâng cấp thành viên Vip', ' Quyền lợi thành viên VIP:\r\n+ Được xem tất cả các phần học bao gồm: Phần học theo giáo trình, các khóa học có ghi dành cho thành viên VIP, các đề luyện thi, các đề thi...\r\n+ Xem các bài học không giới hạn lượt xem, bài xem các cấp độ N5, N4, N3, N2, N1 (trong thời gian tài khoản còn ngày VIP).', 'huong-dan-nang-cap-thanh-vien-vip', 'học tiếng nhật', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(319, 160, 'vn', 'The standard Lorem Ipsum passage', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'the-standard-lorem-ipsum-passage', 'The standard Lorem Ipsum passage', '', ''),
(320, 160, 'en', 'english version The standard Lorem Ipsum passage', 'english version There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'english version <p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'en-the-standard-lorem-ipsum-passage', 'The standard Lorem Ipsum passage', '', ''),
(321, 161, 'vn', 'The standard Lorem Ipsum passage', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'the-standard-lorem-ipsum-passage-1', 'The standard Lorem Ipsum passage', '', ''),
(322, 161, 'en', 'english version The standard Lorem Ipsum passage', 'english version There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'english version <p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'en-the-standard-lorem-ipsum-passage-1', 'The standard Lorem Ipsum passage', '', ''),
(323, 162, 'vn', 'The standard Lorem Ipsum passage', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'the-standard-lorem-ipsum-passage-2', 'The standard Lorem Ipsum passage', '', ''),
(324, 162, 'en', 'english version The standard Lorem Ipsum passage', 'english version There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'english version <p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'en-the-standard-lorem-ipsum-passage-2', 'The standard Lorem Ipsum passage', '', ''),
(325, 163, 'vn', 'Hướng dẫn nâng cấp thành viên Vip', '* Quyền lợi thành viên VIP:\r\n\r\n+ Được xem tất cả các phần học bao gồm: Phần học theo giáo trình, các khóa học có ghi dành cho thành viên VIP, các đề luyện thi, các đề thi...\r\n\r\n+ Xem các bài học không giới hạn lượt xem, bài xem các cấp độ N5, N4, N3, N2, N1 (trong thời gian tài khoản còn ngày VIP).', '<h1>Bảng học ph&iacute; n&acirc;ng cấp VIP</h1>\r\n\r\n<p><strong>* Quyền lợi th&agrave;nh vi&ecirc;n VIP:</strong></p>\r\n\r\n<p>+ Được xem tất cả c&aacute;c phần học bao gồm: Phần học theo gi&aacute;o tr&igrave;nh, c&aacute;c kh&oacute;a học c&oacute; ghi d&agrave;nh cho th&agrave;nh vi&ecirc;n VIP, c&aacute;c đề luyện thi, c&aacute;c đề thi...</p>\r\n\r\n<p>+ Xem c&aacute;c b&agrave;i học kh&ocirc;ng giới hạn lượt xem, b&agrave;i xem c&aacute;c cấp độ N5, N4, N3, N2, N1 (trong thời gian t&agrave;i khoản c&ograve;n ng&agrave;y VIP).</p>\r\n\r\n<p><strong>* Bảng gi&aacute; n&acirc;ng cấp VIP:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" style=\"height:197px; width:1219px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Chuyển khoản qua ng&acirc;n h&agrave;ng tại Việt Nam:</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>500.000đ&nbsp;&nbsp; 　　 ➡　　　1 năm (360 ng&agrave;y)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>900.000đ 　　　➡　　　2 năm(720 ng&agrave;y)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1.200.000đ 　　➡　　　3 năm(1080 ng&agrave;y)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;Ch&uacute; &yacute;:</strong></p>\r\n\r\n			<p>+ Th&agrave;nh vi&ecirc;n VIP kh&ocirc;ng tham gia được c&aacute;c kh&oacute;a học trực tiếp với gi&aacute;o vi&ecirc;n, kh&oacute;a học c&oacute; học ph&iacute; thu theo th&aacute;ng.</p>\r\n\r\n			<p>+ Một t&agrave;i khoản VIP chỉ sử dụng cho 1 học vi&ecirc;n.</p>\r\n\r\n			<p>+ Một số kh&oacute;a học ph&aacute;t triển sau n&agrave;y ( Hiện tại chưa c&oacute;), c&oacute; thể sẽ t&iacute;nh ph&iacute; ri&ecirc;ng theo từng kh&oacute;a học. Khi c&oacute; c&aacute;c kh&oacute;a như vậy ch&uacute;ng t&ocirc;i sẽ th&ocirc;ng b&aacute;o danh s&aacute;ch c&aacute;c kh&oacute;a tại đ&acirc;y.</p>\r\n\r\n			<p>+ Một số phần học y&ecirc;u cầu phải n&acirc;ng cấp g&oacute;i VIP 3 năm. (Hiện tại: Phần l&yacute; thuyết học l&aacute;i xe &Ocirc; T&ocirc; tại Nhật)</p>\r\n\r\n			<p>+ C&aacute;c phần miễn ph&iacute; trong nhiều trường hợp sẽ tự động chuyển sang chế độ VIP (chỉ ưu ti&ecirc;n cho th&agrave;nh vi&ecirc;n VIP) khi sever qu&aacute; tải.</p>\r\n\r\n			<p><strong>* Quy Định Bảo Lưu ng&agrave;y VIP:</strong></p>\r\n\r\n			<p>+ Khi n&acirc;ng cấp VIP, học vi&ecirc;n được bảo lưu số ng&agrave;y VIP 1 lần/ lượt nạp VIP.</p>\r\n\r\n			<p>Li&ecirc;n hệ với admin khi cần bảo lưu qua Email: bichhongnn@gmail.com. Hoặc qua tin nhắn tr&ecirc;n Fanpage:</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '', '', '', '', 0, 'huong-dan-nang-cap-thanh-vien-vip', 'Hướng dẫn nâng cấp thành viên Vip', ' Quyền lợi thành viên VIP:\r\n+ Được xem tất cả các phần học bao gồm: Phần học theo giáo trình, các khóa học có ghi dành cho thành viên VIP, các đề luyện thi, các đề thi...\r\n+ Xem các bài học không giới hạn lượt xem, bài xem các cấp độ N5, N4, N3, N2, N1 (trong thời gian tài khoản còn ngày VIP).', 'học tiếng nhật'),
(326, 163, 'en', 'english version The standard Lorem Ipsum passage', 'english version There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'english version <p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 'en-the-standard-lorem-ipsum-passage-3', 'The standard Lorem Ipsum passage', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_cau_do`
--

CREATE TABLE `nhom_cau_do` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_cau_do`
--

INSERT INTO `nhom_cau_do` (`id`, `product_id`, `name`) VALUES
(2, 269, '   文法形式の判断 (Ngữ pháp)'),
(3, 261, 'Trắc nghiệm ôn từ vựng bài Minna bài 1-10'),
(4, 269, '   言い換え類義 & 用法'),
(5, 269, '   漢字読み & 表記'),
(6, 268, '   漢字読み & 表記'),
(7, 268, '   文法形式の判断 (Ngữ pháp)'),
(8, 268, '   文脈規定 (tango)'),
(9, 268, '   言い換え類義 & 用法'),
(10, 266, '漢字読み & 表記'),
(11, 266, '文法形式の判断 (Ngữ pháp)'),
(12, 266, '文脈規定 (tango)'),
(13, 266, '言い換え類義 & 用法'),
(14, 266, '文の組み立て'),
(15, 266, '文字初級・６００問'),
(16, 264, 'Trắc nghiệm ôn từ vựng Minna bài 21-30'),
(17, 264, 'Trắc nghiệm ôn từ vựng bài Minna bài 31-40'),
(18, 264, 'Trắc nghiệm ôn từ vựng bài Minna bài 41-50'),
(19, 264, 'Trắc nghiệm ôn từ vựng bài Minna bài 26-50'),
(20, 264, 'Trắc nghiệm ôn từ vựng bài Minna bài 1-50'),
(21, 261, 'Trắc nghiệm ôn từ vựng bài Minna bài 11-20'),
(22, 261, 'Trắc nghiệm ôn từ vựng bài Minna bài 1-25'),
(23, 261, 'Trắc nghiệm Hán Tự - Từ Vựng'),
(24, 261, 'Trắc nghiệm Ngữ Pháp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_cau_hoi_tab`
--

CREATE TABLE `nhom_cau_hoi_tab` (
  `id` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_cau_hoi_tab`
--

INSERT INTO `nhom_cau_hoi_tab` (`id`, `giao_trinh_tab_phu_id`, `name`) VALUES
(2, 12, 'Nhóm câu hỏi tab'),
(3, 16, 'Bài điền từ 1'),
(4, 16, 'Bài điền từ 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_de_thi`
--

CREATE TABLE `nhom_de_thi` (
  `id` int(11) NOT NULL,
  `de_thi_trac_nghiem_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_de_thi`
--

INSERT INTO `nhom_de_thi` (`id`, `de_thi_trac_nghiem_id`, `name`) VALUES
(2, 2, ' 問題１　＿＿＿の言葉の読み方として最もよいものを、１・２・３・４から一つ選びなさい。'),
(3, 3, 'Từ vựng'),
(4, 4, 'Từ vựng'),
(5, 4, 'Đề đọc hiểu'),
(6, 4, 'Ngữ pháp'),
(7, 4, 'Nghe hiểu'),
(8, 2, '問題２　（　　　）に入れるのに最もよいものを、１・２・３・４から一つ選びなさい。'),
(9, 2, '問題３　＿＿＿の言葉に意味が最も近いものを、１・２・３・４から一つ選びなさい。');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_de_thi_jlpt`
--

CREATE TABLE `nhom_de_thi_jlpt` (
  `id` int(11) NOT NULL,
  `de_thi_jlpt_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_de_thi_jlpt`
--

INSERT INTO `nhom_de_thi_jlpt` (`id`, `de_thi_jlpt_id`, `name`, `dap_an`) VALUES
(2, 3, '問題１　＿＿＿の言葉の読み方として最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(3, 5, 'Goi- Từ vựng', NULL),
(4, 6, 'thi thu', NULL),
(5, 3, '問題２　（　　　）に入れるのに最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(6, 3, '問題３　＿＿＿の言葉に意味が最も近いものを、１・２・３・４から一つ選びなさい。', NULL),
(7, 3, '問題４　次の言葉の使い方として最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(8, 3, '問題５　次の文の（　　　）に入れるのに最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(9, 3, '問題６　次の文の＿★＿に入る最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(10, 3, '問題７　次の文章を読んで、（４１）から（４５）の中に入る最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(11, 3, '問題８　次の（１）から（４）の文章を読んで、後の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(12, 3, '問題９　次の（１）から（３）の文章を読んで、後の問に対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(13, 4, '問題１　＿＿＿の読み方として最もよいものを、１・２・３・４から一つ選びなさい。', '<p>đ&aacute;p &aacute;n</p>\r\n'),
(14, 4, '問題２　（　　　）に入れるのに最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(15, 4, '問題３　＿＿＿の言葉に意味が最も近いものを、１・２・３・４から一つ選びなさい。', NULL),
(16, 4, '問題４　次の言葉の使い方として最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(17, 4, '問題５　次の文の（　　　）に入れるのに最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(18, 4, '問題６　次の文の＿★＿に入る最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(19, 4, '問題７　次の文章を読んで、（４１）から（４５）の中に入る最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(20, 4, '問題８　次の（１）から（４）の文章を読んで、後の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(21, 4, '問題９　次の（１）から（３）の文章を読んで、後の問に対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(22, 4, '問題１０　次の文章を読んで、後の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(23, 4, '問題１１　次のＡとＢは、大学入学時期についての記事である。後の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(24, 4, '問題１２　次の文章を読んで、後の問に対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL),
(25, 4, '問題１３　右のページは、フリーマーケットの出店案内である。川本さんは、このフリーマーケットに出店したいと思っている。下の問いに対する答えとして最もよいものを、１・２・３・４から一つ選びなさい。', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_de_thi_trac_nghiem`
--

CREATE TABLE `nhom_de_thi_trac_nghiem` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_de_thi_trac_nghiem`
--

INSERT INTO `nhom_de_thi_trac_nghiem` (`id`, `product_id`, `name`) VALUES
(2, 269, 'nhóm một');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_dien_tu`
--

CREATE TABLE `nhom_dien_tu` (
  `id` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tab_con_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_dien_tu`
--

INSERT INTO `nhom_dien_tu` (`id`, `giao_trinh_tab_phu_id`, `name`, `note`, `tab_con_id`) VALUES
(3, 16, 'Ⅰ　（　　）に助詞（助動詞）を書きなさい（「から」「ので」のように、2字のものもあります）。いらないときは×を書きなさい。（1×30）', '<p>đ&aacute;p &aacute;n v&agrave; dịch</p>\r\n', 0),
(4, 16, ' Ⅱ　（　　　）の言葉を適当な形にして＿＿＿に書きなさい。（1×20）', NULL, 0),
(5, 16, 'III. もんだい１　＿＿＿のことばは　ひらがなで　どう　かきますか。１・２・３・４から　いちばん　いい　ものを　ひとつ　えらんで　ください。', NULL, 0),
(6, 16, ' IV. もんだい２　＿＿＿のことばは　どう　かきますか。１・２・３・４から　いちばん　いいものを　ひとつ　えらんで　ください。', NULL, 0),
(7, 16, 'V. もんだい３　（　　　）に　なにを　いれますか。１・２・３・４から　いちばん　いい　ものを　ひとつ　えらんで　ください。', NULL, 0),
(8, 17, '問題1　＿＿の言葉の読み方として最もよいものを、1・2・3・4から一つ選びなさい。', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid #cbe1f2 1.0pt; width:531.2pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:283.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">取り扱い</span></span></span><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">商品につきましては、こちらのカタログをご覧ください。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:248.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Về c&aacute;c sản phẩm ch&uacute;ng t&ocirc;i kinh doanh, vui l&ograve;ng xem catalog ở đ&acirc;y.</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:283.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">焦る</span></span></span><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">とうまくいかないから、落ち着いてやろう。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:248.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">N&oacute;ng vội th&igrave; sẽ kh&ocirc;ng được việc, cho n&ecirc;n cứ b&igrave;nh tĩnh m&agrave; l&agrave;m.</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:283.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">ヘアスタイルを変えたら、華やかな印象になった。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:248.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Sau khi thay đổi kiểu t&oacute;c th&igrave; c&oacute; ấn tượng s&aacute;ng sủa.</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:283.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">母は料理の手際がいい。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:248.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Mẹ t&ocirc;i tay nghề nấu ăn giỏi.</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:283.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">この事件に彼が関わっていたというのは、周知の事実だ。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:248.1pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Việc người ta đồn anh ấy d&iacute;nh l&iacute;u tới vụ việc n&agrave;y l&agrave; sự thực ai cũng biết.</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(9, 17, '問題2　＿＿の言葉に意味が最も近いものを、1・2・3・4から一つ選びなさい。', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt; width:531.2pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:268.95pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">私はその件に一切関係していません。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:262.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">T&ocirc;i ho&agrave;n to&agrave;n kh&ocirc;ng can dự tới vụ đ&oacute;.</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:268.95pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">私の欠点はせっかちなところだ。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:262.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Khuyết điểm của t&ocirc;i l&agrave; n&oacute;ng vội.</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:268.95pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">伊藤さんは、土地や家など、不動産の仲介の仕事をしているそうだ。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:262.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Nghe n&oacute;i anh Ito đang l&agrave;m c&ocirc;ng việc m&ocirc;i giới bất động sản nh&agrave; đất n&agrave;y nọ.</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:#eff5f9; width:268.95pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">新商品の納品が１週間ほど遅れると連絡があった。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#eff5f9; width:262.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">C&oacute; li&ecirc;n lạc l&agrave; việc giao sản phẩm mới sẽ trễ khoảng 1 tuần.</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:268.95pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#103b5c\">友人からのメールを読んで目が疑った。</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"width:262.25pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:#2076b8\">Đọc mail của người bạn xong t&ocirc;i như kh&ocirc;ng tin v&agrave;o mắt m&igrave;nh.</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(10, 17, '問題3　（　　　）に入れるのに最もよいものを、1・2・3・4から一つ選びなさい。', NULL, 0),
(11, 17, '問題4　次の言葉の使い方として最もよいものを、1・2・3・4から一つ選びなさい。', NULL, 0),
(12, 13, '練習問題', '', 2),
(13, 28, 'Bài dịch', '<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>日本には伝統的なお正月の習慣もありますが、</td>\r\n			<td>Ở Nhật c&oacute; rất nhiều phong tục truyền thống v&agrave;o ng&agrave;y Tết.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>最近は、神社に初詣に行く人、親戚が集まってお祝いをする人、お正月休みに旅行をする人、テレビを見てのんびり過ごす人など、さまざまです。<br />\r\n			&nbsp;</td>\r\n			<td>Gần đ&acirc;y ng&agrave;y c&agrave;ng đa dạng hơn, c&oacute; người đi lễ đền ch&ugrave;a đầu năm, c&oacute; người họp mặt họ h&agrave;ng c&ugrave;ng nhau ch&uacute;c Tết, c&oacute; người đi du lịch v&agrave;o kỳ nghỉ Tết hay cũng c&oacute; người thong thả ở nh&agrave; xem tivi, v&acirc;n v&acirc;n&hellip;<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>また、お店はお正月気分で、にぎやかに初売りをします。</td>\r\n			<td>Ngo&agrave;i ra cũng c&oacute; c&aacute;c cửa h&agrave;ng khai trương bu&ocirc;n b&aacute;n r&ocirc;m rả với tinh thần của năm mới.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>立ったり座ったりみんなでお祝い!</p>\r\n			</td>\r\n			<td>Người th&igrave; đứng kẻ th&igrave; ngồi, mọi người c&ugrave;ng nhau ch&uacute;c Tết !</td>\r\n		</tr>\r\n		<tr>\r\n			<td>元旦に初詣に行った。</td>\r\n			<td>Ng&agrave;y m&ugrave;ng một Tết t&ocirc;i đi lễ đền ch&ugrave;a đầu năm.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>毎年、家族で明治神宮に行く。</td>\r\n			<td>Mỗi năm, cả gia đ&igrave;nh t&ocirc;i đều đi lễ ở đền thờ Meiji.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31日の夜中から多くの人が参拝に出かけてくる。<br />\r\n			&nbsp;</td>\r\n			<td>C&oacute; rất nhiều người đi đến đ&acirc;y c&uacute;ng b&aacute;i từ khuya ng&agrave;y 31.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>境内に入る前に、もう行列ができていた。</td>\r\n			<td>C&oacute; một h&agrave;ng d&agrave;i người xếp h&agrave;ng ở đấy trước khi v&agrave;o b&ecirc;n trong đền.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>爪先立ちをして前のほうを見たが、どんなに背伸びしてみても一番前までは見えない。</td>\r\n			<td>T&ocirc;i đ&atilde; nh&oacute;n ch&acirc;n nh&igrave;n l&ecirc;n ph&iacute;a trước nhưng d&ugrave; cố rướn người đi nữa th&igrave; cũng kh&ocirc;ng thấy được ph&iacute;a tr&ecirc;n c&ugrave;ng.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>一番込んでいるときは10分以上も全く動けず、突っ立ったままで待たされることもあるらしい。</td>\r\n			<td>V&agrave;o l&uacute;c đ&ocirc;ng đ&uacute;c nhất dường như cũng c&oacute; khi bị đứng đơ ra chờ, ho&agrave;n to&agrave;n kh&ocirc;ng nh&uacute;c nh&iacute;ch g&igrave; được đến hơn 10 ph&uacute;t.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>三が日だけで約300万人が参拝するそうだ。</td>\r\n			<td>Nghe n&oacute;i trong chỉ v&ograve;ng 3 ng&agrave;y m&agrave; c&oacute; đến gần 300 vạn người đến c&uacute;ng b&aacute;i.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>初詣の後は、おじいさんの家に親戚がみんな集まって新年会をする。</td>\r\n			<td>Sau khi đi lễ đền ch&ugrave;a th&igrave; họ h&agrave;ng sẽ tụ họp ở nh&agrave; của &ocirc;ng v&agrave; mở tiệc đầu năm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>おじいさんの前で正座して、新年の挨拶をした。</td>\r\n			<td>Mọi người ngồi ngay ngắn trước mặt &ocirc;ng rồi ch&uacute;c mừng năm mới.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>おばあさんは足が悪いのでいすに腰掛けて、孫たちにお年玉を渡している。</td>\r\n			<td>V&igrave; ch&acirc;n b&agrave; yếu n&ecirc;n b&agrave; ngồi tr&ecirc;n ghế m&agrave; trao tiền l&igrave; x&igrave; cho đ&aacute;m ch&aacute;u.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>僕は足がしびれたので、すぐあぐらをかいて座り、妹の睦子は横座りをした。</td>\r\n			<td>V&igrave; ch&acirc;n t&ocirc;i bị t&ecirc; n&ecirc;n t&ocirc;i liền ngồi xếp bằng c&ograve;n c&ocirc; em g&aacute;i Mutsuko th&igrave; lại ngồi nghi&ecirc;ng ch&acirc;n một b&ecirc;n.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>おばさんたちは次々におせち料理を運んで忙しそうにしているが、おじさんたちは、もうコタツの周りに座り込んで、飲んだり食べたりしている。</td>\r\n			<td>C&aacute;c c&ocirc; d&igrave; li&ecirc;n tục tất bật bưng l&ecirc;n c&aacute;c m&oacute;n ăn năm mới c&ograve;n c&aacute;c ch&uacute; b&aacute;c th&igrave; đ&atilde; ngồi tụ lại ăn uống xung quanh l&ograve; sưởi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>子供たちはテレビの前に膝を抱えて座って、お正月恒例の駅伝競走を見ている。</td>\r\n			<td>Bọn trẻ con th&igrave; ngồi b&oacute; gối trước tivi xem cuộc chạy đua tiếp sức theo th&ocirc;ng lệ h&agrave;ng năm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>今年も皆にとってよい一年になりますように！</td>\r\n			<td>Mong sao năm nay cũng sẽ l&agrave; một năm thật tốt đẹp đối với tất cả mọi người!<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 6),
(14, 28, 'Từ vựng', '<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>TT</td>\r\n			<td>Mục từ</td>\r\n			<td>H&aacute;n Tự</td>\r\n			<td>Nghĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>でんとうてきな</td>\r\n			<td>伝統的な</td>\r\n			<td>mang t&iacute;nh truyền thống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>おしょうがつ</td>\r\n			<td>お正月</td>\r\n			<td>ng&agrave;y Tết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>はつもうで</td>\r\n			<td>初詣</td>\r\n			<td>việc đi lễ ch&ugrave;a đầu năm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>しんせき</td>\r\n			<td>親戚</td>\r\n			<td>họ h&agrave;ng, b&agrave; con th&acirc;n thuộc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>はつうり</td>\r\n			<td>初売り</td>\r\n			<td>khai trương bu&ocirc;n b&aacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>がんたん</td>\r\n			<td>元旦</td>\r\n			<td>ng&agrave;y m&ugrave;ng một Tết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>さんぱいする</td>\r\n			<td>参拝する</td>\r\n			<td>c&uacute;ng b&aacute;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>けいだい</td>\r\n			<td>境内</td>\r\n			<td>b&ecirc;n trong khu vực (đền)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>ぎょうれつ</td>\r\n			<td>行列</td>\r\n			<td>h&agrave;ng người, đo&agrave;n người</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>つまさきだちをする</td>\r\n			<td>爪先立ちをする</td>\r\n			<td>đứng nh&oacute;n ch&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>せのびする</td>\r\n			<td>背伸びする</td>\r\n			<td>rướn người</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>つったつ</td>\r\n			<td>突っ立つ</td>\r\n			<td>đứng đơ ra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>せいざする</td>\r\n			<td>正座する</td>\r\n			<td>\r\n			<p>ngồi ngay ngắn, quỳ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>あいさつをする</td>\r\n			<td>挨拶をする</td>\r\n			<td>ch&agrave;o, ch&agrave;o hỏi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>こしかける</td>\r\n			<td>腰掛ける</td>\r\n			<td>ngồi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>しびれる</td>\r\n			<td>&nbsp;</td>\r\n			<td>t&ecirc;, t&ecirc; dại, t&ecirc; liệt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>あぐらをかく</td>\r\n			<td>&nbsp;</td>\r\n			<td>(ngồi) xếp bằng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>よこずわりをする</td>\r\n			<td>横座りをする</td>\r\n			<td>ngồi nghi&ecirc;ng ch&acirc;n một b&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>おせち</td>\r\n			<td>&nbsp;</td>\r\n			<td>đồ ăn ng&agrave;y Tết</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>すわりこむ</td>\r\n			<td>座り込む</td>\r\n			<td>ngồi tụ lại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>ひざをかかえてすわる</td>\r\n			<td>膝を抱えて座る</td>\r\n			<td>ngồi b&oacute; gối</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>えきでんきょうそう</td>\r\n			<td>駅伝競走</td>\r\n			<td>cuộc chạy đua tiếp sức</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>こうれい</td>\r\n			<td>恒例</td>\r\n			<td>h&agrave;ng năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 7),
(15, 13, 'Từ vựng', '<p>&nbsp;</p>\r\n\r\n<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>B&agrave;i Dịch</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>日本には伝統的なお正月の習慣もありますが、</td>\r\n			<td>Ở Nhật c&oacute; rất nhiều phong tục truyền thống v&agrave;o ng&agrave;y Tết.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>最近は、神社に初詣に行く人、親戚が集まってお祝いをする人、お正月休みに旅行をする人、テレビを見てのんびり過ごす人など、さまざまです。<br />\r\n			&nbsp;</td>\r\n			<td>Gần đ&acirc;y ng&agrave;y c&agrave;ng đa dạng hơn, c&oacute; người đi lễ đền ch&ugrave;a đầu năm, c&oacute; người họp mặt họ h&agrave;ng c&ugrave;ng nhau ch&uacute;c Tết, c&oacute; người đi du lịch v&agrave;o kỳ nghỉ Tết hay cũng c&oacute; người thong thả ở nh&agrave; xem tivi, v&acirc;n v&acirc;n&hellip;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(16, 28, '復習', '<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T01.png\" width=\"300\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>爪先立ちをする：かかとを上げて、足の指の先だけで立つ。「爪先立つ」とも言う。<br />\r\n			Đứng nh&oacute;n g&oacute;t v&agrave; chỉ bằng c&aacute;c đầu ng&oacute;n ch&acirc;n. Cũng được n&oacute;i l&agrave; 「爪先立つ」<br />\r\n			&nbsp;</p>\r\n			&nbsp;\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T02.png\" width=\"300\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>背伸びする：爪先で立って、首も背中も伸ばして、背を高くする。自分の能力以上のことをしようとして、無理をするときにも使える。</p>\r\n\r\n			<p>L&agrave;m cho d&aacute;ng cao l&ecirc;n bằng c&aacute;ch đứng tr&ecirc;n c&aacute;c ng&oacute;n ch&acirc;n, duỗi thẳng cả cổ v&agrave; lưng. Cũng c&oacute; thể sử dụng khi định l&agrave;m điều hơn khả năng của m&igrave;nh, l&agrave;m điều qu&aacute; sức.</p>\r\n\r\n			<p>【例】兄と同じ大学に行きたいため、背伸びしてあの大学を受けた。</p>\r\n\r\n			<p>T&ocirc;i đ&atilde; cố hết sức để đậu v&agrave;o trường đại học đ&oacute; l&agrave; v&igrave; muốn v&agrave;o đại học giống như anh trai t&ocirc;i.<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T03.png\" width=\"304\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>突っ立つ：何もしないで、ただまっすぐに立つ。</p>\r\n\r\n			<p>Chỉ đứng thẳng m&agrave; kh&ocirc;ng l&agrave;m g&igrave; hết.</p>\r\n\r\n			<p>【例】お店の手伝いに来たのに、あの人は働かないで、ただ、突っ立っているだけだ。<br />\r\n			T&ocirc;i đ&atilde; đến cửa h&agrave;ng để nhờ gi&uacute;p thế m&agrave; người đ&oacute; đ&atilde; kh&ocirc;ng l&agrave;m g&igrave; cả m&agrave; chỉ đứng đơ ra đ&oacute;.<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T04.png\" width=\"149\" /></td>\r\n			<td>正座する：膝を曲げて、姿勢よく背筋を伸ばして座ること。改まったときの座り方。正座からあぐらなどの楽な座り方にすることを「脚を崩す」という。<br />\r\n			L&agrave; việc ngồi với tư thế gập đầu gối, rất thẳng lưng. Kiểu ngồi trong c&aacute;c dịp trang trọng. Người ta gọi c&aacute;c kiểu ngồi thoải m&aacute;i kh&aacute;c với &ldquo;正座&ldquo; như l&agrave; ngồi xếp bằng l&agrave; 「脚を崩す」<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T05.png\" width=\"300\" /></td>\r\n			<td>\r\n			<p>腰掛ける：椅子や台などの上に、腰を乗せて座る。</p>\r\n\r\n			<p>Ngồi đặt m&ocirc;ng l&ecirc;n ghế hay bục,&hellip;</p>\r\n\r\n			<p>「例」疲れたので、腰掛けて休んだ。<br />\r\n			V&igrave; mệt n&ecirc;n t&ocirc;i đ&atilde; ngồi nghỉ.<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T06.png\" width=\"300\" /></td>\r\n			<td>あぐらをかく：両脚を折り曲げて、腰の前で組んで座る。男性がよくする座り方で、改まった場所ではしない座り方。<br />\r\n			Ngồi gập cả hai ch&acirc;n, khoanh ch&acirc;n lại trước h&ocirc;ng. L&agrave; kiểu ngồi m&agrave; c&aacute;nh nam giới thường ngồi v&agrave; l&agrave; kiểu ngồi ở những nơi kh&ocirc;ng trang trọng.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T07.png\" width=\"300\" /></td>\r\n			<td>横座り（を）する：脚を横に出して、姿勢を崩して座る。女性がよくする座りかたで、改まった場所ではしない座り方。<br />\r\n			Ngồi đưa ch&acirc;n ngang một b&ecirc;n, tư thế kh&ocirc;ng ngay. L&agrave; kiểu nữ giới hay ngồi v&agrave; l&agrave; kiểu ngồi ở những nơi kh&ocirc;ng trang trọng.<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T08.png\" width=\"300\" /></td>\r\n			<td>\r\n			<p>座り込む：部屋の中などに入って、同じ場所で長い間ずっと座る。ある場所に座って動かないで、何かを要求したり、抗議をするときにも使う。</p>\r\n\r\n			<p>V&agrave;o những nơi như l&agrave; trong ph&ograve;ng chẳng hạn, rồi ngồi suốt ở chỗ đ&oacute; trong thời gian d&agrave;i. Cũng sử dụng cho cả khi ngồi y&ecirc;n ở một nơi n&agrave;o đ&oacute; để phản đối hay y&ecirc;u cầu điều g&igrave; đ&oacute;.</p>\r\n\r\n			<p>「例」国会の前で戦争反対の座り込みをした。<br />\r\n			Đ&atilde; ngồi trụ lại trước quốc hội để phản đối chiến tranh.<br />\r\n			&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"https://lophoctiengnhat.com/public/lesson/giaotrinh/Edewakaru/1000_B01P1_T09.png\" width=\"300\" /></td>\r\n			<td>\r\n			<p>膝を抱えて座る：床などに尻を落とし、膝を立てて、膝の前で両手を組んで座る。「膝を抱える」は、ぼんやりと何もしないでじっとしているときに使う。<br />\r\n			Ngồi bằng thế m&ocirc;ng đặt tr&ecirc;n s&agrave;n, đầu gối dựng đứng, 2 tay khoanh trước đầu gối. &ldquo;B&oacute; gối&rdquo; sử dụng khi ngồi y&ecirc;n thẫn thờ kh&ocirc;ng l&agrave;m g&igrave; hết.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 8),
(17, 29, '問題　（　　　）に入るものを１・２・３から選びなさい。', '<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:solid windowtext 1.0pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:yellow; height:.5in; width:239.4pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:red\">hdfijdfjkdfkasdhfkasjdhfkasjdhfdsf</span></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:yellow; height:.5in; width:239.4pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:red\">adfskjahfkashdfasd</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:239.4pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Jsahdjkashs</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sjdhashfa</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Ajshdfkjsafs</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Jkdhaskhfas</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Jadfhasjhfsa</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:239.4pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Jsahdjkashs</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sjdhashfa</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Ajshdfkjsafs</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Jkdhaskhfas</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Jadfhasjhfsa</span></span></p>\r\n\r\n			<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0),
(18, 35, 'Nhóm bài 1', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_luyen_nghe`
--

CREATE TABLE `nhom_luyen_nghe` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mp3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_luyen_nghe`
--

INSERT INTO `nhom_luyen_nghe` (`id`, `product_id`, `name`, `mp3`) VALUES
(3, 269, 'Luyện nghe một', 'horse.mp3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_text_de_thi_jlpt`
--

CREATE TABLE `nhom_text_de_thi_jlpt` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_text_de_thi_jlpt`
--

INSERT INTO `nhom_text_de_thi_jlpt` (`id`, `product_id`, `name`) VALUES
(2, 269, 'nhóm một'),
(3, 269, 'nhóm hai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom_thi_nghe`
--

CREATE TABLE `nhom_thi_nghe` (
  `id` int(11) NOT NULL,
  `de_thi_jlpt_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhom_thi_nghe`
--

INSERT INTO `nhom_thi_nghe` (`id`, `de_thi_jlpt_id`, `name`, `note`) VALUES
(2, 3, '問題1では、まず質問を聞いてください。それから話を聞いて、問題用紙の1から4の中から、最もよいものをーつ選んでくさい。', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">れい</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">a　実習の日を変更する</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">b　田中さんに確認する</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">c　ゼミの全員に確認する</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">d　先生に連絡する</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:red\">れい：　正答</span></span></span></strong><strong><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:red\">b</span></span></span></strong></span></span></p>\r\n'),
(3, 3, '問題2では、まず質問を聞いてください。そのあと、問題用紙のせんたくしを読んでください。読む時間があります。それから話を聞いて、問題用紙の1から4の中から、最もよいものをーつ選んでください。', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:red\">れい：</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">a お金が準備できなかったから</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">b 友達の都合が悪くなったから</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">c 重要な仕事が入ったから</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:#444444\">d 国内の方が気楽でいいから</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><strong><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:red\">正答　</span></span></span></strong><strong><span style=\"font-size:17.5pt\"><span style=\"font-family:&quot;MS Mincho&quot;,&quot;serif&quot;\"><span style=\"color:red\">c</span></span></span></strong></span></span></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noi_dung_tab_phu`
--

CREATE TABLE `noi_dung_tab_phu` (
  `id` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `noi_dung_tab_phu`
--

INSERT INTO `noi_dung_tab_phu` (`id`, `giao_trinh_tab_phu_id`, `note`, `dich`) VALUES
(1, 10, '<p>nội dung</p>\r\n', '<p>dich</p>\r\n'),
(5, 14, '<p><big>第1部　練習編</big></p>\r\n\r\n<p><a href=\"https://old.lophoctiengnhat.com/images/images/Choukai/n1n2choukai_Phan1_01.png\"><img alt=\"\" src=\"https://old.lophoctiengnhat.com/images/images/Choukai/n1n2choukai_Phan1_01.png\" /></a></p>\r\n\r\n<p><big>第1部では、聞き取りにくい日本語の音や、会話の表現などを意識して聞く練習をします。聞き取りにくい音は人によって違います。日本人でも人によっていろいろな発音をします。特に早口で言われているときには、わかりにくいことがあります。そうした音の違いに対して、「あれ？今のは何だろう」とか、「もしかしたら日本人はこんな言い方しているのかな」と今まで思ったことがあるかもしれません。</big></p>\r\n\r\n<p><big>　具体的には、聞き取りにくい音やアクセント、イントネーションなどを聞き取る練習をします。これらの音は、もちろん聞き取れなくても文脈で理解することはできますが、しくみを知っていると、余裕を持って聞き取れるようになります。ここで知っておくことは、様々な場面で役立つと思って取り組んでみましょう。</big></p>\r\n\r\n<p><big>　また、聞き取れるようになることで、発音も上手になり、書くことも正確になるというメリットがあります。聞くスキルを知ることは、聞こえる耳を持つために役立ちます。</big></p>\r\n\r\n<p><big>　問題を解いてから、声を出して読んでみて、確認するのが一番です。</big></p>\r\n', '<p><span style=\"font-size:16px\">Trong chương 1 ch&uacute;ng ta sẽ luyện nghe một c&aacute;ch c&oacute; chủ &yacute; c&aacute;c &acirc;m tiếng Nhật kh&oacute; nghe hay c&aacute;c c&aacute;ch diễn đạt trong đ&agrave;m thoại. Những &acirc;m kh&oacute; nghe,&nbsp; kh&oacute; nắm bắt được sẽ kh&aacute;c nhau t&ugrave;y theo mỗi người. Ngay cả ở người Nhật th&igrave; cũng t&ugrave;y theo&nbsp; mỗi người m&agrave; c&oacute; c&aacute;ch ph&aacute;t &acirc;m kh&aacute;c nhau. Đặc biệt l&agrave; khi n&oacute;i nhanh th&igrave; sẽ c&agrave;ng kh&oacute; hiểu. Đối với sự kh&aacute;c nhau về c&aacute;c &acirc;m&nbsp; như thế, c&oacute; lẽ l&agrave; bạn đ&atilde; từng nghĩ l&agrave; &quot; Ủa, n&oacute;i c&aacute;i g&igrave; vậy ta?&quot; hay l&agrave; &quot; Kh&ocirc;ng chừng l&agrave; tại người Nhật c&oacute; c&aacute;ch n&oacute;i như vậy.&quot;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cụ thể ở đ&acirc;y, ch&uacute;ng ta sẽ luyện c&aacute;ch nghe, nắm bắt ngữ &acirc;m, ngữ điệu của c&aacute;c &acirc;m kh&oacute; nghe. Những &acirc;m n&agrave;y, dĩ nhi&ecirc;n l&agrave; dẫu cho kh&ocirc;ng thể nghe ra được th&igrave; cũng vẫn c&oacute; thể hiểu được th&ocirc;ng qua mạch văn nhưng nếu ch&uacute;ng ta biết được c&aacute;ch thức ch&uacute;ng ta sẽ c&oacute; thể nghe một c&aacute;ch thoải m&aacute;i hơn. Việc nỗ lực biết sẵn b&acirc;y giờ sẽ c&oacute; &iacute;ch cho rất nhiều trường hợp sau n&agrave;y.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Th&ecirc;m nữa, c&ugrave;ng với việc c&oacute; thể nghe hiểu được th&igrave; ch&uacute;ng ta cũng c&oacute; điểm lợi kh&aacute;c l&agrave; ph&aacute;t &acirc;m cũng sẽ trở n&ecirc;n giỏi hơn v&agrave; cũng c&oacute; thể viết ch&iacute;nh x&aacute;c hơn. Biết được kỹ năng nghe sẽ c&oacute; &iacute;ch rất nhiều cho khả năng nghe của ch&uacute;ng ta.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">C&aacute;ch tốt nhất l&agrave; sau khi giải đề, h&atilde;y thử đọc lại th&agrave;nh tiếng v&agrave; sau đ&oacute; x&aacute;c nhận lại một lần nữa.</span></p>\r\n'),
(6, 15, '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">下線部が問題となるところです。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">1　正答　くち（口）　　　　　　　　母音無声化の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「うち（家）」「ぐち（愚痴）「ふち（縁）ではありません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">2　正答　そしつ（素質）　　　　　　母音無声化の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">3　正答　ちくさん（畜産）　　　　　母音無声化の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">※「く」の母音が無声化して聞こえるかもしれません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">4　正答　そうたい（早退）　　　　　清濁の区別の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「そうだい（壮大、総代）ではありません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">5　正答　ぜんぜん（全然）　　　　　　清濁の区別の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「せんぜん（戦前）」「せんせん（戦線）」ではありません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">6　正答　いてん（移転）　　　　　　　清濁の区別の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「いでん（遺伝）」ではありません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">※「いってん（一点）と聞こえたら、促音の問題（</span></span><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">P30）もあるかもしれません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">7　正答　こんらん（混乱）　　　　　　「な」「ら」「だ」行の区別の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「こんなん（困難）」「こんだん（懇談）」ではありません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">※「こなん」「こな（粉）」と聞こえたら、撥音の問題（</span></span><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">P32）もあるかもしれません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">8　正答　しなない（死なない）　　　　「な」「ら」「だ」行の区別の問題</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">解説「しらない（知らない）」「しだない」ではありません。</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,\"><span style=\"font-size:13.5pt\"><span style=\"color:#333333\">9　正答　ねじ（ネジ）　　　　　　　　「な」「ら」「だ」行の区別の問題</span></span></span></span></span></p>\r\n'),
(9, 29, '<p style=\"text-align:center\"><strong>はやく読む練習１・２</strong></p>\r\n', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `online_ngay`
--

CREATE TABLE `online_ngay` (
  `id` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `dem` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `online_ngay`
--

INSERT INTO `online_ngay` (`id`, `ngay`, `dem`) VALUES
(1, '2023-08-05', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `online_total`
--

CREATE TABLE `online_total` (
  `id` int(11) NOT NULL,
  `dem` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `online_total`
--

INSERT INTO `online_total` (`id`, `dem`) VALUES
(1, 1281);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Về chúng tôi', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'tuyển dụng.png', '2017-05-11 16:05:22', '2021-09-14 18:09:56', 1, '', '', '', '', '', '', 'Về chúng tôi', '', 've-chung-toi', 1),
(36, 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', NULL, '2017-05-11 16:05:03', '2018-08-24 19:08:39', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Chuyên nhận đặt hàng', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-nhan-dat-hang', 1),
(37, 'Tuyển dụng', '', '', NULL, '2017-05-18 02:05:05', '2020-09-04 08:09:04', 1, '', '', '', '', '', '', 'Tuyển Dụng', '', 'tuyen-cong-tac-vien', 1),
(40, 'Chính sách bảo mật', '', '', NULL, '2017-07-10 22:07:44', '2020-09-04 08:09:12', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(46, ' Hệ thống', '', '', NULL, '2018-03-27 11:03:18', '2018-10-30 10:10:10', 1, '', '', '', '', '', '', ' Hệ thống', '', 'he-thong', 1),
(47, 'Ưu đãi khách hàng thân thiết', '', '', '', '2020-09-04 08:09:49', NULL, 1, '', '', '', '', '', '', 'Ưu đãi khách hàng thân thiết', '', 'uu-dai-khach-hang-than-thiet', 1),
(48, 'Chính sách bảo hành trọn đời', '', '', '', '2020-09-04 08:09:18', NULL, 1, '', '', '', '', '', '', 'Chính sách bảo hành trọn đời', '', 'chinh-sach-bao-hanh-tron-doi', 1),
(49, 'Chính sách giao nhận', '', '', '', '2020-09-04 08:09:50', NULL, 1, '', '', '', '', '', '', 'Chính sách giao nhận', '', 'chinh-sach-giao-nhan', 1),
(50, 'Chính sách đổi sản phẩm', '', '', '', '2020-09-04 08:09:13', NULL, 1, '', '', '', '', '', '', 'Chính sách đổi sản phẩm', '', 'chinh-sach-doi-san-pham', 1),
(51, 'Hướng dẫn mua hàng', '', '', '', '2020-09-04 08:09:46', NULL, 1, '', '', '', '', '', '', 'Hướng dẫn mua hàng', '', 'huong-dan-mua-hang', 1),
(52, 'Tra cứu bảo hành', '', '<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '2020-09-04 08:09:14', '2021-10-25 10:10:33', 1, '', '', '', '', '', '', 'Tra cứu bảo hành', '', 'tra-cuu-bao-hanh', 1),
(53, 'Quy định về phiếu quà tặng', '', '', '', '2020-09-04 08:09:37', NULL, 1, '', '', '', '', '', '', 'Quy định về phiếu quà tặng', '', 'quy-dinh-ve-phieu-qua-tang', 1),
(54, 'Điều khoản sử dụng', '', '', 'counter-bg.jpg', '2020-09-04 08:09:56', '2021-08-28 11:08:21', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung-1', 1),
(55, 'Hướng dẫn các bước đăng ký', '', '<p>Hướng dẫn c&aacute;c bước đăng k&yacute;</p>\r\n', '', '2021-10-14 15:10:21', NULL, 1, '', '', '', '', '', '', 'Hướng dẫn các bước đăng ký', '', 'huong-dan-cac-buoc-dang-ky', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Về chúng tôi', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '', 0, 've-chung-toi', 'Về chúng tôi', '', ''),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right; height:564px; width:670px\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'chuyen-nhan-dat-hang', 'Chuyên nhận đặt hàng', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" style=\"height:800px; width:1600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển dụng', '', '', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Dụng', '', ''),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(57, 46, 'vn', ' Hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' Hệ thống', '', ''),
(58, 46, 'en', ' hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' hệ thống', '', ''),
(59, 47, 'vn', 'Ưu đãi khách hàng thân thiết', '', '', '', '', '', '', '', 0, 'uu-dai-khach-hang-than-thiet', 'Ưu đãi khách hàng thân thiết', '', ''),
(60, 47, 'en', 'english version Ưu đãi khách hàng thân thiết', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-uu-dai-khach-hang-than-thiet', 'Ưu đãi khách hàng thân thiết', '', ''),
(61, 48, 'vn', 'Chính sách bảo hành trọn đời', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-hanh-tron-doi', 'Chính sách bảo hành trọn đời', '', ''),
(62, 48, 'en', 'english version Chính sách bảo hành trọn đời', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-bao-hanh-tron-doi', 'Chính sách bảo hành trọn đời', '', ''),
(63, 49, 'vn', 'Chính sách giao nhận', '', '', '', '', '', '', '', 0, 'chinh-sach-giao-nhan', 'Chính sách giao nhận', '', ''),
(64, 49, 'en', 'english version Chính sách giao nhận', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-giao-nhan', 'Chính sách giao nhận', '', ''),
(65, 50, 'vn', 'Chính sách đổi sản phẩm', '', '', '', '', '', '', '', 0, 'chinh-sach-doi-san-pham', 'Chính sách đổi sản phẩm', '', ''),
(66, 50, 'en', 'english version Chính sách đổi sản phẩm', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-doi-san-pham', 'Chính sách đổi sản phẩm', '', ''),
(67, 51, 'vn', 'Hướng dẫn mua hàng', '', '', '', '', '', '', '', 0, 'huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(68, 51, 'en', 'english version Hướng dẫn mua hàng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(69, 52, 'vn', 'Tra cứu bảo hành', '', '<div class=\"ckeditor-html5-audio\" style=\"text-align:center\">\r\n<audio controls=\"controls\" controlslist=\"nodownload\" src=\"/image/files/horse.mp3\">&nbsp;</audio>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tra-cuu-bao-hanh', 'Tra cứu bảo hành', '', ''),
(70, 52, 'en', 'english version Tra cứu bảo hành', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tra-cuu-bao-hanh', 'Tra cứu bảo hành', '', ''),
(71, 53, 'vn', 'Quy định về phiếu quà tặng', '', '', '', '', '', '', '', 0, 'quy-dinh-ve-phieu-qua-tang', 'Quy định về phiếu quà tặng', '', ''),
(72, 53, 'en', 'english version Quy định về phiếu quà tặng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-quy-dinh-ve-phieu-qua-tang', 'Quy định về phiếu quà tặng', '', ''),
(73, 54, 'vn', 'Điều khoản sử dụng', '', '', '', '', '', '', '', 0, 'dieu-khoan-su-dung-1', 'Điều khoản sử dụng', '', ''),
(74, 54, 'en', 'english version Điều khoản sử dụng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dieu-khoan-su-dung-1', 'Điều khoản sử dụng', '', ''),
(75, 55, 'vn', 'Hướng dẫn các bước đăng ký', '', '<p>Hướng dẫn c&aacute;c bước đăng k&yacute;</p>\r\n', '', '', '', '', '', 0, 'huong-dan-cac-buoc-dang-ky', 'Hướng dẫn các bước đăng ký', '', ''),
(76, 55, 'en', 'english version Hướng dẫn các bước đăng ký', 'english version ', 'english version <p>Hướng dẫn c&aacute;c bước đăng k&yacute;</p>\r\n', '', '', '', '', '', 0, 'en-huong-dan-cac-buoc-dang-ky', 'Hướng dẫn các bước đăng ký', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phien_am`
--

CREATE TABLE `phien_am` (
  `id` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `han_tu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hiragana` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dap_an` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phien_am`
--

INSERT INTO `phien_am` (`id`, `giao_trinh_tab_phu_id`, `han_tu`, `hiragana`, `dap_an`) VALUES
(3, 12, '自負', NULL, 'じふ'),
(4, 12, '避暑', NULL, 'ひしょ'),
(5, 12, '挙手', NULL, 'きょしゅ'),
(6, 12, '無期', NULL, 'むき'),
(7, 12, '時機', NULL, 'じき'),
(8, 12, '歯科', NULL, 'しか'),
(9, 12, '異議', NULL, 'いぎ'),
(10, 12, '磁気', NULL, 'じき'),
(11, 12, '著書', NULL, 'ちょしょ'),
(12, 12, '歌詞', NULL, 'かし'),
(13, 12, '不意', NULL, 'ふい'),
(14, 12, '危惧', NULL, 'きぐ'),
(15, 12, '破棄', NULL, 'はき'),
(16, 12, '意図', NULL, 'いと'),
(17, 10, '自負', NULL, 'じふ'),
(18, 10, '避暑', NULL, ' ひしょ'),
(19, 10, '挙手', NULL, 'きょしゅ'),
(20, 10, '無期', NULL, 'むき'),
(21, 10, '時機', NULL, 'じき'),
(22, 10, '歯科', NULL, 'しか'),
(23, 10, '磁気	', NULL, 'じき'),
(24, 10, '異議', NULL, 'いぎ'),
(25, 10, '著書', NULL, 'ちょしょ'),
(26, 10, '歌詞', NULL, 'かし'),
(27, 10, '不意', NULL, 'ふい'),
(28, 10, '危惧', NULL, 'きぐ'),
(29, 10, '破棄', NULL, 'はき'),
(30, 10, '意図', NULL, 'いと'),
(31, 10, '既知', NULL, 'きち'),
(32, 10, '囲碁', NULL, 'いご'),
(33, 10, '事後', NULL, 'じご'),
(34, 10, '自主', NULL, 'じしゅ'),
(35, 10, '駆除', NULL, 'くじょ'),
(36, 10, '卑下', NULL, 'ひげ'),
(37, 10, '遺書', NULL, 'いしょ'),
(38, 10, '路地', NULL, 'ろじ'),
(39, 10, '保守', NULL, 'ほしゅ'),
(40, 10, '義理', NULL, ' ぎり'),
(41, 10, '部署', NULL, 'ぶしょ'),
(42, 10, '餓死', NULL, 'がし'),
(43, 10, '語句', NULL, 'ごく'),
(44, 10, '部下', NULL, 'ぶか'),
(45, 10, '語尾', NULL, 'ごび'),
(46, 10, '利子', NULL, 'りし'),
(47, 10, '自我', NULL, 'じが'),
(48, 10, '時差', NULL, 'じさ'),
(49, 10, '意義', NULL, 'いぎ'),
(50, 10, '未知', NULL, 'みち');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phien_am_nghe`
--

CREATE TABLE `phien_am_nghe` (
  `id` int(11) NOT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL,
  `dap_an` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mp3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phien_am_nghe`
--

INSERT INTO `phien_am_nghe` (`id`, `giao_trinh_tab_phu_id`, `dap_an`, `mp3`) VALUES
(3, 15, 'hagi', NULL),
(4, 15, 'naki', NULL),
(5, 15, 'magi', NULL),
(7, 15, 'naki', 'Nhac-chuong-iphone-13-pro-max-mac-dinh.mp3'),
(8, 30, 'した', 'nhac-chuong-de-vuong-remix-dinh-dung.mp3'),
(9, 30, 'どくとく', 'nhac-chuong-de-vuong-remix-dinh-dung.mp3'),
(10, 30, 'くさ', 'nhac-chuong-de-vuong-remix-dinh-dung.mp3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thuoc_tinh` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diff_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `thuoc_tinh`, `diff_color`) VALUES
(261, 'Cấp độ N5', '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>\r\n', '', '', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 345000, 0, 0, 'capdo.jpg', '[\"{\\\"image\\\":\\\"IMG_9617.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9614.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9611.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9609.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9608.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9607.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9606.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9605.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9604.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9603.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9601.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9600.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9599.jpg\\\"}\"]', '2020-01-14 14:01:21', '2021-09-14 14:09:44', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Cấp độ N5', '', 'cap-do-n5', '', 1, '', '', '', NULL, NULL, '102,102', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(264, 'Cấp độ N4', '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>\r\n', '', '', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 375000, 0, 0, 'capdo.jpg', '[\"{\\\"image\\\":\\\"IMG_9584.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9583.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9582.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9580.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9578.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9577.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9576.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9575.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9572.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9571.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9570.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9564.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9563.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9559.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9558.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9556.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9555.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9554.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9549.jpg\\\"}\"]', '2020-01-14 14:01:52', '2021-09-14 14:09:25', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Cấp độ N4', '', 'cap-do-n4', '', 1, '', '', '', NULL, NULL, '102,102', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(266, 'Cấp độ N3', '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>\r\n', '', '', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 345000, 0, 0, 'capdo.jpg', '[\"{\\\"image\\\":\\\"IMG_9547.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9546.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9539.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9535.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9534.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9533.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9528.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9526.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9524.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9523.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9522.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9517.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9516.jpg\\\"}\"]', '2020-01-14 14:01:37', '2021-09-14 14:09:05', 0, 1, 1, 1, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Cấp độ N3', '', 'cap-do-n3', '', 1, '', '', '', NULL, NULL, '102,102', '[\"0\",\"0\",\"0\",\"0\"]', 2),
(268, 'Cấp độ N2', '', '', '', '', '', '', 375000, 0, 0, 'capdo.jpg', '[\"{\\\"image\\\":\\\"IMG_9652.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9651.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9647.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9646.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9642.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9641.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9640.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9639.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9638.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9637.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9635.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9634.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9633.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9632.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9631.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9629.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9628.jpg\\\"}\"]', '2020-01-14 14:01:01', '2021-10-11 10:10:19', 0, 1, 1, 1, 0, '', '', '[\"35\",\"36\"]', '', '', '', '', '', '[\"37\",\"38\"]', '', '', '', '', 1, 'Cấp độ N2', '', 'cap-do-n2', '', 1, '', '', '', NULL, NULL, '102,102', '[\"2\",\"8\",\"9\",\"10\"]', 2),
(269, 'Cấp độ N1', '', '', '', '', '', '', 250000, 10, 0, 'capdo.jpg', '[\"{\\\"image\\\":\\\"IMG_9662.jpg\\\"}\"]', '2021-03-05 17:03:33', '2021-10-11 10:10:57', 0, 1, 1, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Cấp độ N1', '', 'cap-do-n1', '', 1, '', '', '', NULL, NULL, '102,102', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(270, 'Lớp N5 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em><span style=\"font-size:16px\">Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</span></em></strong></h2>\r\n\r\n<p>Tương t&aacute;c giữa gi&aacute;o &nbsp;vi&ecirc;n v&agrave; học vi&ecirc;n:</p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh sử dụng hệ điều h&agrave;nh Win7 trở l&ecirc;n hoặc Win XP. M&aacute;y kết nối mạng inter.net</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, sẽ bị kho&aacute; chức năng n&oacute;i từ ph&iacute;a học vi&ecirc;n đ&oacute;.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><strong><span style=\"font-size:16px\">TH&Ocirc;NG TIN LỚP LUYỆN THI N1 ONLINE (Học với gi&aacute;o vi&ecirc;n)</span></strong></em></h2>\r\n\r\n<p>&diams; Đối tượng:</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N2.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N2, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p>&diams; Thời lượng học:</p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p>&diams; Học ph&iacute;: 3.500.000 VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng. &nbsp;(tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online b&ecirc;n dưới )</p>\r\n\r\n<p>&diams; Số lượng: 5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p>&diams; Gi&aacute;o vi&ecirc;n:</p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm.</p>\r\n\r\n<p>&diams; Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:16px\"><em><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ:</strong></em></span></h2>\r\n\r\n<p>Email: bichhongnn@gmail.com<br />\r\nHotline: 0398.677.822 - 0988424081<br />\r\nWebsite: vuihoctiengnhat.com<br />\r\nĐịa chỉ: Ph&uacute;c Thọ - Nghĩa Trụ - Văn Giang - Hưng Y&ecirc;n</p>\r\n', '', '', 0, 0, 0, 'Nx_Online.jpg', '[\"{\\\"image\\\":\\\"IMG_9623.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9622.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9621.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9620.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9619.jpg\\\"}\"]', '2021-03-06 11:03:19', '2021-09-14 11:09:02', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'Lớp N5 online', '', 'lop-n5-online', '', 1, '', '', '', NULL, NULL, '101,101', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(271, 'Lớp N4 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p style=\"text-align:center\"><strong>GIỚI THIỆU LỚP&nbsp;N4 ONLINE HỌC VỚI GI&Aacute;O VI&Ecirc;N</strong></p>\r\n\r\n<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi đảm bảo đậu N4 của trường ngoại ngữ Việt Nhật (chương tr&igrave;nh n&agrave;y được sử dụng cho lớp Du học sinh trường).</p>\r\n\r\n<p>Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</p>\r\n\r\n<p><strong>Tương t&aacute;c giữa gi&aacute;o&nbsp; vi&ecirc;n v&agrave; học vi&ecirc;n:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p><strong>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</strong></p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh để b&agrave;n hoặc laptop kết nối mạng inter.net.</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, học vi&ecirc;n phải tự tắt Micro để tr&aacute;nh ảnh hưởng đến lớp học.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>+ Trước ng&agrave;y khai giảng sẽ c&oacute; hướng dẫn đăng nhập, thực tập thao t&aacute;c, kiểm tra phần mềm,...</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN LỚP LUYỆN THI N4 ONLINE (Học với gi&aacute;o vi&ecirc;n)</strong></p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Đối tượng:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n chưa từng học tiếng Nhật.</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng tiếng Nhật N5 hoặc tr&igrave;nh độ tương đương.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Thời lượng học:</strong></p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a&nbsp;<strong>6 th&aacute;ng</strong>.</p>\r\n\r\n<p>+&nbsp;<strong>3 buổi/ tuần</strong>.</p>\r\n\r\n<p>+&nbsp;<strong>2 tiết/ buổi</strong>.</p>\r\n\r\n<p>+&nbsp;<strong>45 ph&uacute;t/tiết học</strong>.</p>\r\n\r\n<p>(Th&aacute;ng học t&iacute;nh theo đơn vị tuần: 4 tuần)</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Học ph&iacute;:</strong><strong>&nbsp;2.000.000</strong>&nbsp;VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng.&nbsp; (tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online xem b&ecirc;n dưới<strong>&nbsp;</strong>)</p>\r\n\r\n<p>(Giảm 10% cho học vi&ecirc;n đăng k&yacute; trọn kho&aacute; N4&nbsp; -&nbsp;<strong>12.000.000&nbsp;=&gt; 10.800.000đ</strong>)</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Số lượng:</strong>&nbsp;5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o vi&ecirc;n:</strong></p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm, ngo&agrave;i ra c&oacute; c&aacute;c gi&aacute;o vi&ecirc;n dạy h&aacute;n tự, chuy&ecirc;n đề...</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</strong></p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; lớp N1 đặc biệt, mỗi năm trường chỉ tuyển hai đợt v&agrave;o th&aacute;ng 7 v&agrave; th&aacute;ng 12. Số lượng học vi&ecirc;n được nhận v&agrave;o cũng rất hạn chế, một lớp chỉ tối đa l&agrave; 7, 8 học vi&ecirc;n nhưng 100% học vi&ecirc;n đều đậu N1. Sở dĩ c&oacute; được kết quả tr&ecirc;n l&agrave; v&igrave; ch&uacute;ng t&ocirc;i lu&ocirc;n chăm s&oacute;c, theo s&aacute;t khả năng của từng học vi&ecirc;n để kịp thời gi&uacute;p c&aacute;c bạn củng cố kiến thức v&agrave; c&oacute; được phương ph&aacute;p học hiệu quả.</p>\r\n\r\n<p>Nếu c&aacute;c bạn n&agrave;o đ&atilde; từng c&oacute; kinh nghiệm thi N1 của những năm trước th&igrave; tin chắc l&agrave; bạn đ&atilde; hiểu đậu N1 kh&ocirc;ng hề đơn giản! Vậy, điều g&igrave; khiến ch&uacute;ng t&ocirc;i tự tin đảm bảo c&aacute;c bạn sẽ đậu 100% khi tham gia v&agrave;o lớp học n&agrave;y? L&agrave; v&igrave; ch&uacute;ng t&ocirc;i c&oacute; kinh nghiệm, c&oacute; phương ph&aacute;p v&agrave; ch&uacute;ng t&ocirc;i sẽ trao cho c&aacute;c bạn thực lực để l&agrave;m được điều đ&oacute;.</p>\r\n\r\n<p>Khi ho&agrave;n th&agrave;nh xong kh&oacute;a học cũng đồng nghĩa c&aacute;c bạn đ&atilde; ho&agrave;n th&agrave;nh tr&ecirc;n 30 cuốn gi&aacute;o tr&igrave;nh kh&aacute;c nhau v&agrave; c&aacute;c bạn c&oacute; đầy đủ năng lực để l&agrave;m c&aacute;c c&ocirc;ng việc bi&ecirc;n-phi&ecirc;n dịch v&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c li&ecirc;n quan đến tiếng Nhật ở mức độ cấp cao.</p>\r\n\r\n<p>Tuy mỗi tuần c&aacute;c bạn chỉ học 3 buổi nhưng ch&uacute;ng t&ocirc;i cung cấp cho c&aacute;c bạn lượng b&agrave;i tập l&agrave;m h&agrave;ng ng&agrave;y từ thứ 2 đến chủ nhật. Tối thiểu mỗi ng&agrave;y c&aacute;c bạn phải d&agrave;nh từ 2-3 tiếng mới c&oacute; thể ho&agrave;n th&agrave;nh hết số lượng b&agrave;i tập đ&oacute;. Ch&uacute;ng t&ocirc;i chỉ tuyển những học vi&ecirc;n c&oacute; sự y&ecirc;u th&iacute;ch tiếng Nhật v&agrave; thực sự nghi&ecirc;m t&uacute;c khi tham gia v&agrave;o kh&oacute;a học n&agrave;y.</p>\r\n\r\n<p>V&agrave;o ng&agrave;y đến lớp, ch&uacute;ng t&ocirc;i sẽ c&oacute; c&aacute;c b&agrave;i kiểm tra v&agrave; sẽ lưu kết quả n&agrave;y suốt kh&oacute;a học để c&aacute;c bạn c&oacute; thể đ&aacute;nh gi&aacute; khả năng tiến bộ của m&igrave;nh qua từng th&aacute;ng. Những b&agrave;i kiểm tra kh&ocirc;ng đạt sẽ buộc phải học v&agrave; l&agrave;m lại cho đến khi đạt. Ch&uacute;ng t&ocirc;i sẽ dạy tất cả c&aacute;c m&ocirc;n trong c&ugrave;ng một buổi nhưng vẫn đảm bảo về khả năng tiếp thu cho từng học vi&ecirc;n v&igrave; CH&Uacute;NG T&Ocirc;I C&Oacute; KINH NGHIỆM V&Agrave; PHƯƠNG PH&Aacute;P TỐT!</p>\r\n\r\n<p>Với mức học ph&iacute; 3,5 triệu một th&aacute;ng c&oacute; thể bạn sẽ cho l&agrave; đắt nhưng nếu thử l&agrave;m một ph&eacute;p t&iacute;nh cộng cho: tiền học ph&iacute;, tiền gi&aacute;o tr&igrave;nh, chi ph&iacute; đi lại (ăn uống, xăng dầu, &hellip;), thời gian v&agrave; c&ocirc;ng sức m&agrave; bạn sẽ tốn trong nhiều năm cho đến khi bạn đậu N1 th&igrave; đằng n&agrave;o mới thực sự đắt? Nhiều năm học nhưng kh&ocirc;ng đậu sẽ khiến bạn ch&aacute;n nản v&agrave; bỏ cuộc v&agrave; đ&oacute; l&agrave; điều cực kỳ đ&aacute;ng tiếc.</p>\r\n\r\n<p>Nếu bạn muốn chắc chắn được cầm tấm bằng N1 v&agrave;o năm sau, h&atilde;y li&ecirc;n lạc với ch&uacute;ng t&ocirc;i ngay b&acirc;y giờ !!!</p>\r\n\r\n<p>- See more at: http://ngoainguvietnhat.com/hoc-tieng-nhat-thong-tin-khoa-hoc/lop-luyen-thi-n1.html#sthash.MzKwRkWB.dpuf</p>\r\n\r\n<p><strong>&diams; Đăng k&yacute;:&nbsp;</strong>Đăng k&yacute; v&agrave; chuyển khoản học ph&iacute; trước. Li&ecirc;n lạc admin: 0933 666 750 - ph&ograve;ng ghi danh trường: 0835 100 555</p>\r\n', '', '', 50000, 10, 0, 'Nx_Online.jpg', '[\"{\\\"image\\\":\\\"IMG_9693.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9695.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9696.jpg\\\"}\"]', '2021-03-06 11:03:11', '2021-09-24 09:09:51', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Lớp N4 online', '', 'lop-n4-online', '', 1, '', '', '', NULL, NULL, '101,101', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(272, 'Lớp N3 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em><span style=\"font-size:16px\">Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</span></em></strong></h2>\r\n\r\n<p>Tương t&aacute;c giữa gi&aacute;o &nbsp;vi&ecirc;n v&agrave; học vi&ecirc;n:</p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh sử dụng hệ điều h&agrave;nh Win7 trở l&ecirc;n hoặc Win XP. M&aacute;y kết nối mạng inter.net</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, sẽ bị kho&aacute; chức năng n&oacute;i từ ph&iacute;a học vi&ecirc;n đ&oacute;.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><strong><span style=\"font-size:16px\">TH&Ocirc;NG TIN LỚP LUYỆN THI N1 ONLINE (Học với gi&aacute;o vi&ecirc;n)</span></strong></em></h2>\r\n\r\n<p>&diams; Đối tượng:</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N2.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N2, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p>&diams; Thời lượng học:</p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p>&diams; Học ph&iacute;: 3.500.000 VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng. &nbsp;(tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online b&ecirc;n dưới )</p>\r\n\r\n<p>&diams; Số lượng: 5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p>&diams; Gi&aacute;o vi&ecirc;n:</p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm.</p>\r\n\r\n<p>&diams; Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:16px\"><em><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ:</strong></em></span></h2>\r\n\r\n<p>Email: bichhongnn@gmail.com<br />\r\nHotline: 0398.677.822 - 0988424081<br />\r\nWebsite: vuihoctiengnhat.com<br />\r\nĐịa chỉ: Ph&uacute;c Thọ - Nghĩa Trụ - Văn Giang - Hưng Y&ecirc;n</p>\r\n', '', '', 0, 0, 0, 'Nx_Online.jpg', '[\"{\\\"image\\\":\\\"IMG_9704.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9703.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9702.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9700.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9699.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9697.jpg\\\"}\"]', '2021-03-06 11:03:04', '2021-09-14 11:09:22', 0, 0, 1, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Lớp N3 online', '', 'lop-n3-online', '', 1, '', '', '', NULL, NULL, '101,101', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(273, 'Lớp N2 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi đảm bảo đậu N2 của trường ngoại ngữ Việt Nhật. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</p>\r\n\r\n<p><strong>Tương t&aacute;c giữa gi&aacute;o&nbsp; vi&ecirc;n v&agrave; học vi&ecirc;n:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p><strong>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</strong></p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh để b&agrave;n hoặc laptop kết nối mạng inter.net.</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, học vi&ecirc;n phải tự tắt Micro để tr&aacute;nh ảnh hưởng đến lớp học.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>+ Trước ng&agrave;y khai giảng sẽ c&oacute; hướng dẫn đăng nhập, thực tập thao t&aacute;c, kiểm tra phần mềm,...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN LỚP LUYỆN THI N2 ONLINE (Học với gi&aacute;o vi&ecirc;n)</strong></p>\r\n\r\n<p><strong>(Lớp c&oacute; cam kết đậu N2 JLPT)</strong></p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Đối tượng:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N3.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N3, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Thời lượng học:</strong></p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Học ph&iacute;:</strong><strong>&nbsp;</strong>3.000.000 VNĐ/1HV/1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng.&nbsp; (tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online xem b&ecirc;n dưới<strong>&nbsp;</strong>)</p>\r\n\r\n<p>Giảm 10% học ph&iacute; khi HV đăng k&yacute; đ&oacute;ng trọn kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Số lượng:</strong>&nbsp;5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o vi&ecirc;n:</strong></p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm, ngo&agrave;i ra c&oacute; c&aacute;c gi&aacute;o vi&ecirc;n dạy h&aacute;n tự, chuy&ecirc;n đề...</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</strong></p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n', '', '', 0, 0, 0, 'Nx_Online.jpg', '[\"{\\\"image\\\":\\\"IMG_9712.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9711.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9710.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9709.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9707.jpg\\\"}\"]', '2021-03-06 11:03:13', '2021-09-24 09:09:04', 0, 1, 1, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Lớp N2 online', '', 'lop-n2-online', '', 1, '', '', '', NULL, NULL, '101,101', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(274, 'Lớp N1 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 của trường ngoại ngữ Việt Nhật. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</p>\r\n\r\n<p><strong>Tương t&aacute;c giữa gi&aacute;o&nbsp; vi&ecirc;n v&agrave; học vi&ecirc;n:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em><span style=\"font-size:16px\">Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</span></em></strong></h2>\r\n\r\n<p>Tương t&aacute;c giữa gi&aacute;o &nbsp;vi&ecirc;n v&agrave; học vi&ecirc;n:</p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh sử dụng hệ điều h&agrave;nh Win7 trở l&ecirc;n hoặc Win XP. M&aacute;y kết nối mạng inter.net</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, sẽ bị kho&aacute; chức năng n&oacute;i từ ph&iacute;a học vi&ecirc;n đ&oacute;.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><strong><span style=\"font-size:16px\">TH&Ocirc;NG TIN LỚP LUYỆN THI N1 ONLINE (Học với gi&aacute;o vi&ecirc;n)</span></strong></em></h2>\r\n\r\n<p>&diams; Đối tượng:</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N2.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N2, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p>&diams; Thời lượng học:</p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p>&diams; Học ph&iacute;: 3.500.000 VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng. &nbsp;(tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online b&ecirc;n dưới )</p>\r\n\r\n<p>&diams; Số lượng: 5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p>&diams; Gi&aacute;o vi&ecirc;n:</p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm.</p>\r\n\r\n<p>&diams; Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p><strong>HƯỚNG DẪN ĐĂNG K&Yacute; LỚP ONLINE</strong></p>\r\n\r\n<p><strong>BƯỚC 1:</strong>&nbsp;T&Igrave;M HIỂU TH&Ocirc;NG TIN LỚP QUA C&Aacute;C B&Agrave;I GIỚI THIỂU VỀ LỚP.</p>\r\n\r\n<p>Sau khi tham khảo th&ocirc;ng tin khối lớp bạn cần tham gia nếu bạn cần tư vấn th&ecirc;m về lớp vui l&ograve;ng li&ecirc;n hệ với admin hoặc gi&aacute;o vi&ecirc;n qua c&aacute;c c&aacute;ch thức li&ecirc;n hệ b&ecirc;n dưới của trang.</p>\r\n\r\n<p><strong>BƯỚC 2:&nbsp;</strong>Đ&Oacute;NG HỌC PH&Iacute;.</p>\r\n\r\n<p>Chuyển khoản tại Việt Nam:</p>\r\n\r\n<p>Vui l&ograve;ng chuyển khoản học ph&iacute; v&agrave;o t&agrave;i khoản sau:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&acirc;n h&agrave;ng Techcombank (Ng&acirc;n h&agrave;ng TMCP kỹ&nbsp;thương Việt Nam)</p>\r\n\r\n			<p>Chủ TK: <strong>An Thị B&iacute;ch Hồng</strong></p>\r\n\r\n			<p>Số TK:<strong>&nbsp;</strong></p>\r\n\r\n			<p>Chi nh&aacute;nh: Thăng Long</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nội dung chuyển khoản:</p>\r\n\r\n<p>Cấp độ học - Họ t&ecirc;n - số điện thoại</p>\r\n\r\n<h2><span style=\"font-size:16px\"><em><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ:</strong></em></span></h2>\r\n\r\n<p>Email: bichhongnn@gmail.com<br />\r\nHotline: 0398.677.822 - 0988424081<br />\r\nWebsite: vuihoctiengnhat.com<br />\r\nĐịa chỉ: Ph&uacute;c Thọ - Nghĩa Trụ - Văn Giang - Hưng Y&ecirc;n</p>\r\n', '', '', 50000, 15, 0, 'Nx_Online.jpg', '[\"{\\\"image\\\":\\\"IMG_9705.jpg\\\"}\",\"{\\\"image\\\":\\\"IMG_9706.jpg\\\"}\"]', '2021-03-06 11:03:23', '2021-10-10 10:10:23', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Lớp N1 online', '', 'lop-n1-online', '', 1, '', '', '', NULL, NULL, '101,101', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(275, 'Đề thi N1', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2021-12-01 08:12:49', NULL, 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'Đề thi N1', '', 'de-thi-n1', '', 1, '', '', '', NULL, NULL, '103,103', '[\"0\",\"0\",\"0\",\"0\"]', 0),
(276, 'Đề luyện thi N2', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2022-01-18 11:01:44', '2022-01-19 08:01:03', 0, 0, 0, 0, 0, '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 1, 'Đề luyện thi N2', '', 'de-luyen-thi-n2', '', 1, '', '', '', NULL, NULL, '103,103', '[\"0\",\"0\",\"0\",\"0\"]', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `home`) VALUES
(101, 'Học online với giáo viên', '', '', 0, 0, '', '2021-08-28 10:08:47', NULL, '', '', '', '', '', 1, 'Học online với giáo viên', '', 'hoc-online-voi-giao-vien', '', 1, NULL),
(102, 'Học theo cấp độ', '', '', 0, 0, '', '2021-08-28 10:08:12', NULL, '', '', '', '', '', 1, 'Học theo cấp độ', '', 'hoc-theo-cap-do', '', 1, NULL),
(103, 'Đề thi', '', '', 0, 0, '', '2021-12-01 08:12:18', NULL, '', '', '', '', '', 1, 'Đề thi', '', 'de-thi', '', 1, NULL),
(104, 'Giáo trình N1 quyển 1', '', '', 102, 0, '', '2022-01-05 11:01:01', NULL, '', '', '', '', '', 1, 'Giáo trình N1 quyển 1', '', 'giao-trinh-n1-quyen-1', '', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 101, 'Học online với giáo viên', 'vn', '', '', '', '', '', '', '', 0, 'hoc-online-voi-giao-vien', '', 'Học online với giáo viên', ''),
(2, 101, 'english version Học online với giáo viên', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hoc-online-voi-giao-vien', '', 'Học online với giáo viên', ''),
(3, 102, 'Học theo cấp độ', 'vn', '', '', '', '', '', '', '', 0, 'hoc-theo-cap-do', '', 'Học theo cấp độ', ''),
(4, 102, 'english version Học theo cấp độ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hoc-theo-cap-do', '', 'Học theo cấp độ', ''),
(5, 103, 'Đề thi', 'vn', '', '', '', '', '', '', '', 0, 'de-thi', '', 'Đề thi', ''),
(6, 103, 'english version Đề thi', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-de-thi', '', 'Đề thi', ''),
(7, 104, 'Giáo trình N1 quyển 1', 'vn', '', '', '', '', '', '', '', 0, 'giao-trinh-n1-quyen-1', '', 'Giáo trình N1 quyển 1', ''),
(8, 104, 'english version Giáo trình N1 quyển 1', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-giao-trinh-n1-quyen-1', '', 'Giáo trình N1 quyển 1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_diff_color`
--

CREATE TABLE `product_diff_color` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_diff_color`
--

INSERT INTO `product_diff_color` (`id`, `name`) VALUES
(2, 'Nhóm một'),
(3, 'Nhóm hai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(509, 261, 'vn', 'Cấp độ N5', '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>\r\n', '', '', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'cap-do-n5', 'Cấp độ N5', '', ''),
(510, 261, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vr389', 'VR389', '', ''),
(515, 264, 'vn', 'Cấp độ N4', '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>\r\n', '', '', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'cap-do-n4', 'Cấp độ N4', '', ''),
(516, 264, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tb90', 'TB90', '', ''),
(519, 266, 'vn', 'Cấp độ N3', '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>\r\n', '', '', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nWhere does it come from?<br />\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<br />\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>Why do we use it?</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>Where can I get some?</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'cap-do-n3', 'Cấp độ N3', '', ''),
(520, 266, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tbav7', 'TBAV7', '', ''),
(523, 268, 'vn', 'Cấp độ N2', '', '', '', '', '', '', '', '', '[\"35\",\"36\"]', '', '', '', '', '', '[\"37\",\"38\"]', '', '', '', '', 0, 'cap-do-n2', 'Cấp độ N2', '', ''),
(524, 268, 'en', 'Túi Xách Tay Phối Kim Loại Thanh Lịch - SAT 0264 - Màu Đỏ', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-madame', 'Madame', '', ''),
(525, 269, 'vn', 'Cấp độ N1', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'cap-do-n1', 'Cấp độ N1', '', ''),
(526, 269, 'en', 'english version Kazuo', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-kazuo', 'Kazuo', '', ''),
(527, 270, 'vn', 'Lớp N5 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em><span style=\"font-size:16px\">Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</span></em></strong></h2>\r\n\r\n<p>Tương t&aacute;c giữa gi&aacute;o &nbsp;vi&ecirc;n v&agrave; học vi&ecirc;n:</p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh sử dụng hệ điều h&agrave;nh Win7 trở l&ecirc;n hoặc Win XP. M&aacute;y kết nối mạng inter.net</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, sẽ bị kho&aacute; chức năng n&oacute;i từ ph&iacute;a học vi&ecirc;n đ&oacute;.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><strong><span style=\"font-size:16px\">TH&Ocirc;NG TIN LỚP LUYỆN THI N1 ONLINE (Học với gi&aacute;o vi&ecirc;n)</span></strong></em></h2>\r\n\r\n<p>&diams; Đối tượng:</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N2.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N2, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p>&diams; Thời lượng học:</p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p>&diams; Học ph&iacute;: 3.500.000 VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng. &nbsp;(tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online b&ecirc;n dưới )</p>\r\n\r\n<p>&diams; Số lượng: 5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p>&diams; Gi&aacute;o vi&ecirc;n:</p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm.</p>\r\n\r\n<p>&diams; Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:16px\"><em><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ:</strong></em></span></h2>\r\n\r\n<p>Email: bichhongnn@gmail.com<br />\r\nHotline: 0398.677.822 - 0988424081<br />\r\nWebsite: vuihoctiengnhat.com<br />\r\nĐịa chỉ: Ph&uacute;c Thọ - Nghĩa Trụ - Văn Giang - Hưng Y&ecirc;n</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'lop-n5-online', 'Lớp N5 online', '', ''),
(528, 270, 'en', 'english version Tã quần trẻ em Kazuo', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-ta-quan-tre-em-kazuo', 'Tã quần trẻ em Kazuo', '', ''),
(529, 271, 'vn', 'Lớp N4 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p style=\"text-align:center\"><strong>GIỚI THIỆU LỚP&nbsp;N4 ONLINE HỌC VỚI GI&Aacute;O VI&Ecirc;N</strong></p>\r\n\r\n<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi đảm bảo đậu N4 của trường ngoại ngữ Việt Nhật (chương tr&igrave;nh n&agrave;y được sử dụng cho lớp Du học sinh trường).</p>\r\n\r\n<p>Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</p>\r\n\r\n<p><strong>Tương t&aacute;c giữa gi&aacute;o&nbsp; vi&ecirc;n v&agrave; học vi&ecirc;n:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p><strong>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</strong></p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh để b&agrave;n hoặc laptop kết nối mạng inter.net.</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, học vi&ecirc;n phải tự tắt Micro để tr&aacute;nh ảnh hưởng đến lớp học.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>+ Trước ng&agrave;y khai giảng sẽ c&oacute; hướng dẫn đăng nhập, thực tập thao t&aacute;c, kiểm tra phần mềm,...</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN LỚP LUYỆN THI N4 ONLINE (Học với gi&aacute;o vi&ecirc;n)</strong></p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Đối tượng:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n chưa từng học tiếng Nhật.</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng tiếng Nhật N5 hoặc tr&igrave;nh độ tương đương.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Thời lượng học:</strong></p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a&nbsp;<strong>6 th&aacute;ng</strong>.</p>\r\n\r\n<p>+&nbsp;<strong>3 buổi/ tuần</strong>.</p>\r\n\r\n<p>+&nbsp;<strong>2 tiết/ buổi</strong>.</p>\r\n\r\n<p>+&nbsp;<strong>45 ph&uacute;t/tiết học</strong>.</p>\r\n\r\n<p>(Th&aacute;ng học t&iacute;nh theo đơn vị tuần: 4 tuần)</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Học ph&iacute;:</strong><strong>&nbsp;2.000.000</strong>&nbsp;VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng.&nbsp; (tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online xem b&ecirc;n dưới<strong>&nbsp;</strong>)</p>\r\n\r\n<p>(Giảm 10% cho học vi&ecirc;n đăng k&yacute; trọn kho&aacute; N4&nbsp; -&nbsp;<strong>12.000.000&nbsp;=&gt; 10.800.000đ</strong>)</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Số lượng:</strong>&nbsp;5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o vi&ecirc;n:</strong></p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm, ngo&agrave;i ra c&oacute; c&aacute;c gi&aacute;o vi&ecirc;n dạy h&aacute;n tự, chuy&ecirc;n đề...</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</strong></p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; lớp N1 đặc biệt, mỗi năm trường chỉ tuyển hai đợt v&agrave;o th&aacute;ng 7 v&agrave; th&aacute;ng 12. Số lượng học vi&ecirc;n được nhận v&agrave;o cũng rất hạn chế, một lớp chỉ tối đa l&agrave; 7, 8 học vi&ecirc;n nhưng 100% học vi&ecirc;n đều đậu N1. Sở dĩ c&oacute; được kết quả tr&ecirc;n l&agrave; v&igrave; ch&uacute;ng t&ocirc;i lu&ocirc;n chăm s&oacute;c, theo s&aacute;t khả năng của từng học vi&ecirc;n để kịp thời gi&uacute;p c&aacute;c bạn củng cố kiến thức v&agrave; c&oacute; được phương ph&aacute;p học hiệu quả.</p>\r\n\r\n<p>Nếu c&aacute;c bạn n&agrave;o đ&atilde; từng c&oacute; kinh nghiệm thi N1 của những năm trước th&igrave; tin chắc l&agrave; bạn đ&atilde; hiểu đậu N1 kh&ocirc;ng hề đơn giản! Vậy, điều g&igrave; khiến ch&uacute;ng t&ocirc;i tự tin đảm bảo c&aacute;c bạn sẽ đậu 100% khi tham gia v&agrave;o lớp học n&agrave;y? L&agrave; v&igrave; ch&uacute;ng t&ocirc;i c&oacute; kinh nghiệm, c&oacute; phương ph&aacute;p v&agrave; ch&uacute;ng t&ocirc;i sẽ trao cho c&aacute;c bạn thực lực để l&agrave;m được điều đ&oacute;.</p>\r\n\r\n<p>Khi ho&agrave;n th&agrave;nh xong kh&oacute;a học cũng đồng nghĩa c&aacute;c bạn đ&atilde; ho&agrave;n th&agrave;nh tr&ecirc;n 30 cuốn gi&aacute;o tr&igrave;nh kh&aacute;c nhau v&agrave; c&aacute;c bạn c&oacute; đầy đủ năng lực để l&agrave;m c&aacute;c c&ocirc;ng việc bi&ecirc;n-phi&ecirc;n dịch v&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c li&ecirc;n quan đến tiếng Nhật ở mức độ cấp cao.</p>\r\n\r\n<p>Tuy mỗi tuần c&aacute;c bạn chỉ học 3 buổi nhưng ch&uacute;ng t&ocirc;i cung cấp cho c&aacute;c bạn lượng b&agrave;i tập l&agrave;m h&agrave;ng ng&agrave;y từ thứ 2 đến chủ nhật. Tối thiểu mỗi ng&agrave;y c&aacute;c bạn phải d&agrave;nh từ 2-3 tiếng mới c&oacute; thể ho&agrave;n th&agrave;nh hết số lượng b&agrave;i tập đ&oacute;. Ch&uacute;ng t&ocirc;i chỉ tuyển những học vi&ecirc;n c&oacute; sự y&ecirc;u th&iacute;ch tiếng Nhật v&agrave; thực sự nghi&ecirc;m t&uacute;c khi tham gia v&agrave;o kh&oacute;a học n&agrave;y.</p>\r\n\r\n<p>V&agrave;o ng&agrave;y đến lớp, ch&uacute;ng t&ocirc;i sẽ c&oacute; c&aacute;c b&agrave;i kiểm tra v&agrave; sẽ lưu kết quả n&agrave;y suốt kh&oacute;a học để c&aacute;c bạn c&oacute; thể đ&aacute;nh gi&aacute; khả năng tiến bộ của m&igrave;nh qua từng th&aacute;ng. Những b&agrave;i kiểm tra kh&ocirc;ng đạt sẽ buộc phải học v&agrave; l&agrave;m lại cho đến khi đạt. Ch&uacute;ng t&ocirc;i sẽ dạy tất cả c&aacute;c m&ocirc;n trong c&ugrave;ng một buổi nhưng vẫn đảm bảo về khả năng tiếp thu cho từng học vi&ecirc;n v&igrave; CH&Uacute;NG T&Ocirc;I C&Oacute; KINH NGHIỆM V&Agrave; PHƯƠNG PH&Aacute;P TỐT!</p>\r\n\r\n<p>Với mức học ph&iacute; 3,5 triệu một th&aacute;ng c&oacute; thể bạn sẽ cho l&agrave; đắt nhưng nếu thử l&agrave;m một ph&eacute;p t&iacute;nh cộng cho: tiền học ph&iacute;, tiền gi&aacute;o tr&igrave;nh, chi ph&iacute; đi lại (ăn uống, xăng dầu, &hellip;), thời gian v&agrave; c&ocirc;ng sức m&agrave; bạn sẽ tốn trong nhiều năm cho đến khi bạn đậu N1 th&igrave; đằng n&agrave;o mới thực sự đắt? Nhiều năm học nhưng kh&ocirc;ng đậu sẽ khiến bạn ch&aacute;n nản v&agrave; bỏ cuộc v&agrave; đ&oacute; l&agrave; điều cực kỳ đ&aacute;ng tiếc.</p>\r\n\r\n<p>Nếu bạn muốn chắc chắn được cầm tấm bằng N1 v&agrave;o năm sau, h&atilde;y li&ecirc;n lạc với ch&uacute;ng t&ocirc;i ngay b&acirc;y giờ !!!</p>\r\n\r\n<p>- See more at: http://ngoainguvietnhat.com/hoc-tieng-nhat-thong-tin-khoa-hoc/lop-luyen-thi-n1.html#sthash.MzKwRkWB.dpuf</p>\r\n\r\n<p><strong>&diams; Đăng k&yacute;:&nbsp;</strong>Đăng k&yacute; v&agrave; chuyển khoản học ph&iacute; trước. Li&ecirc;n lạc admin: 0933 666 750 - ph&ograve;ng ghi danh trường: 0835 100 555</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'lop-n4-online', 'Lớp N4 online', '', ''),
(530, 271, 'en', 'english version BVS Huygo', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-bvs-huygo', 'BVS Huygo', '', ''),
(531, 272, 'vn', 'Lớp N3 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em><span style=\"font-size:16px\">Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</span></em></strong></h2>\r\n\r\n<p>Tương t&aacute;c giữa gi&aacute;o &nbsp;vi&ecirc;n v&agrave; học vi&ecirc;n:</p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh sử dụng hệ điều h&agrave;nh Win7 trở l&ecirc;n hoặc Win XP. M&aacute;y kết nối mạng inter.net</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, sẽ bị kho&aacute; chức năng n&oacute;i từ ph&iacute;a học vi&ecirc;n đ&oacute;.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><strong><span style=\"font-size:16px\">TH&Ocirc;NG TIN LỚP LUYỆN THI N1 ONLINE (Học với gi&aacute;o vi&ecirc;n)</span></strong></em></h2>\r\n\r\n<p>&diams; Đối tượng:</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N2.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N2, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p>&diams; Thời lượng học:</p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p>&diams; Học ph&iacute;: 3.500.000 VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng. &nbsp;(tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online b&ecirc;n dưới )</p>\r\n\r\n<p>&diams; Số lượng: 5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p>&diams; Gi&aacute;o vi&ecirc;n:</p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm.</p>\r\n\r\n<p>&diams; Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-size:16px\"><em><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ:</strong></em></span></h2>\r\n\r\n<p>Email: bichhongnn@gmail.com<br />\r\nHotline: 0398.677.822 - 0988424081<br />\r\nWebsite: vuihoctiengnhat.com<br />\r\nĐịa chỉ: Ph&uacute;c Thọ - Nghĩa Trụ - Văn Giang - Hưng Y&ecirc;n</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'lop-n3-online', 'Lớp N3 online', '', ''),
(532, 272, 'en', 'english version Tã dán Huygo', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-ta-dan-huygo', 'Tã dán Huygo', '', ''),
(533, 273, 'vn', 'Lớp N2 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi đảm bảo đậu N2 của trường ngoại ngữ Việt Nhật. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</p>\r\n\r\n<p><strong>Tương t&aacute;c giữa gi&aacute;o&nbsp; vi&ecirc;n v&agrave; học vi&ecirc;n:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p><strong>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</strong></p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh để b&agrave;n hoặc laptop kết nối mạng inter.net.</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, học vi&ecirc;n phải tự tắt Micro để tr&aacute;nh ảnh hưởng đến lớp học.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>+ Trước ng&agrave;y khai giảng sẽ c&oacute; hướng dẫn đăng nhập, thực tập thao t&aacute;c, kiểm tra phần mềm,...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN LỚP LUYỆN THI N2 ONLINE (Học với gi&aacute;o vi&ecirc;n)</strong></p>\r\n\r\n<p><strong>(Lớp c&oacute; cam kết đậu N2 JLPT)</strong></p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Đối tượng:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N3.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N3, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Thời lượng học:</strong></p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Học ph&iacute;:</strong><strong>&nbsp;</strong>3.000.000 VNĐ/1HV/1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng.&nbsp; (tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online xem b&ecirc;n dưới<strong>&nbsp;</strong>)</p>\r\n\r\n<p>Giảm 10% học ph&iacute; khi HV đăng k&yacute; đ&oacute;ng trọn kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Số lượng:</strong>&nbsp;5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o vi&ecirc;n:</strong></p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm, ngo&agrave;i ra c&oacute; c&aacute;c gi&aacute;o vi&ecirc;n dạy h&aacute;n tự, chuy&ecirc;n đề...</p>\r\n\r\n<p><strong>&diams;&nbsp;</strong><strong>Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</strong></p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'lop-n2-online', 'Lớp N2 online', '', ''),
(534, 273, 'en', 'english version Tã quần Kazuo', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-ta-quan-kazuo', 'Tã quần Kazuo', '', ''),
(535, 274, 'vn', 'Lớp N1 online', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 của trường ngoại ngữ Việt Nhật. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<p>Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</p>\r\n\r\n<p><strong>Tương t&aacute;c giữa gi&aacute;o&nbsp; vi&ecirc;n v&agrave; học vi&ecirc;n:</strong></p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p>Chương tr&igrave;nh học Online được x&acirc;y dựng theo lớp học thực tế, lớp học sử dụng c&aacute;c b&agrave;i giảng theo chương tr&igrave;nh lớp luyện thi N1 trung t&acirc;m. Lớp học sử dụng c&aacute;c phần mềm hỗ trợ, c&ugrave;ng c&aacute;c chức năng tr&ecirc;n website tạo sự tương t&aacute;c tự nhi&ecirc;n với gi&aacute;o vi&ecirc;n, tương t&aacute;c giữa c&aacute;c học vi&ecirc;n, tạo kh&ocirc;ng kh&iacute; lớp học 1 c&aacute;ch tự nhi&ecirc;n v&agrave; thao t&aacute;c đơn giản nhất. Ngo&agrave;i giờ học trực tuyến với gi&aacute;o vi&ecirc;n, học vi&ecirc;n c&ograve;n được cung cấp c&aacute;c b&agrave;i học offline, c&aacute;c b&agrave;i nghe, b&agrave;i trắc nghiệm bổ sung kiến thức.</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em><span style=\"font-size:16px\">Một số đặc điểm t&iacute;nh năng cơ bản trong lớp học Online:</span></em></strong></h2>\r\n\r\n<p>Tương t&aacute;c giữa gi&aacute;o &nbsp;vi&ecirc;n v&agrave; học vi&ecirc;n:</p>\r\n\r\n<p>+ Học vi&ecirc;n nghe v&agrave; đối thoại trực tiếp với gi&aacute;o vi&ecirc;n v&agrave; c&aacute;c học vi&ecirc;n kh&aacute;c trong lớp học.</p>\r\n\r\n<p>+ Gi&aacute;o vi&ecirc;n trực tiếp giảng b&agrave;i, học vi&ecirc;n nghe v&agrave; nh&igrave;n trực tiếp b&agrave;i giảng.</p>\r\n\r\n<p>+ B&agrave;i tập trắc nghiệm, c&aacute;c b&agrave;i kiểm tra kiến thức sử dụng trong lớp học được thực hiện nhanh ch&oacute;ng, gi&aacute;o vi&ecirc;n quan s&aacute;t v&agrave; nhận x&eacute;t ngay trong lớp.</p>\r\n\r\n<p>+ B&agrave;i tập online tr&ecirc;n website, c&aacute;c b&agrave;i luyện nghe được gi&aacute;o vi&ecirc;n cung cấp cho từng lớp theo ng&agrave;y học.</p>\r\n\r\n<p>+ Mỗi buổi học bao gồm gi&aacute;o vi&ecirc;n dạy ch&iacute;nh, 1 trợ giảng, 1 kỹ thuật vi&ecirc;n. Kỹ thuật vi&ecirc;n hỗ trợ học vi&ecirc;n trong qu&aacute; tr&igrave;nh học đảm bảo lớp diễn ra li&ecirc;n tục.</p>\r\n\r\n<p>Chuẩn bị v&agrave; thao t&aacute;c trong lớp học:</p>\r\n\r\n<p>+ 1 m&aacute;y t&iacute;nh sử dụng hệ điều h&agrave;nh Win7 trở l&ecirc;n hoặc Win XP. M&aacute;y kết nối mạng inter.net</p>\r\n\r\n<p>+ C&oacute; Microphone v&agrave; headphone tốt.</p>\r\n\r\n<p>+ Học vi&ecirc;n phải học nơi y&ecirc;n tĩnh (nơi đặt m&aacute;y t&iacute;nh). Trường hợp nơi học vi&ecirc;n ồn, sẽ bị kho&aacute; chức năng n&oacute;i từ ph&iacute;a học vi&ecirc;n đ&oacute;.</p>\r\n\r\n<p>+ Học vi&ecirc;n Online trước giờ học 5 ph&uacute;t để kiểm tra m&aacute;y t&iacute;nh v&agrave; đường truyền kết nối trước khi v&agrave;o giờ học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><em><strong><span style=\"font-size:16px\">TH&Ocirc;NG TIN LỚP LUYỆN THI N1 ONLINE (Học với gi&aacute;o vi&ecirc;n)</span></strong></em></h2>\r\n\r\n<p>&diams; Đối tượng:</p>\r\n\r\n<p>+ Học vi&ecirc;n đ&atilde; c&oacute; bằng N2.</p>\r\n\r\n<p>+ Học vi&ecirc;n tr&igrave;nh độ tương đương N2, vượt qua kiểm tra đầu v&agrave;o của lớp n&agrave;y.</p>\r\n\r\n<p>+ Học vi&ecirc;n kh&ocirc;ng giới hạn về địa điểm, c&oacute; thể đang sinh sống tại Nhật.</p>\r\n\r\n<p>&diams; Thời lượng học:</p>\r\n\r\n<p>+ Tổng thời lượng kh&oacute;a 12 th&aacute;ng.</p>\r\n\r\n<p>+ 3 buổi/ tuần.</p>\r\n\r\n<p>+ 2 tiết/ buổi.</p>\r\n\r\n<p>+ 45 ph&uacute;t/tiết học.</p>\r\n\r\n<p>&diams; Học ph&iacute;: 3.500.000 VNĐ/ 1 th&aacute;ng. Đ&oacute;ng học ph&iacute; từng th&aacute;ng. &nbsp;(tham khảo c&aacute;ch đ&oacute;ng học ph&iacute; Online b&ecirc;n dưới )</p>\r\n\r\n<p>&diams; Số lượng: 5-10 học vi&ecirc;n/ lớp.</p>\r\n\r\n<p>&diams; Gi&aacute;o vi&ecirc;n:</p>\r\n\r\n<p>+ 1 lớp 2 gi&aacute;o vi&ecirc;n chủ nhiệm.</p>\r\n\r\n<p>&diams; Gi&aacute;o tr&igrave;nh v&agrave; t&agrave;i liệu:</p>\r\n\r\n<p>+ Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn ri&ecirc;ng.</p>\r\n\r\n<p>+ Tổng hợp c&aacute;c gi&aacute;o tr&igrave;nh bổ sung c&aacute;c kỹ năng c&ograve;n yếu cho học vi&ecirc;n.</p>\r\n\r\n<p>+ T&agrave;i liệu sẽ được cung cấp từng ng&agrave;y, b&agrave;i tập v&agrave; b&agrave;i kiểm tra mỗi ng&agrave;y.</p>\r\n\r\n<p><strong>HƯỚNG DẪN ĐĂNG K&Yacute; LỚP ONLINE</strong></p>\r\n\r\n<p><strong>BƯỚC 1:</strong>&nbsp;T&Igrave;M HIỂU TH&Ocirc;NG TIN LỚP QUA C&Aacute;C B&Agrave;I GIỚI THIỂU VỀ LỚP.</p>\r\n\r\n<p>Sau khi tham khảo th&ocirc;ng tin khối lớp bạn cần tham gia nếu bạn cần tư vấn th&ecirc;m về lớp vui l&ograve;ng li&ecirc;n hệ với admin hoặc gi&aacute;o vi&ecirc;n qua c&aacute;c c&aacute;ch thức li&ecirc;n hệ b&ecirc;n dưới của trang.</p>\r\n\r\n<p><strong>BƯỚC 2:&nbsp;</strong>Đ&Oacute;NG HỌC PH&Iacute;.</p>\r\n\r\n<p>Chuyển khoản tại Việt Nam:</p>\r\n\r\n<p>Vui l&ograve;ng chuyển khoản học ph&iacute; v&agrave;o t&agrave;i khoản sau:</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Ng&acirc;n h&agrave;ng Techcombank (Ng&acirc;n h&agrave;ng TMCP kỹ&nbsp;thương Việt Nam)</p>\r\n\r\n			<p>Chủ TK: <strong>An Thị B&iacute;ch Hồng</strong></p>\r\n\r\n			<p>Số TK:<strong>&nbsp;</strong></p>\r\n\r\n			<p>Chi nh&aacute;nh: Thăng Long</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nội dung chuyển khoản:</p>\r\n\r\n<p>Cấp độ học - Họ t&ecirc;n - số điện thoại</p>\r\n\r\n<h2><span style=\"font-size:16px\"><em><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ:</strong></em></span></h2>\r\n\r\n<p>Email: bichhongnn@gmail.com<br />\r\nHotline: 0398.677.822 - 0988424081<br />\r\nWebsite: vuihoctiengnhat.com<br />\r\nĐịa chỉ: Ph&uacute;c Thọ - Nghĩa Trụ - Văn Giang - Hưng Y&ecirc;n</p>\r\n', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'lop-n1-online', 'Lớp N1 online', '', ''),
(536, 274, 'en', 'english version Khăn ướt Kazuo', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-khan-uot-kazuo', 'Khăn ướt Kazuo', '', ''),
(537, 275, 'vn', 'Đề thi N1', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'de-thi-n1', 'Đề thi N1', '', ''),
(538, 275, 'en', 'english version Đề thi N1', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-de-thi-n1', 'Đề thi N1', '', ''),
(539, 276, 'vn', 'Đề luyện thi N2', '', '', '', '', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'de-luyen-thi-n2', 'Đề luyện thi N2', '', ''),
(540, 276, 'en', 'english version Đề luyện thi N2', 'english version ', '', '', 'english version ', '', '', '', '', '\"\"', '', '', '', '', '', '\"\"', '', '', '', '', 0, 'en-de-luyen-thi-n2', 'Đề luyện thi N2', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(64, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', 'thong-tin-tuyen-dung1.jpg', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', 1),
(65, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', '-uploaded-pic-cat_chuongtrinh_cr_320x320.png', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', 1),
(66, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2017-12-28', 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', 1),
(67, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', 1),
(68, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', '-uploaded_Teacher-female_cr_320x320.png', '0', 5, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', 1),
(69, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', 'giao-vien-day-van.jpg', '0', 3, '', '2018-04-26', '2018-04-26', 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', 1),
(70, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', '', '0', 3, '', '2018-04-26', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dịch Vụ', '', '', 0, 0, '2017-12-21', NULL, 1, 's1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', 1),
(4, 'Smart Reading Skills', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dịch Vụ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'vn', 4),
(8, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'en', 4),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(83, 'vn', 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', NULL, 64),
(84, 'en', 'Quyết toán thuế', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Quyết toán thuế', '', 'quyet-toan-thue', '', NULL, 64),
(85, 'vn', 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', NULL, 65),
(86, 'en', 'Hoàn thiện sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàn thiện sổ sách', '', 'hoan-thien-so-sach', '', NULL, 65),
(87, 'vn', 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', NULL, 66),
(88, 'en', 'Rà soát sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', '', 'ra-soat-so-sach', '', NULL, 66),
(89, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', NULL, 67),
(90, 'en', 'Kê khai thuế online', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kê khai thuế online', '', 'ke-khai-thue-online', '', NULL, 67),
(91, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', NULL, 68),
(92, 'en', 'Kế toán thuế trọn gói', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kế toán thuế trọn gói', '', 'ke-toan-thue-tron-goi', '', NULL, 68),
(93, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', NULL, 69),
(94, 'en', 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', '<p>tuyển gi&aacute;oo vi&ecirc;n dạy văn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', 'tuyen-giaoo-vien-day-van', 'tuyển giáoo viên dạy văn', NULL, 69),
(95, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70),
(96, 'en', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tab_chon`
--

CREATE TABLE `tab_chon` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tab_chon`
--

INSERT INTO `tab_chon` (`id`, `name`, `image`) VALUES
(1, 'B01_リスト', 'tab1.png'),
(2, 'B01_チェック', 'tab2.png'),
(3, 'B01_練習問題', 'tab3.png'),
(4, 'Bài 1 (Phần 1 紹介)', 'class.png'),
(5, 'Bài 1 (Phần 2 談話)', 'grammar.png'),
(6, '考えましょう', 'tab2.png'),
(7, '使いましょう', '4.png'),
(8, '書きましょう', '5.png'),
(9, '速読', '6.png'),
(10, '聴解①', '7.png'),
(11, '聴解②', '8.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tab_con`
--

CREATE TABLE `tab_con` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `giao_trinh_tab_phu_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tab_con`
--

INSERT INTO `tab_con` (`id`, `name`, `image`, `giao_trinh_tab_phu_id`) VALUES
(2, 'Từ vựng', '128script.png', 13),
(3, 'Hội thoại', '128tuvung.png', 13),
(6, 'Bài dịch', '128dich.png', 28),
(7, 'Từ vựng', '128tuvung.png', 28),
(8, 'Ôn từ', '128thamkhao.png', 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_lieu`
--

CREATE TABLE `tai_lieu` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tai_lieu`
--

INSERT INTO `tai_lieu` (`id`, `name`, `note`, `file`) VALUES
(2, 'Tài liệu một', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'mau-hop-dong-thue-nha-o.docx'),
(3, 'GIÁO TRÌNH MINANO NIHONGO - CẤP ĐỘ N4', 'https://youtu.be/ON4iy8hq2hM', 'Banhangexcel.com-File-excel-quan-ly-kho-don-gian.xlsm'),
(4, 'Bộ đề các năm', 'Bộ đề N1 chính thức các năm từ năm 2010-2019', 'CÁCH TẠO TÀI KHOẢN WECHAT.docx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_bao_user`
--

CREATE TABLE `thong_bao_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ngay` datetime NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_bao_user`
--

INSERT INTO `thong_bao_user` (`id`, `user_id`, `ngay`, `note`) VALUES
(1, 3, '2021-10-14 15:50:50', 'Thông báo test'),
(2, 8, '2022-04-25 05:41:18', 'alo alo cho len tai khoan vip nhe'),
(3, 11, '2022-07-24 08:12:58', 'ádsc'),
(4, 3, '2022-07-30 11:30:42', 'thông báo ngày 30-7-2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh`
--

CREATE TABLE `thuoc_tinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh`
--

INSERT INTO `thuoc_tinh` (`id`, `name`) VALUES
(1, 'Màu sắc'),
(2, 'Kích cỡ'),
(3, 'Loại dây đeo'),
(4, 'Kiểu khóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh_value`
--

CREATE TABLE `thuoc_tinh_value` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_tinh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh_value`
--

INSERT INTO `thuoc_tinh_value` (`id`, `name`, `thuoc_tinh_id`) VALUES
(1, 'Đen', 1),
(2, 'Đỏ', 1),
(3, 'Tím', 1),
(4, 'Vàng', 1),
(5, 'Xanh', 1),
(6, 'Xám', 1),
(7, 'Hồng', 1),
(8, 'Kích cỡ một', 2),
(9, 'Loại dây đeo một', 3),
(10, 'Kiểu khóa một', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_dien`
--

CREATE TABLE `tu_dien` (
  `id` bigint(20) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dich` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_dien`
--

INSERT INTO `tu_dien` (`id`, `name`, `dich`) VALUES
(2, 'Tôi', 'おのれ'),
(3, 'きごう', 'Bác bỏ'),
(4, '維持', 'いじ duy trì');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_dien_1`
--

CREATE TABLE `tu_dien_1` (
  `id` bigint(20) NOT NULL,
  `tu_dien_id` bigint(20) NOT NULL,
  `han_tu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phien_am` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `am_han` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghia` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_dien_1`
--

INSERT INTO `tu_dien_1` (`id`, `tu_dien_id`, `han_tu`, `phien_am`, `loai`, `am_han`, `nghia`) VALUES
(4, 2, '最高', 'さいこう', 'a-na', 'TỐI CAO', 'Tốt nhất, đẹp nhất'),
(5, 2, '最低', 'さいてい', 'a-na', 'TỐI ĐỂ', 'Tồi nhất'),
(6, 2, '意図', 'いと', 'n', 'Ý ĐỒ', 'ý đồ, mục đích, ý định');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `user_birthday` date DEFAULT NULL,
  `time` date DEFAULT NULL,
  `ask` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT 0,
  `login_state` int(11) NOT NULL DEFAULT 0,
  `login_time` bigint(20) NOT NULL DEFAULT 0,
  `expiration_date` date DEFAULT NULL,
  `user_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cau_do_diem` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `user_birthday`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `vip`, `login_state`, `login_time`, `expiration_date`, `user_img`, `cau_do_diem`) VALUES
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1, '0000-00-00', '0000-00-00', NULL, NULL, NULL, 1, 0, 0, '0000-00-00', NULL, 0),
(3, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', '$2y$10$AEI/miqMt7vhtFlsLkJefOsXM6GcQft3SEYhe14AAiIV0CYo6GqtK', NULL, 1, '1983-10-31', '2020-09-09', '$2y$10$zhkAx70VHTkxyzh33GM.Ku1AyHL79LG/.f482jKCeSIjjLq/1LF8u', NULL, NULL, 1, 0, 1659583579, '2021-10-15', '1634372211logocopy.png', 2),
(7, 'An Hồng', 'bich@gam', 'đfff', '', '$2y$10$1IBPT2B3uvhXSWaAvttEN.0QnZha3kN6fFuoF669LcV0phJJkZ9c.', NULL, 1, '0011-01-02', '2022-03-31', '$2y$10$26tQYtAUxVcK.EG4srAyEOPMTRdIUUMRU8sgxzsrAJ8fTvKLe5zUS', NULL, NULL, 1, 1, 1658625466, '2022-07-05', NULL, 0),
(8, 'demo tai khoan', 'taikhoan@mail.com', '0918271673584783823', NULL, '$2y$10$9WGiQgBrspqhhrbzAiOQO.tialwGyy/lR6xcE4/Pf5iUSU/K7U43G', NULL, 1, '0111-02-12', '2022-04-25', '$2y$10$fCEga.qW6wOk9JjzRHgL5ezEXGqpGLX6DpYYUZ0oziJO.JhYWRCcG', NULL, NULL, 1, 0, 1650839246, NULL, NULL, 0),
(9, 'Dang Van Tien', 'tiendanghy@gmail.com', '0988424081', NULL, '$2y$10$DyKDvkfDE/mzDRqu.UZElOjLp3ght09dM3gNUFiLXD0DwVxLSsRgC', NULL, 1, '1989-11-03', '2022-07-01', '$2y$10$I83/PGsCJ4oyY9HueV5T1uToZzduLG6SzPZNhR2PNWohnZSy7PEGG', NULL, NULL, 1, 1, 1656665279, NULL, NULL, 0),
(10, 'Lily', 'tiendang@gmail.com', '0123', NULL, '$2y$10$NHMYsHmej9QBpC2xzDDT.e1LwQBKWwB0tTngKx5le.Z88OMTbD4/6', NULL, 1, '0000-00-00', '2022-07-24', '$2y$10$yWbdRgq2.qq2MK7em6G/VuOTyiCNZKHxV9y8zSio2x2VVFxlmunf6', NULL, NULL, 1, 0, 1658625086, NULL, NULL, 0),
(11, 'Lily1', 'bichhongnn@gmail.com', '0398677822', NULL, '$2y$10$5UuRfIPZ0iljBrdC5vhDrOeC9TdgljAfluy7o6Te626FQeOeYc5Ha', NULL, 1, '2022-07-23', '2022-07-24', '$2y$10$ge/402WN/8fqHpluxIG1A.smMx671bKzZDTd2lMz6fJpBgHXr9CUC', NULL, NULL, 0, 0, 1658625394, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tg` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_online`
--

INSERT INTO `user_online` (`ip`, `local`, `tg`, `id`) VALUES
('14.191.165.83', NULL, 1691210613, 520);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bai_hoc`
--
ALTER TABLE `bai_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bai_hoc_cap_do`
--
ALTER TABLE `bai_hoc_cap_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `bai_trac_nghiem`
--
ALTER TABLE `bai_trac_nghiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `cau_cau_do`
--
ALTER TABLE `cau_cau_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhom_cau_do_id` (`nhom_cau_do_id`);

--
-- Chỉ mục cho bảng `cau_de_thi`
--
ALTER TABLE `cau_de_thi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhom_de_thi_id` (`nhom_de_thi_id`);

--
-- Chỉ mục cho bảng `cau_de_thi_jlpt`
--
ALTER TABLE `cau_de_thi_jlpt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhom_de_thi_jlpt_id` (`nhom_de_thi_jlpt_id`);

--
-- Chỉ mục cho bảng `cau_hoi_tab`
--
ALTER TABLE `cau_hoi_tab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `cau_luyen_nghe`
--
ALTER TABLE `cau_luyen_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cau_luyen_nghe_ibfk_1` (`nhom_luyen_nghe_id`);

--
-- Chỉ mục cho bảng `cau_thi_nghe`
--
ALTER TABLE `cau_thi_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhom_thi_nghe_id` (`nhom_thi_nghe_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `de_thi`
--
ALTER TABLE `de_thi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `de_thi_jlpt`
--
ALTER TABLE `de_thi_jlpt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `de_thi_trac_nghiem`
--
ALTER TABLE `de_thi_trac_nghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `dien_tu`
--
ALTER TABLE `dien_tu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `giao_trinh`
--
ALTER TABLE `giao_trinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `giao_trinh_bai`
--
ALTER TABLE `giao_trinh_bai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_id` (`giao_trinh_id`);

--
-- Chỉ mục cho bảng `giao_trinh_bai_cau_hoi`
--
ALTER TABLE `giao_trinh_bai_cau_hoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_bai_id` (`giao_trinh_bai_id`);

--
-- Chỉ mục cho bảng `giao_trinh_chinh`
--
ALTER TABLE `giao_trinh_chinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `giao_trinh_chinh_bai`
--
ALTER TABLE `giao_trinh_chinh_bai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_chinh_id` (`giao_trinh_chinh_id`);

--
-- Chỉ mục cho bảng `giao_trinh_tab_chinh`
--
ALTER TABLE `giao_trinh_tab_chinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_chinh_bai_id` (`giao_trinh_chinh_bai_id`);

--
-- Chỉ mục cho bảng `giao_trinh_tab_phu`
--
ALTER TABLE `giao_trinh_tab_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_chinh_id` (`giao_trinh_tab_chinh_id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ket_qua_kiem_tra`
--
ALTER TABLE `ket_qua_kiem_tra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `khach_quyen`
--
ALTER TABLE `khach_quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lich_su_hoat_dong`
--
ALTER TABLE `lich_su_hoat_dong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luu_cau_de_thi`
--
ALTER TABLE `luu_cau_de_thi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luu_de_thi`
--
ALTER TABLE `luu_de_thi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luu_nhom_de_thi`
--
ALTER TABLE `luu_nhom_de_thi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhom_cau_do`
--
ALTER TABLE `nhom_cau_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhom_cau_do_ibfk_1` (`product_id`);

--
-- Chỉ mục cho bảng `nhom_cau_hoi_tab`
--
ALTER TABLE `nhom_cau_hoi_tab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `nhom_de_thi`
--
ALTER TABLE `nhom_de_thi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `de_thi_trac_nghiem_id` (`de_thi_trac_nghiem_id`);

--
-- Chỉ mục cho bảng `nhom_de_thi_jlpt`
--
ALTER TABLE `nhom_de_thi_jlpt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `de_thi_jlpt_id` (`de_thi_jlpt_id`);

--
-- Chỉ mục cho bảng `nhom_de_thi_trac_nghiem`
--
ALTER TABLE `nhom_de_thi_trac_nghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `nhom_dien_tu`
--
ALTER TABLE `nhom_dien_tu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `nhom_luyen_nghe`
--
ALTER TABLE `nhom_luyen_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `nhom_text_de_thi_jlpt`
--
ALTER TABLE `nhom_text_de_thi_jlpt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `nhom_thi_nghe`
--
ALTER TABLE `nhom_thi_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `de_thi_jlpt_id` (`de_thi_jlpt_id`);

--
-- Chỉ mục cho bảng `noi_dung_tab_phu`
--
ALTER TABLE `noi_dung_tab_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `online_ngay`
--
ALTER TABLE `online_ngay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `online_total`
--
ALTER TABLE `online_total`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `phien_am`
--
ALTER TABLE `phien_am`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `phien_am_nghe`
--
ALTER TABLE `phien_am_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_diff_color`
--
ALTER TABLE `product_diff_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tab_chon`
--
ALTER TABLE `tab_chon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tab_con`
--
ALTER TABLE `tab_con`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giao_trinh_tab_phu_id` (`giao_trinh_tab_phu_id`);

--
-- Chỉ mục cho bảng `tai_lieu`
--
ALTER TABLE `tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_bao_user`
--
ALTER TABLE `thong_bao_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuoc_tinh_id` (`thuoc_tinh_id`);

--
-- Chỉ mục cho bảng `tu_dien`
--
ALTER TABLE `tu_dien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tu_dien_1`
--
ALTER TABLE `tu_dien_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tu_dien_id` (`tu_dien_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bai_hoc`
--
ALTER TABLE `bai_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bai_hoc_cap_do`
--
ALTER TABLE `bai_hoc_cap_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bai_trac_nghiem`
--
ALTER TABLE `bai_trac_nghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `cau_cau_do`
--
ALTER TABLE `cau_cau_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cau_de_thi`
--
ALTER TABLE `cau_de_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cau_de_thi_jlpt`
--
ALTER TABLE `cau_de_thi_jlpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `cau_hoi_tab`
--
ALTER TABLE `cau_hoi_tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `cau_luyen_nghe`
--
ALTER TABLE `cau_luyen_nghe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cau_thi_nghe`
--
ALTER TABLE `cau_thi_nghe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `de_thi`
--
ALTER TABLE `de_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `de_thi_jlpt`
--
ALTER TABLE `de_thi_jlpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `de_thi_trac_nghiem`
--
ALTER TABLE `de_thi_trac_nghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dien_tu`
--
ALTER TABLE `dien_tu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `giao_trinh`
--
ALTER TABLE `giao_trinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `giao_trinh_bai`
--
ALTER TABLE `giao_trinh_bai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `giao_trinh_bai_cau_hoi`
--
ALTER TABLE `giao_trinh_bai_cau_hoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `giao_trinh_chinh`
--
ALTER TABLE `giao_trinh_chinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `giao_trinh_chinh_bai`
--
ALTER TABLE `giao_trinh_chinh_bai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `giao_trinh_tab_chinh`
--
ALTER TABLE `giao_trinh_tab_chinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `giao_trinh_tab_phu`
--
ALTER TABLE `giao_trinh_tab_phu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ket_qua_kiem_tra`
--
ALTER TABLE `ket_qua_kiem_tra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khach_quyen`
--
ALTER TABLE `khach_quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lich_su_hoat_dong`
--
ALTER TABLE `lich_su_hoat_dong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `luu_cau_de_thi`
--
ALTER TABLE `luu_cau_de_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `luu_de_thi`
--
ALTER TABLE `luu_de_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `luu_nhom_de_thi`
--
ALTER TABLE `luu_nhom_de_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhom_cau_do`
--
ALTER TABLE `nhom_cau_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `nhom_cau_hoi_tab`
--
ALTER TABLE `nhom_cau_hoi_tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhom_de_thi`
--
ALTER TABLE `nhom_de_thi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nhom_de_thi_jlpt`
--
ALTER TABLE `nhom_de_thi_jlpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `nhom_de_thi_trac_nghiem`
--
ALTER TABLE `nhom_de_thi_trac_nghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhom_dien_tu`
--
ALTER TABLE `nhom_dien_tu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhom_luyen_nghe`
--
ALTER TABLE `nhom_luyen_nghe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhom_text_de_thi_jlpt`
--
ALTER TABLE `nhom_text_de_thi_jlpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhom_thi_nghe`
--
ALTER TABLE `nhom_thi_nghe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `noi_dung_tab_phu`
--
ALTER TABLE `noi_dung_tab_phu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `online_ngay`
--
ALTER TABLE `online_ngay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `online_total`
--
ALTER TABLE `online_total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `phien_am`
--
ALTER TABLE `phien_am`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `phien_am_nghe`
--
ALTER TABLE `phien_am_nghe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_diff_color`
--
ALTER TABLE `product_diff_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tab_chon`
--
ALTER TABLE `tab_chon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tab_con`
--
ALTER TABLE `tab_con`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tai_lieu`
--
ALTER TABLE `tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thong_bao_user`
--
ALTER TABLE `thong_bao_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tu_dien`
--
ALTER TABLE `tu_dien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tu_dien_1`
--
ALTER TABLE `tu_dien_1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_online`
--
ALTER TABLE `user_online`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bai_hoc_cap_do`
--
ALTER TABLE `bai_hoc_cap_do`
  ADD CONSTRAINT `bai_hoc_cap_do_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cau_cau_do`
--
ALTER TABLE `cau_cau_do`
  ADD CONSTRAINT `cau_cau_do_ibfk_1` FOREIGN KEY (`nhom_cau_do_id`) REFERENCES `nhom_cau_do` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cau_de_thi`
--
ALTER TABLE `cau_de_thi`
  ADD CONSTRAINT `cau_de_thi_ibfk_1` FOREIGN KEY (`nhom_de_thi_id`) REFERENCES `nhom_de_thi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cau_de_thi_jlpt`
--
ALTER TABLE `cau_de_thi_jlpt`
  ADD CONSTRAINT `cau_de_thi_jlpt_ibfk_1` FOREIGN KEY (`nhom_de_thi_jlpt_id`) REFERENCES `nhom_de_thi_jlpt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cau_hoi_tab`
--
ALTER TABLE `cau_hoi_tab`
  ADD CONSTRAINT `cau_hoi_tab_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cau_luyen_nghe`
--
ALTER TABLE `cau_luyen_nghe`
  ADD CONSTRAINT `cau_luyen_nghe_ibfk_1` FOREIGN KEY (`nhom_luyen_nghe_id`) REFERENCES `nhom_luyen_nghe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cau_thi_nghe`
--
ALTER TABLE `cau_thi_nghe`
  ADD CONSTRAINT `cau_thi_nghe_ibfk_1` FOREIGN KEY (`nhom_thi_nghe_id`) REFERENCES `nhom_thi_nghe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `de_thi_jlpt`
--
ALTER TABLE `de_thi_jlpt`
  ADD CONSTRAINT `de_thi_jlpt_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `de_thi_trac_nghiem`
--
ALTER TABLE `de_thi_trac_nghiem`
  ADD CONSTRAINT `de_thi_trac_nghiem_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dien_tu`
--
ALTER TABLE `dien_tu`
  ADD CONSTRAINT `dien_tu_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh`
--
ALTER TABLE `giao_trinh`
  ADD CONSTRAINT `giao_trinh_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh_bai`
--
ALTER TABLE `giao_trinh_bai`
  ADD CONSTRAINT `giao_trinh_bai_ibfk_1` FOREIGN KEY (`giao_trinh_id`) REFERENCES `giao_trinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh_bai_cau_hoi`
--
ALTER TABLE `giao_trinh_bai_cau_hoi`
  ADD CONSTRAINT `giao_trinh_bai_cau_hoi_ibfk_1` FOREIGN KEY (`giao_trinh_bai_id`) REFERENCES `giao_trinh_bai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh_chinh`
--
ALTER TABLE `giao_trinh_chinh`
  ADD CONSTRAINT `giao_trinh_chinh_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh_chinh_bai`
--
ALTER TABLE `giao_trinh_chinh_bai`
  ADD CONSTRAINT `giao_trinh_chinh_bai_ibfk_1` FOREIGN KEY (`giao_trinh_chinh_id`) REFERENCES `giao_trinh_chinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh_tab_chinh`
--
ALTER TABLE `giao_trinh_tab_chinh`
  ADD CONSTRAINT `giao_trinh_tab_chinh_ibfk_1` FOREIGN KEY (`giao_trinh_chinh_bai_id`) REFERENCES `giao_trinh_chinh_bai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_trinh_tab_phu`
--
ALTER TABLE `giao_trinh_tab_phu`
  ADD CONSTRAINT `giao_trinh_tab_phu_ibfk_1` FOREIGN KEY (`giao_trinh_tab_chinh_id`) REFERENCES `giao_trinh_tab_chinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ket_qua_kiem_tra`
--
ALTER TABLE `ket_qua_kiem_tra`
  ADD CONSTRAINT `ket_qua_kiem_tra_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lich_su_hoat_dong`
--
ALTER TABLE `lich_su_hoat_dong`
  ADD CONSTRAINT `lich_su_hoat_dong_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_cau_do`
--
ALTER TABLE `nhom_cau_do`
  ADD CONSTRAINT `nhom_cau_do_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_cau_hoi_tab`
--
ALTER TABLE `nhom_cau_hoi_tab`
  ADD CONSTRAINT `nhom_cau_hoi_tab_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_de_thi`
--
ALTER TABLE `nhom_de_thi`
  ADD CONSTRAINT `nhom_de_thi_ibfk_1` FOREIGN KEY (`de_thi_trac_nghiem_id`) REFERENCES `de_thi_trac_nghiem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_de_thi_jlpt`
--
ALTER TABLE `nhom_de_thi_jlpt`
  ADD CONSTRAINT `nhom_de_thi_jlpt_ibfk_1` FOREIGN KEY (`de_thi_jlpt_id`) REFERENCES `de_thi_jlpt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_de_thi_trac_nghiem`
--
ALTER TABLE `nhom_de_thi_trac_nghiem`
  ADD CONSTRAINT `nhom_de_thi_trac_nghiem_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_dien_tu`
--
ALTER TABLE `nhom_dien_tu`
  ADD CONSTRAINT `nhom_dien_tu_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_luyen_nghe`
--
ALTER TABLE `nhom_luyen_nghe`
  ADD CONSTRAINT `nhom_luyen_nghe_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_text_de_thi_jlpt`
--
ALTER TABLE `nhom_text_de_thi_jlpt`
  ADD CONSTRAINT `nhom_text_de_thi_jlpt_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom_thi_nghe`
--
ALTER TABLE `nhom_thi_nghe`
  ADD CONSTRAINT `nhom_thi_nghe_ibfk_1` FOREIGN KEY (`de_thi_jlpt_id`) REFERENCES `de_thi_jlpt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `noi_dung_tab_phu`
--
ALTER TABLE `noi_dung_tab_phu`
  ADD CONSTRAINT `noi_dung_tab_phu_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phien_am`
--
ALTER TABLE `phien_am`
  ADD CONSTRAINT `phien_am_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phien_am_nghe`
--
ALTER TABLE `phien_am_nghe`
  ADD CONSTRAINT `phien_am_nghe_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tab_con`
--
ALTER TABLE `tab_con`
  ADD CONSTRAINT `tab_con_ibfk_1` FOREIGN KEY (`giao_trinh_tab_phu_id`) REFERENCES `giao_trinh_tab_phu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thong_bao_user`
--
ALTER TABLE `thong_bao_user`
  ADD CONSTRAINT `thong_bao_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD CONSTRAINT `thuoc_tinh_value_ibfk_1` FOREIGN KEY (`thuoc_tinh_id`) REFERENCES `thuoc_tinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tu_dien_1`
--
ALTER TABLE `tu_dien_1`
  ADD CONSTRAINT `tu_dien_1_ibfk_1` FOREIGN KEY (`tu_dien_id`) REFERENCES `tu_dien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
