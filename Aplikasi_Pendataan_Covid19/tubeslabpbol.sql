-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 06:18 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubeslabpbol`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `jlh_meninggal` ()  begin
select count(id) from data_pasien where status='Meninggal';
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `jlh_odp` ()  begin
select count(id) from data_pasien where status='ODP';
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `jlh_pdp` ()  begin
select count(id) from data_pasien where status='PDP';
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `jlh_positif` ()  begin
select count(id) from data_pasien where status='Positif';
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `jlh_sembuh` ()  begin
select count(id) from data_pasien where status='Sembuh';
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `jlh_ttl` ()  begin
select count(id) from data_pasien;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_pasien`
--

CREATE TABLE `data_pasien` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan','','') NOT NULL,
  `umur` int(2) NOT NULL,
  `profesi` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `status` enum('ODP','PDP','Positif','Sembuh','Meninggal') NOT NULL,
  `last_upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pasien`
--

INSERT INTO `data_pasien` (`id`, `nama`, `jenis_kelamin`, `umur`, `profesi`, `alamat`, `status`, `last_upd`) VALUES
(1, 'Rasyid Hafiz', 'Laki-laki', 19, '', 'Jl Sakti Lubis Gg Bali no 101', 'Positif', '2020-06-05 12:42:44'),
(2, 'Wili', 'Laki-laki', 12, '', 'Jauh', 'PDP', '2020-06-04 14:00:29'),
(3, 'tiara', 'Perempuan', 19, 'buruh', 'medan', 'Sembuh', '2020-06-05 13:12:15'),
(4, 'alvin', 'Laki-laki', 12, 'mahasiswa', 'medan\n', 'Positif', '2020-06-04 13:55:52'),
(6, 'abc', 'Perempuan', 12, 'maling', 'medan', 'Meninggal', '2020-06-04 13:57:38'),
(7, 'ruth', 'Perempuan', 19, 'Mahasiswa', 'Medan', 'Positif', '2020-06-03 15:51:47'),
(8, 'jimmy', 'Laki-laki', 19, 'programmer', 'medan juga', 'ODP', '2020-06-04 14:09:01'),
(9, 'Ali', 'Laki-laki', 19, 'wirausaha', 'medan lagi', 'ODP', '2020-06-04 14:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `pasien_id` int(11) NOT NULL,
  `pasien_nama` varchar(20) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan','','') NOT NULL,
  `umur` int(3) NOT NULL,
  `profesi` varchar(50) NOT NULL,
  `status` enum('ODP','PDP','Positif','Sembuh','Meninggal') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`pasien_id`, `pasien_nama`, `jenis_kelamin`, `umur`, `profesi`, `status`, `alamat`) VALUES
(1, 'Tiara', 'Perempuan', 19, 'mahasiswa', 'ODP', 'medan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`pasien_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pasien`
--
ALTER TABLE `data_pasien`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `pasien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
