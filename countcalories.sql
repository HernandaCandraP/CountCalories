-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 09:02 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodata`
--
CREATE DATABASE IF NOT EXISTS `biodata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biodata`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE latin1_bin NOT NULL,
  `alamat` varchar(50) COLLATE latin1_bin NOT NULL,
  `telp` varchar(30) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Hernanda Candra P.', 'Trenggalek', '083846434450'),
(2, 'Candra', 'Malang', '083888888'),
(3, 'he', 'a', 'a'),
(4, 'he', 'a', 'a'),
(5, 'ss', 'r', '32'),
(6, 'n', 'n', 'ki');

-- --------------------------------------------------------

--
-- Table structure for table `buah`
--

CREATE TABLE `buah` (
  `idbuah` int(11) NOT NULL,
  `namabuah` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buah`
--

INSERT INTO `buah` (`idbuah`, `namabuah`, `kalori`) VALUES
(1, 'Apel', 58),
(2, 'Alpukat', 85),
(3, 'Belimbing', 36),
(4, 'Jambu', 46),
(5, 'Mangga', 52),
(6, 'Jeruk', 45),
(7, 'Piasang', 121),
(8, 'Rambutan', 69),
(9, 'Samangka', 28),
(10, 'Manggis', 63);

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `idcount` int(11) NOT NULL,
  `idkarbo` int(11) NOT NULL,
  `idprotein` int(11) NOT NULL,
  `idbuah` int(11) NOT NULL,
  `idsayur` int(11) NOT NULL,
  `idsusu` int(11) NOT NULL,
  `jumlah_kal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karbohidrat`
--

