-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2024 at 05:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_xedap`
--

-- --------------------------------------------------------

--
-- Table structure for table `ctddh`
--

CREATE TABLE `ctddh` (
  `madonhang` int(11) NOT NULL,
  `mahang` int(11) DEFAULT NULL,
  `tentl` varchar(100) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `madonhang` int(11) NOT NULL,
  `ngaylapdon` date DEFAULT NULL,
  `makh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `makh` int(11) DEFAULT NULL,
  `mahang` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahang` int(11) NOT NULL,
  `tenhang` varchar(100) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `matl` int(11) DEFAULT NULL,
  `hinhanh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`mahang`, `tenhang`, `dongia`, `mota`, `matl`, `hinhanh`) VALUES
(101, 'xe đạp leo núi', 500000, 'good', 1, 'img/xedapleonui.jpg'),
(201, 'xe đạp thể thao', 300000, 'Available', 2, 'img/xedap1.jpg'),
(202, 'xedapsad', 403000, 'good', 2, 'img/BLASH.jpg'),
(301, 'xe đạp thường', 200000, 'Out of Stock', 3, 'img/xedapthuong.jpg'),
(401, 'xe đạp trẻ em', 100000, 'Available', 4, 'img/xedaptreem.jpg'),
(501, 'xecanghai', 10000, 'nice', 5, 'img/xedap.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(100) DEFAULT NULL,
  `std` varchar(11) DEFAULT NULL,
  `diemtl` float DEFAULT NULL,
  `matkhau` varchar(100) DEFAULT NULL,
  `diachi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sltonkho`
--

CREATE TABLE `sltonkho` (
  `mahang` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `matl` int(11) NOT NULL,
  `tentl` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`matl`, `tentl`) VALUES
(1, 'xe đạp leo núi'),
(2, 'xe đạp thể thao'),
(3, 'xe đạp thường'),
(4, 'xe đạp trẻ em');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctddh`
--
ALTER TABLE `ctddh`
  ADD KEY `mahang` (`mahang`),
  ADD KEY `madonhang` (`madonhang`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD KEY `makh` (`makh`),
  ADD KEY `mahang` (`mahang`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahang`),
  ADD KEY `matl` (`matl`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `sltonkho`
--
ALTER TABLE `sltonkho`
  ADD PRIMARY KEY (`mahang`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`matl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ctddh`
--
ALTER TABLE `ctddh`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `mahang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sltonkho`
--
ALTER TABLE `sltonkho`
  MODIFY `mahang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `matl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctddh`
--
ALTER TABLE `ctddh`
  ADD CONSTRAINT `ctddh_ibfk_1` FOREIGN KEY (`mahang`) REFERENCES `sltonkho` (`mahang`),
  ADD CONSTRAINT `ctddh_ibfk_2` FOREIGN KEY (`madonhang`) REFERENCES `dondathang` (`madonhang`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`mahang`) REFERENCES `sltonkho` (`mahang`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `hanghoa_ibfk_1` FOREIGN KEY (`matl`) REFERENCES `theloai` (`matl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
