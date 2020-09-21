-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 04:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `gambar` text NOT NULL,
  `judul` varchar(100) NOT NULL,
  `descripsi` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`gambar`, `judul`, `descripsi`, `waktu`, `tanggal`, `id`) VALUES
('https://i.pinimg.com/474x/04/27/5f/04275fe3dcc15b2c7dbbd01853efbc88.jpg', 'Berita Terpanas', 'Telah Terjadi peristiwa', '2020-09-18 06:46:14', 'eqweqweqeee', 9),
('', '', '', '2020-09-10 06:59:08', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE `datauser` (
  `nm_depan` varchar(55) NOT NULL,
  `nm_belakang` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datauser`
--

INSERT INTO `datauser` (`nm_depan`, `nm_belakang`, `email`, `password`, `id`) VALUES
('dfgfdgdfgdfgdf', 'gdfg', 'fg', 'ggg', 1),
('asdasdasdasd', 'asdsadasdsa', 'dsadasda', 'sdasdasd', 2),
('Rafi', 'Albana', 'RafiAlbana', '123456789', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `nama` varchar(222) NOT NULL,
  `imageUrl` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengantarktp`
--

CREATE TABLE `pengantarktp` (
  `id` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `Nik` varchar(55) NOT NULL,
  `NoKk` varchar(55) NOT NULL,
  `GolDar` enum('-','A','B','AB','O') NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `Tempat_Lhr` varchar(100) NOT NULL,
  `Agama` varchar(55) NOT NULL,
  `Kewarganegaraan` varchar(55) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(55) NOT NULL,
  `status_kawin` enum('Belum Menikah','Menikah','','') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` int(11) NOT NULL,
  `arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengantarktp`
--

INSERT INTO `pengantarktp` (`id`, `nama`, `no_hp`, `Nik`, `NoKk`, `GolDar`, `jk`, `tgl_lahir`, `Tempat_Lhr`, `Agama`, `Kewarganegaraan`, `Alamat`, `pekerjaan`, `status_kawin`, `waktu`, `note`, `arsip`) VALUES
(1, 'tyutyutyu', '', '', '', '', 'P', '2020-09-08', 'uytyutyu', 'hindu', 'asing', 'tyugyutyudrtyrtyry', 'petani', 'Menikah', '2020-09-03 00:41:14', 0, 0),
(2, '', '', '', '', '', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-03 00:41:14', 0, 0),
(3, 'dfvsdgdg', '', 'dfgdfg', 'dfgfg', 'B', 'L', '1970-01-01', '', 'Islam', 'Indonesia', 'xcvxcvxcvcxv', 'Belum Bekerja', 'Menikah', '2020-09-12 13:50:26', 1, 0),
(4, 'dfvsdgdg', '', 'dfgdfg', 'dfgfg', 'B', 'L', '1970-01-01', '', 'Islam', 'Indonesia', 'xcvxcvxcvcxv', 'Belum Bekerja', 'Menikah', '2020-09-03 00:41:22', 0, 0),
(5, '', '', '', '', 'AB', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-03 00:55:25', 0, 0),
(6, '', '', '', '', '-', 'L', '1970-01-01', '', '', '', '', '', 'Belum Menikah', '2020-09-08 14:19:15', 0, 0),
(7, 'xxxx', '', 'xxxx', 'xxx', '-', 'L', '1970-01-01', 'xxxx', 'Islam', 'Indonesia', 'xxxxxx', 'Belum Bekerja', 'Menikah', '2020-09-08 14:29:39', 0, 0),
(8, '', '', '', '', '-', 'L', '2020-09-09', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-09 10:11:32', 0, 0),
(9, 'sdfvsdsdfsdfsf', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '2020-09-12 13:50:18', 1, 0),
(10, 'chghgh', '8542', '8447', '544', 'AB', 'L', '1970-01-01', 'fgfgh', 'Islam', 'Indonesia', 'fghfghgh', 'Belum Bekerja', 'Menikah', '2020-09-16 13:48:25', 0, 0),
(11, '', '', '', '', '-', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-16 13:56:33', 0, 0),
(12, '', '', '', '', '-', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-16 13:56:57', 0, 0),
(13, '', '', '', '', '-', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-16 13:58:10', 0, 0),
(14, '', 'fgdfgdfg', '', '', '-', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', 'Menikah', '2020-09-16 14:21:45', 0, 0),
(15, 'Amir Hamza', '0812457758', '7855558', '5448522', 'AB', 'L', '1995-09-17', 'Payaraman', 'Islam', 'Indonesia', 'Desa Tebedak', 'petani', 'Menikah', '2020-09-17 07:24:43', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengantarnikah`
--

CREATE TABLE `pengantarnikah` (
  `id` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `Tempat_Lhr` varchar(55) NOT NULL,
  `Agama` varchar(55) NOT NULL,
  `Kewarganegaraan` varchar(55) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Nik` varchar(55) NOT NULL,
  `NoKk` varchar(55) NOT NULL,
  `pekerjaan` varchar(555) NOT NULL,
  `status_kawin` enum('Belum Menikah','Menikah') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` int(11) NOT NULL,
  `arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengantarnikah`
--

INSERT INTO `pengantarnikah` (`id`, `nama`, `no_hp`, `jk`, `tgl_lahir`, `Tempat_Lhr`, `Agama`, `Kewarganegaraan`, `Alamat`, `Nik`, `NoKk`, `pekerjaan`, `status_kawin`, `waktu`, `note`, `arsip`) VALUES
(6, 'fgdgdfg', '', 'L', '1970-01-01', 'dfgfdgfg', 'Islam', 'Indonesia', 'dfgdfgg', 'dfgfdg', 'dfgfgfgf', 'Belum Bekerja', 'Menikah', '2020-09-03 01:26:54', 0, 0),
(7, 'izul', '', 'L', '0000-00-00', '', '', '', '', '', '', '', '', '2020-09-12 06:29:11', 0, 0),
(8, '', '554444', 'L', '1970-01-01', '', 'Islam', 'Indonesia', '', '', '', 'Belum Bekerja', 'Menikah', '2020-09-16 14:25:31', 0, 0),
(9, 'Susanto', '0852547458', 'L', '1997-09-17', 'Tebedak', 'Islam', 'asing', 'Desa Cibereum', '5884448998', '54455555', 'petani', 'Menikah', '2020-09-17 07:27:36', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengantarskck`
--

CREATE TABLE `pengantarskck` (
  `id` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `Tempat_Lhr` varchar(55) NOT NULL,
  `Agama` varchar(55) NOT NULL,
  `pekerjaan` varchar(55) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` int(11) NOT NULL,
  `arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengantarskck`
--

INSERT INTO `pengantarskck` (`id`, `nama`, `no_hp`, `jk`, `tgl_lahir`, `Tempat_Lhr`, `Agama`, `pekerjaan`, `Alamat`, `waktu`, `note`, `arsip`) VALUES
(1, 'jghjghj', '', 'P', '2020-09-10', 'ghjghjghjj', 'buddha', 'petani', 'ghjghjghjj', '2020-09-03 01:06:34', 0, 0),
(2, 'izul', '', '', '0000-00-00', '', '', '', '', '2020-09-12 06:31:35', 0, 0),
(3, '', '25577', 'L', '1970-01-01', '', 'Islam', 'Belum Bekerja', '', '2020-09-16 14:21:31', 0, 0),
(4, 'Izul Ikrom', '0832547888', 'L', '1999-09-18', 'Tebedak', 'Islam', 'wiraswasta', 'Dusun 2 Desa Cibereum', '2020-09-17 07:26:11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pindahpenduduk`
--

CREATE TABLE `pindahpenduduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(33) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `Tempat_Lhr` varchar(33) NOT NULL,
  `NoKk` varchar(33) NOT NULL,
  `Nik` varchar(55) NOT NULL,
  `Agama` varchar(33) NOT NULL,
  `Kewarganegaraan` varchar(33) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(33) NOT NULL,
  `KeDesa` varchar(55) NOT NULL,
  `KeKec` varchar(55) NOT NULL,
  `KeKab` varchar(55) NOT NULL,
  `KeProv` varchar(55) NOT NULL,
  `Alasan` varchar(55) NOT NULL,
  `status_kawin` enum('Belum Menikah','Menikah','','') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` int(11) NOT NULL,
  `arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pindahpenduduk`
--

INSERT INTO `pindahpenduduk` (`id`, `nama`, `no_hp`, `jk`, `tgl_lahir`, `Tempat_Lhr`, `NoKk`, `Nik`, `Agama`, `Kewarganegaraan`, `Alamat`, `pekerjaan`, `KeDesa`, `KeKec`, `KeKab`, `KeProv`, `Alasan`, `status_kawin`, `waktu`, `note`, `arsip`) VALUES
(1, 'sdfvsdf', '', 'P', '2020-09-11', 'fgdgg', 'dfgdfgdfg', 'gdfgdgdg', 'Islam', 'Indonesia', 'dfgdfgdfgdfggg', 'nelayan', 'dfgdfgdgf', 'gdfgdfg', 'dfgfdgdg', 'dfgdfgdg', 'dfgdfgfdg', 'Menikah', '2020-09-02 14:11:56', 0, 0),
(2, 'fxdfdfv', '', 'P', '2020-09-25', 'vxcvcv', '5544', 'vcxvxcv', 'Islam', 'Indonesia', 'xcvxcvvvv', 'Belum Bekerja', '', '', '', '', '', 'Menikah', '2020-09-02 14:11:56', 0, 0),
(3, 'izul', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-09-12 06:33:16', 0, 0),
(4, '', '', 'L', '1970-01-01', '', '', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', '', '', '', '', '', 'Menikah', '2020-09-16 14:21:16', 0, 0),
(5, '', '3432432434', 'L', '1970-01-01', '', '', '', 'Islam', 'Indonesia', '', 'Belum Bekerja', '', '', '', '', '', 'Menikah', '2020-09-16 14:23:40', 0, 0),
(6, 'Santo', '083145455', 'P', '1995-09-17', 'Palembang', '587552', '54445566', 'Islam', 'asing', 'Desa Ciebereum', 'wiraswasta', 'Tebedak', 'Payaraman', 'Ogan Ilir', 'Sumatera Selatan', 'Ikut Istri', 'Menikah', '2020-09-17 07:23:32', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `nama` varchar(30) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `saran` varchar(500) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(11) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`nama`, `kepada`, `saran`, `waktu`, `id`, `note`) VALUES
('Izul Ikrom', 'Kepala Desa', 'Tolong untuk petugas masjid sejadah nya harus di bersikan minimal seminggu sekali', '2020-08-30 09:32:28', 5, 0),
('Soubri Sobris', 'Kepala Desa', 'Tolong untuk para kelompok karang taruna kalau mengambil keputusan itu harus berdasarkan musyawarah', '2020-09-17 13:17:20', 29, 0),
('Izul Ikrom', 'Kepala Desa', 'Untuk semua seluruh masyarakat desa cibereum khususnya di dusun 2 kalau buang sampa itu jangan di de', '2020-09-17 13:19:42', 30, 0),
('Miftahul Ilmi', 'Kepala Desa', 'Mohon untuk pengurus masjid sajadah tolong di bersihkan soalnya sudah banyak debu', '2020-09-17 13:21:00', 31, 0),
('Toni', 'Kepala Desa', 'Mohon untuk jalan padat karya untuk mengajukan perbaikan soalnya jalan sudah rusak parah', '2020-09-17 13:24:16', 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sekretaris`
--

CREATE TABLE `sekretaris` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sekretaris`
--

INSERT INTO `sekretaris` (`id`, `username`, `password`) VALUES
(1, 'sekretaris', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `suratdomisili`
--

CREATE TABLE `suratdomisili` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Tempat_Lhr` varchar(30) NOT NULL,
  `NoKk` varchar(20) NOT NULL,
  `Agama` varchar(50) NOT NULL,
  `Kewarganegaraan` varchar(20) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `note` int(11) NOT NULL,
  `arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suratdomisili`
--

INSERT INTO `suratdomisili` (`id`, `nama`, `no_hp`, `jk`, `pekerjaan`, `date_create`, `Tempat_Lhr`, `NoKk`, `Agama`, `Kewarganegaraan`, `Alamat`, `tgl_lahir`, `note`, `arsip`) VALUES
(57, 'fgfg', '', 'P', 'fgfgfg', '2020-09-04 14:55:24', 'dfgdfg', 'dfgdfg', 'dfgfg', 'dfgdfg', 'dfgdfgdfg', '0000-00-00', 0, 0),
(58, 'fgfg', '', 'P', 'fgfgfg', '2020-09-04 14:55:28', 'dfgdfg', 'dfgdfg', 'dfgfg', 'dfgdfg', 'dfgdfgdfg', '0000-00-00', 0, 0),
(59, '', '', 'L', 'Belum Bekerja', '2020-09-08 14:39:23', '', '', 'Islam', 'Indonesia', '', '1970-01-01', 0, 0),
(60, 'dfgdgdfgdf', '', 'P', 'Belum Bekerja', '2020-09-08 14:39:53', 'fgfgdfg', 'gfgdfgfg', 'Islam', 'Indonesia', 'dfgdfgdfg', '2020-09-18', 0, 0),
(61, 'izulikrom', '', 'L', 'jhghjghjghjg', '2020-09-11 15:18:14', 'jghjghj', 'jhghj', 'ghjghj', 'hgjghj', 'ghjghjghj', '2020-09-09', 0, 0),
(62, '', '', 'L', '', '2020-09-12 13:32:53', '', '', '', '', '', '1970-01-01', 1, 0),
(63, '', '55555555', 'L', 'Belum Bekerja', '2020-09-16 14:05:06', '', '', 'Islam', 'Indonesia', '', '1970-01-01', 0, 0),
(64, '', '98525', 'L', 'Belum Bekerja', '2020-09-16 14:20:47', '', '', 'Islam', 'Indonesia', '', '1970-01-01', 0, 0),
(65, 'Sobri Sobris', '0852114452', 'L', 'wiraswasta', '2020-09-17 07:13:11', 'Sumatera Barat', '57411588785', 'Islam', 'Indonesia', 'Rt 003, Rw 002 Dusun 2 Desa Cibereum', '2020-09-19', 0, 0),
(66, 'Sabrina', '08122324234', 'P', 'pns', '2020-09-17 07:15:23', 'Sumedang', '2445555', 'Islam', 'Indonesia', 'Dusun 3 Desa Cibereum', '2020-09-19', 0, 0),
(67, 'Toni Sucipto', '0812544778', 'L', 'dokter', '2020-09-17 07:17:08', 'Jawa Barat', '44557777', 'Islam', 'Indonesia', 'Rt 001 Rw 2 Dusun 1 Desa Cebereum', '2020-07-15', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `surattidakmampu`
--

CREATE TABLE `surattidakmampu` (
  `id` int(11) NOT NULL,
  `nama` varchar(33) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` enum('L','P','','') NOT NULL,
  `Tempat_Lhr` varchar(22) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(33) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nama_ayah` varchar(20) NOT NULL,
  `umur` varchar(5) NOT NULL,
  `pekerjaan_ayah` varchar(22) NOT NULL,
  `alamat_ayah` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` int(11) NOT NULL,
  `arsip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surattidakmampu`
--

INSERT INTO `surattidakmampu` (`id`, `nama`, `no_hp`, `jk`, `Tempat_Lhr`, `tgl_lahir`, `pekerjaan`, `alamat`, `nama_ayah`, `umur`, `pekerjaan_ayah`, `alamat_ayah`, `waktu`, `note`, `arsip`) VALUES
(1, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', '', '', '2020-09-01 14:31:22', 0, 0),
(2, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', '', '', '2020-09-01 14:40:01', 0, 0),
(3, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', '', '', '2020-09-01 14:41:50', 0, 0),
(4, 'dfgdhfgjhfgjh', '', 'P', 'fghfghfgh', '2020-09-11', 'Belum Bekerja', 'fhfghfghh', 'fghfghfgh', 'hfgh', '', 'hgfhgfh', '2020-09-02 13:58:58', 0, 0),
(5, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', '', '', '2020-09-02 14:03:24', 0, 0),
(6, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', '', '', '2020-09-02 14:05:07', 0, 0),
(7, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', 'Belum Bekerja', '', '2020-09-02 14:06:09', 0, 0),
(8, 'izul', '', '', '', '0000-00-00', '', '', '', '', '', '', '2020-09-12 06:37:49', 0, 0),
(9, '', '', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', 'Belum Bekerja', '', '2020-09-16 14:20:59', 0, 0),
(10, '', 'wrwerwer', 'L', '', '1970-01-01', 'Belum Bekerja', '', '', '', 'Belum Bekerja', '', '2020-09-16 14:23:29', 0, 0),
(11, 'Anisa Rahayu', '0812854455', 'P', 'Palembang', '1991-09-17', 'petani', 'Desa Cibereum', 'Arif', '45', 'petani', 'Desa Cibereum', '2020-09-17 07:19:27', 0, 0),
(12, 'Miftahul Ilmi', '085277885', 'L', 'Banten', '1999-09-17', 'pns', 'Dusun 2 Desa Cibereum', 'Joni', '43', 'dokter', 'Desa Cibereum', '2020-09-17 07:21:20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `email` varchar(33) DEFAULT NULL,
  `password` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, '', 'izulikrom0@gmail.com', '123456789'),
(2, '', 'izulikrom', '123456789'),
(3, 'izulikrom', 'izulikrom0@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi`
--

CREATE TABLE `verifikasi` (
  `nama` varchar(22) NOT NULL,
  `NoKk` varchar(33) NOT NULL,
  `NIK` varchar(44) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verifikasi`
--

INSERT INTO `verifikasi` (`nama`, `NoKk`, `NIK`, `id`) VALUES
('miftahul ilmi', '12345678', '987654321', 14),
('izul ikrom', '123456789', '123456789', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengantarktp`
--
ALTER TABLE `pengantarktp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengantarnikah`
--
ALTER TABLE `pengantarnikah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengantarskck`
--
ALTER TABLE `pengantarskck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pindahpenduduk`
--
ALTER TABLE `pindahpenduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekretaris`
--
ALTER TABLE `sekretaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suratdomisili`
--
ALTER TABLE `suratdomisili`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surattidakmampu`
--
ALTER TABLE `surattidakmampu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `datauser`
--
ALTER TABLE `datauser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengantarktp`
--
ALTER TABLE `pengantarktp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pengantarnikah`
--
ALTER TABLE `pengantarnikah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengantarskck`
--
ALTER TABLE `pengantarskck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pindahpenduduk`
--
ALTER TABLE `pindahpenduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sekretaris`
--
ALTER TABLE `sekretaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suratdomisili`
--
ALTER TABLE `suratdomisili`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `surattidakmampu`
--
ALTER TABLE `surattidakmampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