CREATE TABLE `karbohidrat` (
  `idkarbo` int(11) NOT NULL,
  `nama_karbo` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karbohidrat`
--

INSERT INTO `karbohidrat` (`idkarbo`, `nama_karbo`, `kalori`) VALUES
(1, 'nasi', 360),
(2, 'singkong', 154),
(3, 'Mie', 86),
(4, 'kentang', 83),
(5, 'Sagu', 291),
(6, 'Jagung', 147),
(7, 'Gandum', 339),
(8, 'Ubi', 83),
(9, 'Ketan Hitam', 174),
(10, 'Talas', 98);

-- --------------------------------------------------------

--
-- Table structure for table `manfaat`
--

CREATE TABLE `manfaat` (
  `idmanfaat` int(11) NOT NULL,
  `idkarbo` int(11) NOT NULL,
  `idprotein` int(11) NOT NULL,
  `idbuah` int(11) NOT NULL,
  `idsayur` int(11) NOT NULL,
  `idsusu` int(11) NOT NULL,
  `manfaat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `protein`
--

CREATE TABLE `protein` (
  `idprotein` int(11) NOT NULL,
  `namaprotein` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protein`
--

INSERT INTO `protein` (`idprotein`, `namaprotein`, `kalori`) VALUES
(1, 'Telur Ayam', 162),
(2, 'Telur Bebek', 189),
(3, 'Sarden', 109),
(4, 'Daging', 241),
(5, 'Belut', 417),
(6, 'Bandeng', 297),
(7, 'Tempe', 581),
(8, 'Sate', 274),
(9, 'Abon', 212),
(10, 'Tahu', 69);

-- --------------------------------------------------------

--
-- Table structure for table `sayur`
--

CREATE TABLE `sayur` (
  `idsayur` int(11) NOT NULL,
  `nama_sayur` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sayur`
--

INSERT INTO `sayur` (`idsayur`, `nama_sayur`, `kalori`) VALUES
(1, 'Tauge', 34),
(2, 'Wortel', 42),
(3, 'Sawi', 22),
(4, 'Bayam', 36),
(5, 'Kacang', 34),
(6, 'Jangung', 33),
(7, 'Terong', 24),
(8, 'Kangkung', 29),
(9, 'Brokoli', 25),
(10, 'Selada', 15);

-- --------------------------------------------------------

--
-- Table structure for table `susu`
--

CREATE TABLE `susu` (
  `idsusu` int(11) NOT NULL,
  `nama_susu` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `susu`
--

INSERT INTO `susu` (`idsusu`, `nama_susu`, `kalori`) VALUES
(1, 'Susu Kental Manis', 336),
(2, 'Krim', 204),
(3, 'Sapi', 61),
(4, 'Yogurt', 52),
(5, 'Kambing', 64),
(6, 'Kerbau', 160),
(7, 'Susu BuBuk', 509),
(8, 'Susu Skim', 362);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buah`
--
ALTER TABLE `buah`
  ADD PRIMARY KEY (`idbuah`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`idcount`),
  ADD KEY `fk_karbo_count` (`idkarbo`),
  ADD KEY `fk_protein_count` (`idprotein`),
  ADD KEY `fk_buah_count` (`idbuah`),
  ADD KEY `fk_sayur_count` (`idsayur`),
  ADD KEY `fk_susu_count` (`idsusu`);

--
-- Indexes for table `karbohidrat`
--
ALTER TABLE `karbohidrat`
  ADD PRIMARY KEY (`idkarbo`);

--
-- Indexes for table `manfaat`
--
ALTER TABLE `manfaat`
  ADD PRIMARY KEY (`idmanfaat`),
  ADD KEY `fk_buah_manfaat` (`idbuah`),
  ADD KEY `fk_karbohidrat_manfaat` (`idkarbo`),
  ADD KEY `fk_protein_manfaat` (`idprotein`),
  ADD KEY `fk_sayur_manfaat` (`idsayur`),
  ADD KEY `fk_susu_manfaat` (`idsusu`);

--
-- Indexes for table `protein`
--
ALTER TABLE `protein`
  ADD PRIMARY KEY (`idprotein`);

--
-- Indexes for table `sayur`
--
ALTER TABLE `sayur`
  ADD PRIMARY KEY (`idsayur`);

--
-- Indexes for table `susu`
--
ALTER TABLE `susu`
  ADD PRIMARY KEY (`idsusu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buah`
--
ALTER TABLE `buah`
  MODIFY `idbuah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `idcount` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karbohidrat`
--
ALTER TABLE `karbohidrat`
  MODIFY `idkarbo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manfaat`
--
ALTER TABLE `manfaat`
  MODIFY `idmanfaat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protein`
--
ALTER TABLE `protein`
  MODIFY `idprotein` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sayur`
--
ALTER TABLE `sayur`
  MODIFY `idsayur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `susu`
--
ALTER TABLE `susu`
  MODIFY `idsusu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `count`
--
ALTER TABLE `count`
  ADD CONSTRAINT `fk_buah_count` FOREIGN KEY (`idbuah`) REFERENCES `buah` (`idbuah`),
  ADD CONSTRAINT `fk_karbo_count` FOREIGN KEY (`idkarbo`) REFERENCES `karbohidrat` (`idkarbo`),
  ADD CONSTRAINT `fk_protein_count` FOREIGN KEY (`idprotein`) REFERENCES `protein` (`idprotein`),
  ADD CONSTRAINT `fk_sayur_count` FOREIGN KEY (`idsayur`) REFERENCES `sayur` (`idsayur`),
  ADD CONSTRAINT `fk_susu_count` FOREIGN KEY (`idsusu`) REFERENCES `susu` (`idsusu`);

--
-- Constraints for table `manfaat`
--
ALTER TABLE `manfaat`
  ADD CONSTRAINT `fk_buah_manfaat` FOREIGN KEY (`idbuah`) REFERENCES `buah` (`idbuah`),
  ADD CONSTRAINT `fk_karbohidrat_manfaat` FOREIGN KEY (`idkarbo`) REFERENCES `karbohidrat` (`idkarbo`),
  ADD CONSTRAINT `fk_protein_manfaat` FOREIGN KEY (`idprotein`) REFERENCES `protein` (`idprotein`),
  ADD CONSTRAINT `fk_sayur_manfaat` FOREIGN KEY (`idsayur`) REFERENCES `sayur` (`idsayur`),
  ADD CONSTRAINT `fk_susu_manfaat` FOREIGN KEY (`idsusu`) REFERENCES `susu` (`idsusu`);
--
-- Database: `countcalories`
--
CREATE DATABASE IF NOT EXISTS `countcalories` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `countcalories`;

-- --------------------------------------------------------

--
-- Table structure for table `buah`
--

CREATE TABLE `buah` (
  `idbuah` int(11) NOT NULL,
  `namabuah` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buah`
--

INSERT INTO `buah` (`idbuah`, `namabuah`, `kalori`) VALUES
(1, 'Apel', 58),
(2, 'Alpukat', 85),
(3, 'Belimbing', 36),
(4, 'Jambu', 46),
(5, 'Mangga', 52),
(6, 'Jeruk', 45),
(7, 'Pisang', 121),
(8, 'Rambutan', 69),
(9, 'Samangka', 28),
(10, 'Manggis', 63);

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `idcount` int(11) NOT NULL,
  `idkarbo` int(11) NOT NULL,
  `idprotein` int(11) NOT NULL,
  `idbuah` int(11) NOT NULL,
  `idsayur` int(11) NOT NULL,
  `idsusu` int(11) NOT NULL,
  `jumlah_kal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `Jenis` varchar(255) NOT NULL,
  `Gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `Jenis`, `Gejala`) VALUES
(1, 'Kekurangan', 'Lemas'),
(2, 'Kekurangan', 'Rambut Rontok'),
(3, 'Kekurangan', 'Penurunan Berat Badan'),
(4, 'Kekurangan', 'Merasa dingin sepanjang waktu'),
(5, 'Kekurangan', 'Mengalami Konstipasi'),
(6, 'Kelebihan', 'Obesitas'),
(7, 'Kelebihan', 'Penyakit Jantung'),
(8, 'Kelebihan', 'Stroke'),
(9, 'Kelebihan', 'Diabetes'),
(10, 'Kelebihan', 'Gagal Ginjal'),
(11, 'Kelebihan', '-');

-- --------------------------------------------------------

--
-- Table structure for table `karbohidrat`
--

CREATE TABLE `karbohidrat` (
  `idkarbo` int(11) NOT NULL,
  `namakarbo` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karbohidrat`
--

INSERT INTO `karbohidrat` (`idkarbo`, `namakarbo`, `kalori`) VALUES
(1, 'Nasi', 360),
(2, 'singkong', 154),
(3, 'Mie', 86),
(4, 'kentang', 83),
(5, 'Sagu', 291),
(6, 'Jagung', 147),
(7, 'Gandum', 339),
(8, 'Ubi', 83),
(9, 'Ketan Hitam', 174),
(10, 'Talas', 98);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `umur` int(100) NOT NULL,
  `jeniskelamin` varchar(100) NOT NULL,
  `action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `namalengkap`, `username`, `password`, `umur`, `jeniskelamin`, `action`) VALUES
(1, 'Hernanda', 'Candra', 'candra', 20, 'Laki - Laki', 'user'),
(2, 'Alfarizi', 'user', 'user', 9, 'Laki - Laki', 'user'),
(3, 'user', 'user', 'user', 9, 'Laki - Laki', 'user'),
(4, 'admin', 'admin', 'admin', 1, 'Laki - Laki', 'admin'),
(5, 'Devany', 'devany', 'devany', 30, 'Perempuan', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `manfaat_makanan`
--

CREATE TABLE `manfaat_makanan` (
  `idmanfaat` int(11) NOT NULL,
  `jenismakanan` varchar(25) NOT NULL,
  `manfaat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manfaat_makanan`
--

INSERT INTO `manfaat_makanan` (`idmanfaat`, `jenismakanan`, `manfaat`) VALUES
(1, 'Nasi', 'Memangun Energi'),
(2, 'Tempe', 'Membangun Amino Tubuh'),
(3, 'Roti', 'Menjaga energi dalam tubuh'),
(4, 'Wortel', 'Menjaga Kesehatan Mata'),
(5, 'Bayam', 'Membantu Pembentukan Sel Darah Merah'),
(6, 'Daging', 'Meningkatkan daya tahan tubuh'),
(7, 'Ikan', 'Meningkatkan daya ingat pada otak'),
(8, 'Susu sapii', 'Menjaga kestabilan gula darah'),
(9, 'Stroberi', 'Mencegah sariawan'),
(10, 'Buah plum', 'Untuk menstabilkan berat badan');

-- --------------------------------------------------------

--
-- Table structure for table `penanganan`
--

CREATE TABLE `penanganan` (
  `idpenanganan` int(11) NOT NULL,
  `jenissakit` varchar(255) NOT NULL,
  `jenistraining` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penanganan`
--

INSERT INTO `penanganan` (`idpenanganan`, `jenissakit`, `jenistraining`, `training`) VALUES
(1, 'Kelebihan', 'Ringan', 'Joging'),
(2, 'Kelebihan', 'Sedang', 'Yoga'),
(3, 'Kelebihan', 'Berat', 'Senam'),
(4, 'Kelebihan', 'Ringan', 'Berenang'),
(5, 'Kelebihan', 'Sedang', 'Lari'),
(6, 'Kekurangan', 'Ringan', 'Makan yang bergizi'),
(7, 'Kekurangan', 'Sedang', 'Konsumsi Vitamin'),
(8, 'Kekurangan', 'Berat', 'Konsultasi dokter'),
(9, 'Kekurangan', 'ringan', 'Beristirahat secukupnya'),
(10, 'Kekurangan', 'Sedang', 'Mengkonsumsi Vitamin Kompleks'),
(11, 'Kekurangan', 'sedang', 't');

-- --------------------------------------------------------

--
-- Table structure for table `protein`
--

CREATE TABLE `protein` (
  `idprotein` int(11) NOT NULL,
  `namaprotein` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protein`
--

INSERT INTO `protein` (`idprotein`, `namaprotein`, `kalori`) VALUES
(1, 'Telur Ayam', 162),
(2, 'Telur Bebek', 189),
(3, 'Sarden', 109),
(4, 'Daging', 241),
(5, 'Belut', 417),
(6, 'Bandeng', 297),
(7, 'Tempe', 581),
(8, 'Sate', 274),
(9, 'Abon', 212),
(10, 'Tahu', 69);

-- --------------------------------------------------------

--
-- Table structure for table `sayur`
--

CREATE TABLE `sayur` (
  `idsayur` int(11) NOT NULL,
  `namasayur` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sayur`
--

INSERT INTO `sayur` (`idsayur`, `namasayur`, `kalori`) VALUES
(1, 'Tauge', 34),
(2, 'Wortel', 42),
(3, 'Sawi', 22),
(4, 'Bayam', 36),
(5, 'Kacang', 34),
(6, 'Jangung', 33),
(7, 'Terong', 24),
(8, 'Kangkung', 29),
(9, 'Brokoli', 25),
(10, 'Selada', 15);

-- --------------------------------------------------------

--
-- Table structure for table `susu`
--

CREATE TABLE `susu` (
  `idsusu` int(11) NOT NULL,
  `namasusu` varchar(255) NOT NULL,
  `kalori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `susu`
--

INSERT INTO `susu` (`idsusu`, `namasusu`, `kalori`) VALUES
(1, 'Susu Kental Manis', 336),
(2, 'Krim', 204),
(3, 'Sapi', 61),
(4, 'Yogurt', 52),
(5, 'Kambing', 64),
(6, 'Kerbau', 160),
(7, 'Susu BuBuk', 509),
(8, 'Susu Skim', 362);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buah`
--
ALTER TABLE `buah`
  ADD PRIMARY KEY (`idbuah`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`idcount`),
  ADD KEY `fk_karbo_count` (`idkarbo`),
  ADD KEY `fk_protein_count` (`idprotein`),
  ADD KEY `fk_buah_count` (`idbuah`),
  ADD KEY `fk_sayur_count` (`idsayur`),
  ADD KEY `fk_susu_count` (`idsusu`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karbohidrat`
--
ALTER TABLE `karbohidrat`
  ADD PRIMARY KEY (`idkarbo`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manfaat_makanan`
--
ALTER TABLE `manfaat_makanan`
  ADD PRIMARY KEY (`idmanfaat`);

--
-- Indexes for table `penanganan`
--
ALTER TABLE `penanganan`
  ADD PRIMARY KEY (`idpenanganan`);

--
-- Indexes for table `protein`
--
ALTER TABLE `protein`
  ADD PRIMARY KEY (`idprotein`);

--
-- Indexes for table `sayur`
--
ALTER TABLE `sayur`
  ADD PRIMARY KEY (`idsayur`);

--
-- Indexes for table `susu`
--
ALTER TABLE `susu`
  ADD PRIMARY KEY (`idsusu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buah`
--
ALTER TABLE `buah`
  MODIFY `idbuah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `count`
--
ALTER TABLE `count`
  MODIFY `idcount` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `karbohidrat`
--
ALTER TABLE `karbohidrat`
  MODIFY `idkarbo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manfaat_makanan`
--
ALTER TABLE `manfaat_makanan`
  MODIFY `idmanfaat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penanganan`
--
ALTER TABLE `penanganan`
  MODIFY `idpenanganan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `protein`
--
ALTER TABLE `protein`
  MODIFY `idprotein` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sayur`
--
ALTER TABLE `sayur`
  MODIFY `idsayur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `susu`
--
ALTER TABLE `susu`
  MODIFY `idsusu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `count`
--
ALTER TABLE `count`
  ADD CONSTRAINT `fk_buah_count` FOREIGN KEY (`idbuah`) REFERENCES `buah` (`idbuah`),
  ADD CONSTRAINT `fk_karbo_count` FOREIGN KEY (`idkarbo`) REFERENCES `karbohidrat` (`idkarbo`),
  ADD CONSTRAINT `fk_protein_count` FOREIGN KEY (`idprotein`) REFERENCES `protein` (`idprotein`),
  ADD CONSTRAINT `fk_sayur_count` FOREIGN KEY (`idsayur`) REFERENCES `sayur` (`idsayur`),
  ADD CONSTRAINT `fk_susu_count` FOREIGN KEY (`idsusu`) REFERENCES `susu` (`idsusu`);
--
-- Database: `database_name`
--
CREATE DATABASE IF NOT EXISTS `database_name` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database_name`;

-- --------------------------------------------------------

--
-- Table structure for table `m_pelanggan`
--

CREATE TABLE `m_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_pelanggan`
--

INSERT INTO `m_pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`, `pekerjaan`, `status`) VALUES
(1, 'Alfarizi', 'bumiayu', '0811234567', 'mahasiswa', 'pinjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_pelanggan`
--
ALTER TABLE `m_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_pelanggan`
--
ALTER TABLE `m_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `dbperpus`
--
CREATE DATABASE IF NOT EXISTS `dbperpus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbperpus`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `idanggota` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idanggota`, `nama`, `alamat`, `telepon`) VALUES
(1, 'Hernanda', 'Trenggalek', '908'),
(2, 'Hernanda', 'Trenggalek', '908'),
(3, 'Hernanda', 'Trenggalek', '9087');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `idbuku` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`idbuku`, `idkategori`, `judul`, `penerbit`, `penulis`) VALUES
(11, 0, 'Metode Linier', 'Springer', 'Alex Baldwin'),
(30, 36, 'dffwef', 'wefwe', 'wewee'),
(31, 39, 'uh', 'hernanda', 'lkio'),
(32, 39, 'zx', ', , ', ', '),
(33, 0, 'Timun Mas', 'Elex Media', 'Bang Supit'),
(34, 0, 'Aljabar Linier', 'Springer', 'Alex Baldwin'),
(37, 36, 'kjio', 'jb', 'io'),
(38, 0, 'Timun Mas', 'Elex Media', 'Bang Supit'),
(39, 0, 'Aljabar Linier', 'Springer', 'Alex Baldwin');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama`, `keterangan`) VALUES
(36, 'Novel', 'Koleksi buku novel'),
(37, 'Referensi', 'Koleksi buku referensi ilmiah'),
(39, 'Referensi', 'Koleksi buku referensi ilmiah'),
(40, 'z', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idpeminjaman` int(11) NOT NULL,
  `idanggota` int(11) NOT NULL,
  `idbuku` int(11) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`idpeminjaman`, `idanggota`, `idbuku`, `tanggalpinjam`, `tanggalkembali`) VALUES
(1, 1, 11, '2018-12-18', '2018-12-19'),
(2, 1, 11, '1111-11-11', '1111-11-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idbuku`),
  ADD KEY `idkategori` (`idkategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idpeminjaman`),
  ADD KEY `idanggota` (`idanggota`),
  ADD KEY `null` (`idbuku`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `idanggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `idbuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `idpeminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`idanggota`) REFERENCES `anggota` (`idanggota`);
--
-- Database: `db_laundry`
--
CREATE DATABASE IF NOT EXISTS `db_laundry` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_laundry`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ambil`
--

CREATE TABLE `tbl_ambil` (
  `no_antrian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `j_pewangi` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ambil`
--

INSERT INTO `tbl_ambil` (`no_antrian`, `nama`, `no_telp`, `alamat`, `j_pewangi`, `jumlah`, `harga`, `tanggal`, `total`, `bayar`, `kembali`) VALUES
(3, 'mila', '087770432050', 'cicurug', 'Bubuk', 1, 13000, '2018-05-26', 13000, 20000, 7000),
(4, 'desti', '089605612', 'sukasari', 'Bubuk', 6, 63000, '2018-05-26', 63000, 70000, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`user`, `pass`) VALUES
('aniseu', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `no_antrian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `j_pewangi` varchar(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`no_antrian`, `nama`, `no_telp`, `alamat`, `j_pewangi`, `jumlah`, `harga`, `tanggal`) VALUES
(1, 'anis', '08557076719', 'bogor', 'Cair', 5, 55000, '2018-05-26'),
(2, 'nateu', '087870037257', 'tanjung biru', 'Bubuk', 2, 23000, '2018-05-26'),
(5, 'ika', '085692170696', 'cisarua', 'Cair', 1, 15000, '2018-05-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`no_antrian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `no_antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `laptop`
--
CREATE DATABASE IF NOT EXISTS `laptop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laptop`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(0, 'abbiyou', '$2y$10$4alJF5zpzcendAlPSUVYmuP2347KRN/JPhgdTEmqxblawxn0UeV/6'),
(0, 'alan', '$2y$10$.rLmyaquzKy2UTcOvIDb1.CSF5USWqwjca18CdSSJtxtIdkzO3X3K'),
(0, 'hernanda', '$2y$10$HgBZ6v98eL.VvlkIZgOZ7.Sw1rSBlex8Z6fv5S/zFS4fh0KKjubSm');

-- --------------------------------------------------------

--
-- Table structure for table `merk_laptop`
--

CREATE TABLE `merk_laptop` (
  `No` int(100) NOT NULL,
  `Gambar` varchar(100) NOT NULL,
  `Merk` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `RAM` varchar(100) NOT NULL,
  `Processor` varchar(100) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Index` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merk_laptop`
--

INSERT INTO `merk_laptop` (`No`, `Gambar`, `Merk`, `Type`, `RAM`, `Processor`, `Harga`, `Index`) VALUES
(1, 'ASUS_X455LA.jpg', 'asus', 'X455LA', '4 GB', 'Intel Core I5', 4747500, 'asusX.html'),
(3, 'rog.png', 'asus', 'ROG GL552JX', '16 GB', 'Intel Core I7', 12450000, 'asus1.html'),
(4, 'lenovo.jpg', 'LENOVO', '520 14IKB', '8 GB', 'Intel Core I5', 10580000, 'lenovo.html'),
(5, 'mmg2.jpg', 'APPLE', 'MACKBOOK AIR MMGG2', '8 GB', 'Intel Core I7', 13800000, 'apple1.html'),
(6, '001.jpg', 'DELL', '14-bw002AU', '4 GB', 'AMD E-2900e', 3650000, 'dell1.html'),
(7, '002.jpg', 'DELL', '14-bw002AU', '4 GB', 'AMD E-2900e', 3650000, 'dell2.html'),
(10, '5c1c97768f8a2.jpeg', 'Lenovo', 'vibe 1e', '4GB', 'core i7', 5000000, 'asus1.html'),
(11, '5c1c9ee379b28.jpeg', 'ASUS', '1234', '8 GB', 'core i7', 5000000, 'asus1.html');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(0, 'alan', '$2y$10$C60RlCfIZ5mv1UkP.KksDe3QV6ouMcJugmrXY0ThEAxZOafK7GWvG'),
(0, 'faisal', '$2y$10$ykYH6jW1tmpXwOBtDegi5.axvAbHQFt/TvkrAJO21tfk.LgBJzSfK'),
(0, 'hernanda', '$2y$10$PSxemcb5pMK4IjNIY1.AteMjEi16eh8.7.tt2iNtfHMWOF2vON1.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `merk_laptop`
--
ALTER TABLE `merk_laptop`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merk_laptop`
--
ALTER TABLE `merk_laptop`
  MODIFY `No` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `laundry`
--
CREATE DATABASE IF NOT EXISTS `laundry` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laundry`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idcus` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcus`, `nama`, `alamat`, `telp`) VALUES
(1, 'Hernandaaa', 'Trenggalek', '0838464344'),
(2, 'Alfarizi', 'Malang', '0838364'),
(3, 'deon', 'Landungsari', '087777'),
(4, 'Wildan', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `jeniscucian`
--

CREATE TABLE `jeniscucian` (
  `idjenis` int(10) NOT NULL,
  `jeniscucian` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jeniscucian`
--

INSERT INTO `jeniscucian` (`idjenis`, `jeniscucian`, `harga`) VALUES
(1, 'testtt', 7575),
(2, 'Kerin', 50),
(4, 'Setrikaaa', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('Hernanda', 'hernanda'),
('Alfarizi', 'alfarizi');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan`
--

CREATE TABLE `penerimaan` (
  `noorder` int(10) NOT NULL,
  `idcus` int(10) NOT NULL,
  `idjenis` int(10) NOT NULL,
  `berat` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerimaan`
--

INSERT INTO `penerimaan` (`noorder`, `idcus`, `idjenis`, `berat`, `total`, `keterangan`) VALUES
(2, 2, 1, 3, 22725, 'baju. celanaa'),
(3, 1, 4, 1, 7000, 'ket');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `idtransaksi` int(10) NOT NULL,
  `noorder` int(10) NOT NULL,
  `tglterima` date NOT NULL,
  `tglkembali` date NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembalian` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`idtransaksi`, `noorder`, `tglterima`, `tglkembali`, `bayar`, `kembalian`) VALUES
(1, 3, '2019-04-23', '2019-04-27', 8000, 1000),
(5, 2, '2019-04-10', '2019-04-10', 30000, 7275),
(6, 3, '1111-11-11', '2011-11-11', 32, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcus`);

--
-- Indexes for table `jeniscucian`
--
ALTER TABLE `jeniscucian`
  ADD PRIMARY KEY (`idjenis`);

--
-- Indexes for table `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`noorder`),
  ADD KEY `idcus` (`idcus`),
  ADD KEY `idjenis` (`idjenis`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`idtransaksi`),
  ADD KEY `noorder` (`noorder`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idcus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jeniscucian`
--
ALTER TABLE `jeniscucian`
  MODIFY `idjenis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penerimaan`
--
ALTER TABLE `penerimaan`
  MODIFY `noorder` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `idtransaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD CONSTRAINT `penerimaan_ibfk_1` FOREIGN KEY (`idcus`) REFERENCES `customer` (`idcus`),
  ADD CONSTRAINT `penerimaan_ibfk_2` FOREIGN KEY (`idjenis`) REFERENCES `jeniscucian` (`idjenis`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`noorder`) REFERENCES `penerimaan` (`noorder`);
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NIM` char(9) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Jurusan` varchar(100) NOT NULL,
  `Gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID`, `Nama`, `NIM`, `Email`, `Jurusan`, `Gambar`) VALUES
(28, 'hernanda', '123456', 'hernandacp@gmail.com', 'ti', '5c14b8c48ddb9.jpg'),
(32, 'hernanda cp', '174172', 'hernandacp@gmail.com', 'ti', 'BRI.png'),
(33, 'Gideon', '12', 'deoon@gmail.com', 'MI', 'logo.png'),
(88, 'he', '123459', 'bagas31@gamil.com', 'ti', '5bfbac73abd26.jpg'),
(89, 'candra', '123', 'nanda45@gmail.com', '', '5c0e179fba6a0.jpg'),
(90, 'Gideon', '174172', 'nanda45@gmail.com', 'ti', '5c14b2e79c1e8.jpg'),
(91, 'hernanda', '174172', 'nanda45@gmail.com', 'ti', '5c14b30e6288b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, '1741720184', '$2y$10$ILvS8uUgHkmjzvD0Z4Ihl.qyLT1r3aXpcayakwk6x.YWPCsZJLw3m'),
(2, 'hernanda', '$2y$10$4lBvsbrJm1RlH1QnjMpwHOV7l5NXL96W4k.dDw1cj41u8p5Srv3kG'),
(3, 'faisal', '$2y$10$q2iI8139a0GGHh6i6mj3EubafmLH4mY28cCcxXzdnAzJlp5pcHpvi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `perpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `idanggota` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `program_studi` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idanggota`, `nama`, `alamat`, `telepon`, `gender`, `program_studi`) VALUES
(3, 'Nanda Agustini', 'Buring Malang', '08567456778', 'Perempuan', '8'),
(4, 'Muhammad Alrizqy', 'Sawojajar, Malang', '08123456755', 'Laki-laki', '7'),
(8, 'Soyyid Darmawan', 'Pakis,Malang', '081236714', 'Laki-laki', '7'),
(9, 'Fenty Trisna', 'Muharto, Malang', '0897651235', 'Perempuan', '8'),
(10, 'Aprilia Anggraeni', 'Lesanpuro, Malang', '', 'Perempuan', '7'),
(11, 'Amalina Puspitasari', 'Bumiayu, Malang', '087653212', 'Perempuan', '7'),
(12, 'Yayuk Wulandari', 'Buring, Malang', '081234656432', 'Perempuan', '9'),
(13, 'Mercury Ara Prima', 'Madyopuro, Malang', '089637353', 'Perempuan', '9'),
(14, 'Bagas Adi Prayogo', 'Buring, Malang', '086543426', 'Laki-laki', '9'),
(15, 'Rafid Hibatulloh', 'Sekarpuro, Malang', '0875324257', 'Laki-laki', '9'),
(16, 'Januar Ramadhan', 'Sulfat, Malang', '08234566433', 'Laki-laki', '8'),
(17, 'Yanuar Ramadhan', 'Sawojajar,Malang', '0863252768', 'Laki-laki', '8'),
(18, 'Zulfi Ihza', 'Kedungkandang, Malang', '0812345769', 'Perempuan', '8'),
(19, 'Bagas Ramadhani', 'Bunul,Malang', '0891234657', 'Laki-laki', '8'),
(20, 'Ervan Puta', 'Polehan, Malang', '0854325647', 'Laki-laki', '7'),
(21, 'Patria Nurahmat', 'Tajinan, Malang', '08653362344', 'Laki-laki', '7'),
(22, 'Nanang Saiful Rizal', 'Buring, Malang', '08712345678', 'Laki-laki', '7'),
(23, 'Intan Putri', 'Wonokoyo, Malang', '08132467432', 'Perempuan', '8'),
(24, 'Hendro Kartika', 'Sekarpuro, Malang', '08123465673', 'Laki-laki', '9'),
(25, 'Refido Putra Wijaya', 'Bumiayu, Malang', '08123456757', 'Laki-laki', '8'),
(26, 'Ilyas Puta', 'Gadang, Malang', '08976654657', 'Laki-laki', '8'),
(27, 'Husni Mubarok', 'Madyopuro,Malang', '0857345786', 'Laki-laki', '8');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `idbuku` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`idbuku`, `idkategori`, `judul`, `penerbit`, `penulis`, `tahun_terbit`, `total`) VALUES
(30, 46, 'Penjas Orkes', 'Yrama Widya', 'Khoirul Hadziq', 2019, 3),
(31, 46, 'Matematika', 'Erlangga', 'diknas dan kementrian', 2018, 36),
(32, 37, 'Orang orang biasa', 'Bintang Pustaka', 'Andrea Hirata', 2019, 90),
(33, 37, 'Allah Tidak Cerewet seperti kita', 'Noura Book Publising', 'Emha Ainun Nadjib', 2019, 60),
(34, 45, 'Budaya dan Arkeologi', 'Bentang Pustaka', 'Myrtha Soeroyte', 2013, 10),
(37, 45, 'Sang Patriot', 'Kompas', 'Rooswidiati Tendean', 2019, 28),
(38, 46, 'Bupelas Matematika Kelas 8', 'Genta Group Pruduction', 'Tim Master Eduka', 2019, 100),
(39, 39, 'Pelajaran Agama Islam', 'Gema Insani', 'Prof. Dr. Hamka', 2019, 77),
(40, 46, 'Bicara Itu Ada Seninya', 'Buana Ilmu Polpuler', 'Oh Su Hyang', 2018, 3),
(41, 39, 'Qalam', 'Qalam', 'Dr. Muhammad Al-Dabisi', 2018, 85),
(42, 37, 'Detective Conan', 'Elex Media Kompetindo', 'Aoyama Gosho', 2019, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama`, `keterangan`) VALUES
(36, 'Umum', 'informasi umum'),
(37, 'Novel', 'koleksi buku yang berisi ceriita cerita novel'),
(39, 'Agama', 'Koleksi buku yang berisi tentang ajaran agama'),
(40, 'Sosial', 'Koleksi buku yang berisi ilmu sosial, sosiologi, dan antropologi'),
(41, 'Bahasa', 'Koleksi buku yang berisi pelajaran bahasa'),
(42, 'Sains dan Matematika', 'Koleksi buku yang berisi tentang pelajaran sains dan matematika'),
(43, 'Teknologi', 'Koleksi buku yang berisi teknologi dan kesehatan'),
(44, 'Seni dan Rekreasi', 'Koleksi buku yang berisi kesenian dan rekreasi'),
(45, 'Sejarah dan Geografi', 'Koleksi buku yang berisi sejarah dan goegrafi'),
(46, 'Pendidikan', 'Koleksi buku yang berisi Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('hernanda', 'hernanda'),
('alfarizi', 'alfarizi');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idpeminjaman` int(11) NOT NULL,
  `idanggota` int(11) NOT NULL,
  `idbuku` int(11) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembali` date DEFAULT NULL,
  `denda` int(10) DEFAULT NULL,
  `total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`idpeminjaman`, `idanggota`, `idbuku`, `tanggalpinjam`, `tanggalkembali`, `denda`, `total`) VALUES
(1, 9, 37, '2019-01-13', '2019-01-20', 0, 1),
(3, 15, 31, '2019-04-08', '2019-04-14', 0, 2),
(4, 13, 41, '2019-02-09', '2019-02-20', 20000, 1),
(5, 4, 34, '2019-02-09', NULL, 0, 2),
(6, 8, 37, '2019-07-07', '2019-07-22', 40000, 1),
(7, 20, 39, '2019-09-08', '2019-09-17', 10000, 1),
(8, 13, 39, '2019-06-07', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `idpetugas` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` int(20) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`idpetugas`, `nama`, `alamat`, `telepon`, `gender`) VALUES
(2, 'Muhammad Alfarizi', 'Bumiayu, Malang', 859331160, 'Laki-laki'),
(3, 'Hernanda Candra Prasetya', 'Ngadirejo, Trenggalek', 838464344, 'Laki-laki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idbuku`),
  ADD KEY `idkategori` (`idkategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idpeminjaman`),
  ADD KEY `idanggota` (`idanggota`),
  ADD KEY `null` (`idbuku`) USING BTREE;

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`idpetugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `idanggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `idbuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `idpeminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `idpetugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`idanggota`) REFERENCES `anggota` (`idanggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`idbuku`) REFERENCES `buku` (`idbuku`);
--
-- Database: `pesawat`
--
CREATE DATABASE IF NOT EXISTS `pesawat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pesawat`;

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(2) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_pesawat` int(10) NOT NULL,
  `pemberangkatan` varchar(255) NOT NULL,
  `no_telp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id`, `nama`, `umur`, `jenis_kelamin`, `alamat`, `id_pesawat`, `pemberangkatan`, `no_telp`) VALUES
(76, 'Hernanda Candra P', 19, 'Laki-laki', 'Trenggalekk', 4, '06.00 PM', 0),
(77, 'kjj', 22, 'Perempuan', 'Malang', 6, '12.00 AM', 0),
(78, 'Candra', 18, 'Laki-laki', 'Surabaya', 5, '09.00 PM', 0),
(79, 'hello', 12, 'Laki-laki', 'gg kyai', 6, '06.00 AM', 0),
(80, 'Tikus Got', 99, 'Laki-laki', 'Jl Trenggalek malang', 6, '03.00 PM', 0),
(82, 'h', 0, 'null', 'null', 0, 'null', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `id_pesawat` int(10) NOT NULL,
  `maskapai` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `jumlah_penumpang` int(4) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`id_pesawat`, `maskapai`, `jenis`, `tujuan`, `jumlah_penumpang`, `harga`) VALUES
(4, 'Lion Air', 'Air Buss', 'Jakarta - Pontianak', 100, 0),
(5, 'Air Asia', 'perintis', 'Surabaya - Medan', 900, 9000),
(6, 'Batik Air', 'perintis', 'Medan - Sumbawa', 9, 7000),
(7, 'Qatar Air', 'Air Buss', 'Sumbawa - Jakarta', 90, 879);

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `umur` int(2) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_pesawat` int(10) NOT NULL,
  `pemberangkatan` varchar(50) NOT NULL,
  `riwayat` int(10) NOT NULL,
  `no_telp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`id`, `nama`, `jenis_kelamin`, `umur`, `alamat`, `id_pesawat`, `pemberangkatan`, `riwayat`, `no_telp`) VALUES
(6, 'candra', 'Perempuan', 18, 'Trenggalek', 5, '12.00 PM', 1, 0),
(8, 'Her', 'Laki-laki', 23, 'Malang', 7, '03.00 PM', 88, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pramugari`
--

CREATE TABLE `pramugari` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `umur` int(2) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_pesawat` int(10) NOT NULL,
  `id_pilot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pramugari`
--

INSERT INTO `pramugari` (`id`, `nama`, `jenis_kelamin`, `umur`, `alamat`, `id_pesawat`, `id_pilot`) VALUES
(2, 'hhh', 'Perempuan', 56, 'huhiuh', 1, 6),
(3, 'Hern', 'Laki-laki', 11, 'huh', 4, 7),
(4, 'test', 'Perempuan', 12, 'tesss', 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_pesawat` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `tanggal_berangkat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id`, `id_pesawat`, `tanggal_pembelian`, `tanggal_berangkat`) VALUES
(1, 76, 0, '2018-12-17', '2018-12-24'),
(2, 77, 0, '1111-11-11', '2011-11-11'),
(3, 76, 0, '2018-12-20', '2018-12-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`id_pesawat`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pramugari`
--
ALTER TABLE `pramugari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `pesawat`
--
ALTER TABLE `pesawat`
  MODIFY `id_pesawat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pilot`
--
ALTER TABLE `pilot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pramugari`
--
ALTER TABLE `pramugari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"full_screen\":\"off\",\"small_big_all\":\">\",\"pin_text\":\"false\",\"side_menu\":\"false\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"countcalories\",\"table\":\"gejala\"},{\"db\":\"countcalories\",\"table\":\"penanganan\"},{\"db\":\"countcalories\",\"table\":\"count\"},{\"db\":\"countcalories\",\"table\":\"manfaat_makanan\"},{\"db\":\"countcalories\",\"table\":\"buah\"},{\"db\":\"laundry\",\"table\":\"customer\"},{\"db\":\"laundry\",\"table\":\"penerimaan\"},{\"db\":\"laundry\",\"table\":\"pengembalian\"},{\"db\":\"countcalories\",\"table\":\"Penanganan\"},{\"db\":\"countcalories\",\"table\":\"Gejala\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('laundry', 'customer', 'idcus'),
('laundry', 'penerimaan', 'keterangan');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'perpustakaan', 'buku', '[]', '2019-04-03 16:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-05-10 13:18:26', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `toko_buku`
--
CREATE DATABASE IF NOT EXISTS `toko_buku` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `toko_buku`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `password`) VALUES
('admin', 'faraz');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(30) NOT NULL,
  `id_penerbit` varchar(5) NOT NULL,
  `tanggal_buku` date DEFAULT NULL,
  `judul_buku` varchar(30) DEFAULT NULL,
  `pengarang` varchar(30) DEFAULT NULL,
  `jumlah_buku` int(11) DEFAULT NULL,
  `jumlah_tersedia` int(11) DEFAULT NULL,
  `jumlah_dipinjam` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `harga_pinjam` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `harga_baca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_penerbit`, `tanggal_buku`, `judul_buku`, `pengarang`, `jumlah_buku`, `jumlah_tersedia`, `jumlah_dipinjam`, `counter`, `harga_pinjam`, `harga_jual`, `harga_baca`) VALUES
('123', 'fam', '2012-12-10', 'Berenang di Pulau Ikan', 'Siapa', 2, 0, 2, 2, 2000, 10000, 1000),
('456', 'fam', '2012-12-10', 'Ayam Bakar Goreng', 'Fadila Andre Mulyanto', 5, 1, 4, 4, 2000, 20000, 1500),
('890', 'fam', '2012-12-10', 'Gajah Tidur', 'Siapa', 2, 0, 2, 2, 2500, 25000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `jualbeli`
--

CREATE TABLE `jualbeli` (
  `id_jualbeli` int(11) NOT NULL,
  `tanggal_jualbeli` date DEFAULT NULL,
  `id_member` varchar(10) NOT NULL,
  `id_buku` varchar(30) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jualbeli`
--

INSERT INTO `jualbeli` (`id_jualbeli`, `tanggal_jualbeli`, `id_member`, `id_buku`, `harga_jual`, `kuantitas`, `total`) VALUES
(1, '2012-12-11', '002', '890', 25000, 1, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id_keuangan` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `bulan` varchar(10) DEFAULT NULL,
  `pemasukan` int(11) DEFAULT NULL,
  `pengeluaran` int(11) DEFAULT NULL,
  `keuntungan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` varchar(10) NOT NULL,
  `tanggal_member` date DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `tanggal_member`, `nama`, `alamat`, `telepon`, `email`) VALUES
('001', '2012-12-11', 'Fadila', 'Cibanteng', '0857', 'fadilaandre@gmail.com'),
('002', '2012-12-11', 'Andre', 'Cibanteng', '175', 'andrefadila@gmail.com'),
('003', '2012-12-11', 'Mulyanto', 'Cibanteng', '98651', 'andrefadila@windowslive.com');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(5) NOT NULL,
  `nama_penerbit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`) VALUES
('fam', 'Fadila Andre Mulyanto');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `id_member` varchar(10) NOT NULL,
  `id_buku` varchar(30) NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `tanggal_dikembalikan` date DEFAULT NULL,
  `harga_pinjam` int(11) NOT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `id_member`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `tanggal_dikembalikan`, `harga_pinjam`, `denda`) VALUES
(1, '001', '456', '2012-12-11', '2012-12-13', '2012-12-13', 2000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_penerbit` (`id_penerbit`);

--
-- Indexes for table `jualbeli`
--
ALTER TABLE `jualbeli`
  ADD PRIMARY KEY (`id_jualbeli`,`id_member`,`id_buku`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id_keuangan`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`,`id_member`,`id_buku`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_buku` (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jualbeli`
--
ALTER TABLE `jualbeli`
  MODIFY `id_jualbeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id_keuangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jualbeli`
--
ALTER TABLE `jualbeli`
  ADD CONSTRAINT `jualbeli_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jualbeli_ibfk_3` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_ibfk_3` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
