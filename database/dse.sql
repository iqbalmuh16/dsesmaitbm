-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 01:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dse`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin', 0),
(230, '112233', 'd0970714757783e6cf17b26fb8e2298f', 'guru', 11),
(228, '2022011', 'bffb1228ed6453348a827a7562c33f93', 'siswa', 814);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE `m_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(11, '112233', 'GURU');

-- --------------------------------------------------------

--
-- Table structure for table `m_jurusan`
--

CREATE TABLE `m_jurusan` (
  `id` int(11) NOT NULL,
  `jurusan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_jurusan`
--

INSERT INTO `m_jurusan` (`id`, `jurusan`) VALUES
(15, 'AKUTANSI'),
(16, 'TKJ'),
(17, 'MULTIMEDIA');

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`id`, `kelas`) VALUES
(2, 'X'),
(3, 'XI'),
(6, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(1, 'Matematika'),
(26, 'Bahasa Inggris'),
(27, 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE `m_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `id_jurusan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`, `id_jurusan`) VALUES
(814, 'SISWA', '2022011', 'XI', 'RPL');

-- --------------------------------------------------------

--
-- Table structure for table `m_soal`
--

CREATE TABLE `m_soal` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `bobot` int(2) NOT NULL,
  `file` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `tipe_file` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `soal` longtext CHARACTER SET latin1 NOT NULL,
  `opsi_a` longtext CHARACTER SET latin1 DEFAULT NULL,
  `opsi_b` longtext CHARACTER SET latin1 DEFAULT NULL,
  `opsi_c` longtext CHARACTER SET latin1 DEFAULT NULL,
  `opsi_d` longtext CHARACTER SET latin1 DEFAULT NULL,
  `opsi_e` longtext CHARACTER SET latin1 DEFAULT NULL,
  `jawaban` varchar(5) CHARACTER SET latin1 NOT NULL,
  `tgl_input` datetime DEFAULT NULL,
  `jml_benar` int(11) DEFAULT NULL,
  `jml_salah` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`) VALUES
(8, 4, 1, 1, NULL, NULL, '<p>1 + 1 =</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 'B', NULL, NULL, NULL),
(9, 4, 1, 1, NULL, NULL, '1 x 2 =', '#####1', '#####2', '#####3', '#####4', '#####5', 'B', '2022-02-09 11:43:54', 1, 0),
(10, 4, 1, 1, NULL, NULL, '3 x 3 =', '#####6', '#####7', '#####8', '#####9', '#####10', 'D', '2022-02-09 11:43:54', 1, 0),
(11, 4, 1, 1, NULL, NULL, '5  x 2 =', '#####9', '#####10', '#####11', '#####12', '#####13', 'B', '2022-02-09 11:43:54', 1, 0),
(12, 4, 1, 1, NULL, NULL, '2 x 3 =', '#####4', '#####6', '#####8', '#####10', '#####12', 'B', '2022-02-09 11:43:54', 1, 0),
(13, 4, 6, 1, NULL, NULL, 'Komponen fisik yang membentuk sistem komputer adalah ....', '#####Brainware', '#####Mailware', '#####Hardware', '#####Software', '#####Malware', 'C', '2022-02-14 09:55:09', 2, 0),
(14, 4, 6, 1, NULL, NULL, 'Komponen non fisik untuk menjalankan, mengendalikan dan mengatur proses oleh perangkat keras komputer adalah ....', '#####Brainware ', '#####Mailware', '#####Hardware ', '#####Software', '#####Malware', 'D', '2022-02-14 09:55:09', 2, 0),
(15, 4, 6, 1, NULL, NULL, 'Manusia dengan tenaga dan ilmu pengetahuan yang digunakan untuk mengoperasikan serta mengatur system komputer adalah ....', '#####Brainware', '#####Mailware', '#####Hardware ', '#####Software', '#####Spyware', 'A', '2022-02-14 09:55:09', 2, 0),
(16, 4, 6, 1, NULL, NULL, 'Hardware yang berfungsi sebagai alat penunjuk untuk mengatur posisi kursor di layar adalah ….', '#####Monitor ', '#####Printer', '##### Mouse   ', '##### Speaker', '#####Scanner', 'C', '2022-02-14 09:55:09', 2, 0),
(17, 4, 6, 1, NULL, NULL, 'Yang merupakan Perangkat Input Device yaitu ....', '#####Monitor', '#####Mic', '#####CPU', '#####Printer', '#####Proyektor', 'B', '2022-02-14 09:55:09', 2, 0),
(18, 9, 6, 1, NULL, NULL, '<p>apa yang&nbsp; dimaksud</p>\r\n\r\n<div class=\"ckeditor-html5-video\" style=\"text-align:center\">\r\n<video controlslist=\"nodownload\" src=\"/ckfinder/userfiles/files/Video%20Pembelajaran%201%20menit!%20cocok%20untuk%20di%20share%20di%20status%20WA(1).mp4\">&nbsp;</video>\r\n</div>\r\n\r\n<p>apa&nbsp; yang&nbsp; dimaksud</p>\r\n', '#####<p>fsray</p>\r\n', '#####<p>drtzat</p>\r\n', '#####<p>rrtyuu</p>\r\n', '#####<p>arippsa</p>\r\n', '#####<p>sreol</p>\r\n', 'A', NULL, NULL, NULL),
(19, 10, 6, 1, NULL, NULL, '<div class=\"ckeditor-html5-video\" style=\"text-align:center\">\r\n<video controlslist=\"nodownload\" src=\"/ckfinder/userfiles/files/Video%20Pembelajaran%201%20menit!%20cocok%20untuk%20di%20share%20di%20status%20WA(2).mp4\">&nbsp;</video>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>a</p>\r\n', '#####<p>a</p>\r\n', '#####<p>c</p>\r\n', '#####<p>d</p>\r\n', '#####<p>e</p>\r\n', 'D', NULL, NULL, NULL),
(20, 10, 6, 1, NULL, NULL, '<div class=\"ckeditor-html5-video\" style=\"text-align:center\">\r\n<video controlslist=\"nodownload\" height=\"100\" poster=\"/ckfinder/userfiles/files/1.mp4\" src=\"/ckfinder/userfiles/files/1.mp4\" width=\"120\">&nbsp;</video>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', 'B', NULL, NULL, NULL),
(21, 10, 6, 1, 'gambar_soal_21.mp4', 'video/mp4', '', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', '#####<p>A</p>\r\n', 'A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_mapel`
--

CREATE TABLE `tr_guru_mapel` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(4, 3, 1),
(5, 4, 1),
(6, 5, 6),
(7, 4, 6),
(8, 9, 6),
(9, 10, 6),
(10, 9, 1),
(11, 11, 1),
(12, 11, 25);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_tes`
--

CREATE TABLE `tr_guru_tes` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `terlambat` datetime NOT NULL,
  `token` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `kelas`, `jurusan`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(14, 4, 1, 'PENILAIAN AKHIR SEMESTER', 5, 'X', 'AKL', 30, 'acak', '', '2022-02-14 10:00:00', '2022-02-14 12:00:00', 'EZAHW'),
(15, 4, 6, 'PENILAIAN AKHIR SEMESTER', 5, 'X', 'RPL', 30, 'acak', '', '2022-02-15 12:00:00', '2022-02-15 14:00:00', 'EGCVI'),
(16, 9, 6, 'sk', 1, 'XI', 'RPL', 4, 'acak', '', '2022-08-12 09:35:00', '2022-08-12 09:39:00', 'XAHDI');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

CREATE TABLE `tr_ikut_ujian` (
  `id` int(11) NOT NULL,
  `id_tes` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(11) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(9, 15, 799, '17,13,15,16,14', '17:B:N,13:C:N,15:A:N,16:C:N,14:D:N', 5, '100.00', '100.00', '2022-02-15 13:03:41', '2022-02-15 13:33:41', 'N'),
(10, 17, 814, '19', '19::N', 0, '0.00', '0.00', '2022-08-12 10:10:12', '2022-08-12 10:14:12', 'N'),
(11, 18, 814, '19,20', '19:B:N,20:B:N', 1, '50.00', '50.00', '2022-08-12 10:21:14', '2022-08-12 10:27:14', 'N'),
(12, 19, 814, '21,19,20', '21::N,19::N,20::N', 0, '0.00', '0.00', '2022-08-12 13:06:17', '2022-08-12 13:14:17', 'N'),
(13, 20, 814, '22', '22::N', 0, '0.00', '0.00', '2022-08-12 13:24:48', '2022-08-12 13:32:48', 'N'),
(14, 21, 814, '23', '23:A:N', 1, '100.00', '100.00', '2022-08-12 17:50:18', '2022-08-12 18:01:18', 'N'),
(15, 22, 814, '23', '23:A:N', 1, '100.00', '100.00', '2022-08-12 18:01:25', '2022-08-12 18:07:25', 'N'),
(16, 23, 814, '25,33,26,27,32,24,29,31,23,28,30', '25:B:N,33:A:N,26:B:N,27:C:N,32:B:N,24:D:N,29:E:N,31:B:N,23:A:N,28:D:N,30:B:N', 2, '18.18', '18.18', '2022-08-12 18:16:46', '2022-08-12 18:31:46', 'N'),
(17, 24, 814, '50,46,47,51,23,48,44,52,49,45,53', '50::N,46::N,47::N,51::N,23::N,48::N,44::N,52::N,49::N,45::N,53::N', 0, '0.00', '0.00', '2022-08-12 18:34:42', '2022-08-12 18:41:42', 'N'),
(18, 25, 814, '53,52,54', '53:D:N,52:C:N,54:A:N', 2, '66.67', '66.67', '2022-08-23 09:05:46', '2022-08-23 09:11:46', 'N'),
(19, 26, 814, '52,53,54', '52:C:N,53::N,54::N', 1, '33.33', '33.33', '2022-08-23 16:26:11', '2022-08-23 16:36:11', 'N'),
(20, 27, 813, '57,55,56,58', '57:C:N,55:B:N,56:D:N,58:C:N', 0, '0.00', '0.00', '2022-08-23 16:43:23', '2022-08-23 16:53:23', 'N'),
(21, 28, 813, '57,56,54,58,59', '57:A:N,56:B:N,54:B:N,58:C:N,59:D:N', 0, '0.00', '0.00', '2022-08-23 16:53:43', '2022-08-23 17:03:43', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kon_id` (`kon_id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_jurusan`
--
ALTER TABLE `m_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `m_jurusan`
--
ALTER TABLE `m_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
