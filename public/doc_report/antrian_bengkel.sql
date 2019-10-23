-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 07:56 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian_bengkel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Rizka', 'rizka', '123'),
(2, 'Syehan', 'syehan', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `antri`
--

CREATE TABLE `antri` (
  `no_antri` int(3) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `no_servis` int(5) NOT NULL,
  `id_montir` varchar(5) DEFAULT '',
  `tgl_servis` date NOT NULL,
  `username` varchar(25) NOT NULL DEFAULT '',
  `no_telp` varchar(13) NOT NULL,
  `jenis_servis` varchar(15) NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `wkt_servis` datetime NOT NULL,
  `ket_tambahan` varchar(40) NOT NULL,
  `totwaktu` time NOT NULL,
  `selesai` datetime NOT NULL,
  `is_selesai` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antri`
--

INSERT INTO `antri` (`no_antri`, `nopol`, `no_servis`, `id_montir`, `tgl_servis`, `username`, `no_telp`, `jenis_servis`, `keluhan`, `wkt_servis`, `ket_tambahan`, `totwaktu`, `selesai`, `is_selesai`) VALUES
(1, 'B 0104 VL', 1, '01', '2019-06-18', 'rizka', '0896767680', 'Servis 1', 'test1', '2019-06-18 09:51:59', '', '02:00:00', '0000-00-00 00:00:00', 1),
(2, 'B 0123 a', 2, '224', '2019-06-18', 'dhea', '0896767645', 'Servis 2', 'test2', '2019-06-18 09:52:37', '', '02:00:00', '0000-00-00 00:00:00', 1),
(3, 'B 0123 a', 4, '878', '2019-06-18', 'wiwi', '0896767645', 'Servis 4', 'test3', '2019-06-18 10:54:05', '', '03:00:00', '0000-00-00 00:00:00', 1),
(4, 'B 0104 VL', 3, NULL, '2019-06-22', 'rizka', '0896767645', 'Servis 3', 'test', '2019-06-22 17:00:50', '', '02:00:00', '0000-00-00 00:00:00', 1),
(5, 'B 0123 a', 4, NULL, '2019-06-22', 'rizka', '0896767645', 'Servis 4', 'anju', '2019-06-22 18:02:17', '', '03:00:00', '0000-00-00 00:00:00', 1),
(6, 'B0191AGI', 2, NULL, '2019-06-23', 'test1', '0895347119049', 'Servis 2', 'asdasd', '2019-06-23 15:16:42', '', '02:00:00', '0000-00-00 00:00:00', 1),
(7, 'pi12u31o', 1, NULL, '2019-06-23', 'test1', '0895347119049', 'Servis 1', 'aaxa', '2019-06-23 15:17:36', '', '02:00:00', '0000-00-00 00:00:00', 1),
(8, 'B 0104 VL', 2, NULL, '2019-06-23', 'nurul', '0896767680', 'Servis 2', 'testtt', '2019-06-23 22:17:30', '', '02:00:00', '0000-00-00 00:00:00', 1),
(9, 'B 0124 VB', 1, NULL, '2019-06-23', 'nurul', '0896767645', 'Servis 1', 'tessttt', '2019-06-23 22:18:14', '', '02:00:00', '0000-00-00 00:00:00', 0),
(10, 'B 0104 VL', 1, NULL, '2019-06-24', 'nurul', '0896767688', 'Servis Ringan', 'ganti oli', '2019-06-24 10:17:33', '', '02:00:00', '0000-00-00 00:00:00', 1),
(11, 'B 0124 VB', 1, NULL, '2019-06-24', 'nurul', '0896767680', 'Servis Ringan', 'tes', '2019-06-24 10:19:14', '', '02:00:00', '0000-00-00 00:00:00', 1),
(12, 'B 6699 DY', 2, NULL, '2019-06-24', 'adam', '089721641677', 'Servis Berat', 'sering mogok', '2019-06-24 11:28:03', '', '03:00:00', '0000-00-00 00:00:00', 0),
(13, 'B 1234 HY', 1, NULL, '2019-06-24', 'dhea', '0896767645', 'Servis Ringan', 'TEST', '2019-06-24 10:34:14', '', '02:00:00', '0000-00-00 00:00:00', 1),
(14, 'B 0123 C', 2, NULL, '2019-06-24', 'siti', '0896767688', 'Servis Berat', 'tes', '2019-06-24 11:35:04', '', '03:00:00', '0000-00-00 00:00:00', 0),
(15, 'B 0124 VB', 1, NULL, '2019-06-24', 'wiwi', '0896767680', 'Servis Ringan', 'teeesss', '2019-06-24 10:35:45', '', '02:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `id_barang` int(5) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `montir`
--

CREATE TABLE `montir` (
  `id_montir` varchar(5) NOT NULL,
  `nama_montir` varchar(35) NOT NULL,
  `jml_antri` int(3) NOT NULL,
  `status` enum('Online','Offline') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `nopol` varchar(10) NOT NULL,
  `merk_motor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`nopol`, `merk_motor`) VALUES
('', ''),
('', ''),
('0', ''),
('0', ''),
('0', ''),
('B 0101 VC', 'Honda Beat'),
('B 2453 KM', 'Honda Scoopy'),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', ''),
('0', '');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama_plgn` varchar(35) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`username`, `password`, `nama_plgn`, `no_telp`, `alamat`) VALUES
('adam', '1234', 'adam baiduri', '08976353462', 'jatiwaringin'),
('ihsan', 'f9c8074d5a013e0729373f8f74cd0648', 'Ihsan Resya', '0896767688', 'Pondok Gede'),
('rere', 'bd134207f74532a8b094676c4a2ca9ed', 'Renata', '0896767645', 'Jakarta'),
('sehan', 'syehan', 'msyehan', '0895347119049', 'jl.jalan'),
('siti', 'db04eb4b07e0aaf8d1d477ae342bdff9', 'Siti Nurhasanah', '02199995555', 'Radar'),
('wiwi', '38f2f8bb5145c0b899542570b91153f6', 'Wiyani Putri', '0896767680', 'Pondok Gede');

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `no_servis` int(5) NOT NULL,
  `jenis_servis` varchar(15) NOT NULL,
  `lama_layanan` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`no_servis`, `jenis_servis`, `lama_layanan`) VALUES
(1, 'Servis Ringan', '02:00:00'),
(2, 'Servis Berat', '03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_servis` int(5) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `harga` int(15) NOT NULL,
  `totbayar` int(17) NOT NULL,
  `wkt_servis` datetime NOT NULL,
  `selesai` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `antri`
--
ALTER TABLE `antri`
  ADD PRIMARY KEY (`no_antri`);

--
-- Indexes for table `montir`
--
ALTER TABLE `montir`
  ADD PRIMARY KEY (`id_montir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`no_servis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
