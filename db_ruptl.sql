-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 03:27 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ruptl`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_progress`
--

CREATE TABLE `basis_progress` (
  `START` int(11) NOT NULL,
  `END` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basis_progress`
--

INSERT INTO `basis_progress` (`START`, `END`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `basis_progresstr`
--

CREATE TABLE `basis_progresstr` (
  `BASIS_START` int(11) NOT NULL,
  `BASIS_END` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basis_progresstr`
--

INSERT INTO `basis_progresstr` (`BASIS_START`, `BASIS_END`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `cod_gi`
--

CREATE TABLE `cod_gi` (
  `CODGI_ID` int(11) NOT NULL,
  `CODGI_NAMA` varchar(50) NOT NULL,
  `CODGI_TEGANGAN` int(11) NOT NULL,
  `CODGI_KETSTATUS` varchar(50) NOT NULL,
  `CODGI_KAPASITAS` int(11) NOT NULL,
  `CODGI_TAHUN` varchar(50) NOT NULL,
  `CODGI_WILAYAH` varchar(50) NOT NULL,
  `CODGI_KOORX` varchar(50) NOT NULL,
  `CODGI_KOORY` varchar(50) NOT NULL,
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL,
  `CODGI_DESKRIPSI` varchar(500) NOT NULL,
  `CODGI_LOKASI` varchar(100) NOT NULL,
  `CODGI_TUJUAN` varchar(100) NOT NULL,
  `CODGI_SUMBERDANA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cod_gi`
--

INSERT INTO `cod_gi` (`CODGI_ID`, `CODGI_NAMA`, `CODGI_TEGANGAN`, `CODGI_KETSTATUS`, `CODGI_KAPASITAS`, `CODGI_TAHUN`, `CODGI_WILAYAH`, `CODGI_KOORX`, `CODGI_KOORY`, `CREATED_ON`, `CREATED_BY`, `CODGI_DESKRIPSI`, `CODGI_LOKASI`, `CODGI_TUJUAN`, `CODGI_SUMBERDANA`) VALUES
(8, 'sdfsdf', 123, 'TIDAK AKTIF', 140, '2018', 'gdf', '534542', '865674', '0000-00-00 00:00:00', '', 'sdgdfd', 'bhg', 'hghjgjh', 'hghj'),
(9, 'ddf', 150, 'AKTIF', 230, '2018', 'kjhjbh', '8643476', '547667454', '0000-00-00 00:00:00', '', 'hjgkgkhj', 'hgjhgjh', 'hghjgjh', 'hghgh');

-- --------------------------------------------------------

--
-- Table structure for table `ext_trafo`
--

CREATE TABLE `ext_trafo` (
  `TRAFO_ID` int(11) NOT NULL,
  `TRAFO_NAMAPROJECT` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TRAFO_KAPASITAS` varchar(100) CHARACTER SET utf8 NOT NULL,
  `TRAFO_TAHUNCOD` varchar(100) CHARACTER SET utf8 NOT NULL,
  `TRAFO_TUJUAN` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TRAFO_DANA` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TRAFO_KE` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ext_trafo`
--

INSERT INTO `ext_trafo` (`TRAFO_ID`, `TRAFO_NAMAPROJECT`, `TRAFO_KAPASITAS`, `TRAFO_TAHUNCOD`, `TRAFO_TUJUAN`, `TRAFO_DANA`, `TRAFO_KE`) VALUES
(2, 'dfadf', 'd', '2018', 'dw', 'dsds', ''),
(6, 'ddf', '123', '2018', 'qwerty', 'rty', ''),
(7, 'abd', '123', '2018', 'qwerty', 'qwerty', '17'),
(8, 'ddf', '2345', '2019', 'srhdr', 'hdrh', '5'),
(9, 'Bamsbang', '555', '2020', 'Makanmakan', 'laperr', '7');

-- --------------------------------------------------------

--
-- Table structure for table `gardu_hubung`
--

CREATE TABLE `gardu_hubung` (
  `GH_ID` int(11) NOT NULL,
  `GH_KODE_ASET` int(50) NOT NULL,
  `GH_NAMA` varchar(50) NOT NULL,
  `GH_ALAMAT` varchar(50) NOT NULL,
  `GH_OPERATOR` varchar(50) NOT NULL,
  `GH_STATUS_RC` varchar(50) NOT NULL,
  `GH_KOORX` varchar(50) NOT NULL,
  `GH_KOORY` varchar(50) NOT NULL,
  `GH_AREA` varchar(50) NOT NULL,
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gardu_hubung`
--

INSERT INTO `gardu_hubung` (`GH_ID`, `GH_KODE_ASET`, `GH_NAMA`, `GH_ALAMAT`, `GH_OPERATOR`, `GH_STATUS_RC`, `GH_KOORX`, `GH_KOORY`, `GH_AREA`, `CREATED_ON`, `CREATED_BY`) VALUES
(29, 456789, 'asd', 'asdad', 'hgh', 'hh', '98887567', '76968567', 'ghjghj', '2018-03-22 19:05:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `gardu_induk`
--

CREATE TABLE `gardu_induk` (
  `GI_ID` int(11) NOT NULL,
  `GI_NAMA` varchar(50) NOT NULL,
  `GI_ALAMAT` varchar(50) NOT NULL,
  `GI_KOORX` varchar(50) NOT NULL,
  `GI_KOORY` varchar(50) NOT NULL,
  `GI_TLP` varchar(50) NOT NULL,
  `ID_MS` int(11) NOT NULL,
  `GI_WILAYAH` varchar(100) NOT NULL,
  `GI_AREA` varchar(100) NOT NULL,
  `CREATED_ON` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gardu_induk`
--

INSERT INTO `gardu_induk` (`GI_ID`, `GI_NAMA`, `GI_ALAMAT`, `GI_KOORX`, `GI_KOORY`, `GI_TLP`, `ID_MS`, `GI_WILAYAH`, `GI_AREA`, `CREATED_ON`, `CREATED_BY`) VALUES
(67, 'dsad', 'gsdsd', '643', '2', 'b', 2, 'b', 'ff', NULL, NULL),
(69, 'abd', 'jalan duri kosambi', '62381255891', '-3271372653', '3270748', 1, 'cengkareng', 'bfjfdhurd', '2018-03-22 19:04:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gi_ib`
--

CREATE TABLE `gi_ib` (
  `IB_ID` int(11) NOT NULL,
  `GI_ID` int(11) NOT NULL,
  `IB_NAMA` varchar(50) NOT NULL,
  `IB_BEBAN` varchar(50) NOT NULL,
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gi_ib`
--

INSERT INTO `gi_ib` (`IB_ID`, `GI_ID`, `IB_NAMA`, `IB_BEBAN`, `CREATED_ON`, `CREATED_BY`) VALUES
(17, 69, 'trafo 2', '230', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_status`
--

CREATE TABLE `master_status` (
  `ID_MS` int(11) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `CREATED_ON` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_status`
--

INSERT INTO `master_status` (`ID_MS`, `NAMA`, `CREATED_ON`, `CREATED_BY`) VALUES
(1, 'BEROPERASI', NULL, NULL),
(2, 'TIDAK BEROPERASI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `PROGRESS_ID` int(11) NOT NULL,
  `NAMA_PROGRESS` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`PROGRESS_ID`, `NAMA_PROGRESS`) VALUES
(1, 'Pematangan Lahan'),
(2, 'Proses Lelang/Pengadaan'),
(3, 'proses Kontrak'),
(4, 'Terkontrak'),
(5, 'Basic Design'),
(6, 'Tahap Konstruksi (5%-10%)'),
(7, 'Tahap Konstruksi (10%-20%)'),
(8, 'Tahap Konstruksi (20%-50%)'),
(9, 'Tahap Konstruksi (50%-70%)'),
(10, 'Tahap Konstruksi (70%-90%)'),
(11, 'Sertifikat Laik Operasi (SLO) Sisi 20 kV'),
(12, 'Sertifikat Laik Operasi (SLO) Sisi 150 kV'),
(13, 'Sudah Operasi');

-- --------------------------------------------------------

--
-- Table structure for table `progress_trafo`
--

CREATE TABLE `progress_trafo` (
  `WT_PROGRESS` int(11) NOT NULL,
  `NAMA_PROGRESS` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progress_trafo`
--

INSERT INTO `progress_trafo` (`WT_PROGRESS`, `NAMA_PROGRESS`) VALUES
(1, 'Pematangan Lahan'),
(2, 'Proses Lelang/pengadaan'),
(3, 'Proses Kontrak'),
(4, 'Terkontrak'),
(5, 'Basic Design'),
(6, 'Tahap Kontruksi (5%-10%)'),
(7, 'Tahap Kontruksi (10%-20%)'),
(8, 'Tahap Kontruksi (20%-50%)'),
(9, 'Tahap Kontruksi (50%-70%)'),
(10, 'Tahap Kontruksi (70%-90%)'),
(11, 'Sertifikat Laik Operasi (SLO) sisi 20 KV'),
(12, 'Sertifikat Laik Operasi (SLO) sisi 150 KV'),
(13, 'Sudah Operasi');

-- --------------------------------------------------------

--
-- Table structure for table `transmisi150`
--

CREATE TABLE `transmisi150` (
  `TR_ID` int(11) NOT NULL,
  `TR_NAMA_BAY` varchar(50) NOT NULL,
  `TR_NO_TOWER` int(11) NOT NULL,
  `TR_TYPE_TOWER` varchar(50) NOT NULL,
  `TR_TEGANGAN` int(11) NOT NULL,
  `TR_REGION` varchar(50) NOT NULL,
  `TR_STATUS_MILIK` varchar(50) NOT NULL,
  `TR_PROVINSI` varchar(50) NOT NULL,
  `TR_KOTA_KAB` varchar(50) NOT NULL,
  `TR_KECAMATAN` varchar(50) NOT NULL,
  `TR_KELURAHAN` varchar(50) NOT NULL,
  `TR_KOORX` varchar(100) NOT NULL,
  `TR_KOORY` varchar(100) NOT NULL,
  `TR_UNIT` varchar(50) NOT NULL,
  `TR_TRAGI` varchar(50) NOT NULL,
  `CREATED_ON` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transmisi150`
--

INSERT INTO `transmisi150` (`TR_ID`, `TR_NAMA_BAY`, `TR_NO_TOWER`, `TR_TYPE_TOWER`, `TR_TEGANGAN`, `TR_REGION`, `TR_STATUS_MILIK`, `TR_PROVINSI`, `TR_KOTA_KAB`, `TR_KECAMATAN`, `TR_KELURAHAN`, `TR_KOORX`, `TR_KOORY`, `TR_UNIT`, `TR_TRAGI`, `CREATED_ON`, `CREATED_BY`) VALUES
(6, 'olin', 12, 'fsfd', 150, 'fsfa', 'fsfds', 'asfs', 'safas', 'dsada', 'safas', 'dfad', 'gsdf', 'fdfsd', 'dfsdfs', '2018-03-22 19:06:00', ''),
(7, 'abcd', 3, 'sda', 231, 'ddas', 'cdssd', 'hjghj', 'hjhj', 'jhhb', 'vg', '89687567', '870895656', 'bvhjvhj', 'hgutyuuhy', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`) VALUES
('admin', 'admin', 'Gusti');

-- --------------------------------------------------------

--
-- Table structure for table `workflow`
--

CREATE TABLE `workflow` (
  `WF_ID` int(11) NOT NULL,
  `PROGRESS_ID` int(11) NOT NULL,
  `CREATED_ON` date NOT NULL,
  `CREATED_BY` varchar(20) CHARACTER SET utf8 NOT NULL,
  `CODGI_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workflow`
--

INSERT INTO `workflow` (`WF_ID`, `PROGRESS_ID`, `CREATED_ON`, `CREATED_BY`, `CODGI_ID`) VALUES
(7, 1, '2017-12-08', 'admin', 9),
(8, 2, '2017-12-08', 'admin', 9),
(9, 3, '2018-03-26', 'admin', 9);

-- --------------------------------------------------------

--
-- Table structure for table `workflow_trafo`
--

CREATE TABLE `workflow_trafo` (
  `WT_ID` int(11) NOT NULL,
  `WT_PROGRESS` int(11) NOT NULL,
  `TRAFO_ID` int(11) NOT NULL,
  `CREATED_ON` varchar(100) CHARACTER SET utf8 NOT NULL,
  `CREATED_BY` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workflow_trafo`
--

INSERT INTO `workflow_trafo` (`WT_ID`, `WT_PROGRESS`, `TRAFO_ID`, `CREATED_ON`, `CREATED_BY`) VALUES
(2, 1, 6, '2018-03-27', 'admin'),
(3, 2, 6, '2018-03-27', 'admin'),
(4, 1, 2, '2018-03-27', 'admin'),
(5, 2, 2, '2018-03-27', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_progress`
--
ALTER TABLE `basis_progress`
  ADD KEY `fk_basisstart` (`START`),
  ADD KEY `FK_BASISEND` (`END`);

--
-- Indexes for table `basis_progresstr`
--
ALTER TABLE `basis_progresstr`
  ADD KEY `FK_BASISTRSTART` (`BASIS_START`),
  ADD KEY `FK_BASISTREND` (`BASIS_END`);

--
-- Indexes for table `cod_gi`
--
ALTER TABLE `cod_gi`
  ADD PRIMARY KEY (`CODGI_ID`);

--
-- Indexes for table `ext_trafo`
--
ALTER TABLE `ext_trafo`
  ADD PRIMARY KEY (`TRAFO_ID`);

--
-- Indexes for table `gardu_hubung`
--
ALTER TABLE `gardu_hubung`
  ADD PRIMARY KEY (`GH_ID`);

--
-- Indexes for table `gardu_induk`
--
ALTER TABLE `gardu_induk`
  ADD PRIMARY KEY (`GI_ID`),
  ADD KEY `ID_MS` (`ID_MS`);

--
-- Indexes for table `gi_ib`
--
ALTER TABLE `gi_ib`
  ADD PRIMARY KEY (`IB_ID`),
  ADD KEY `GI_ID` (`GI_ID`);

--
-- Indexes for table `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`ID_MS`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`PROGRESS_ID`);

--
-- Indexes for table `progress_trafo`
--
ALTER TABLE `progress_trafo`
  ADD PRIMARY KEY (`WT_PROGRESS`);

--
-- Indexes for table `transmisi150`
--
ALTER TABLE `transmisi150`
  ADD PRIMARY KEY (`TR_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `workflow`
--
ALTER TABLE `workflow`
  ADD PRIMARY KEY (`WF_ID`),
  ADD KEY `FK_PROGID` (`PROGRESS_ID`),
  ADD KEY `FK_workflowCODGIID` (`CODGI_ID`);

--
-- Indexes for table `workflow_trafo`
--
ALTER TABLE `workflow_trafo`
  ADD PRIMARY KEY (`WT_ID`),
  ADD KEY `fk_trid` (`TRAFO_ID`),
  ADD KEY `FK_WTPRO` (`WT_PROGRESS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cod_gi`
--
ALTER TABLE `cod_gi`
  MODIFY `CODGI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ext_trafo`
--
ALTER TABLE `ext_trafo`
  MODIFY `TRAFO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gardu_hubung`
--
ALTER TABLE `gardu_hubung`
  MODIFY `GH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gardu_induk`
--
ALTER TABLE `gardu_induk`
  MODIFY `GI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `gi_ib`
--
ALTER TABLE `gi_ib`
  MODIFY `IB_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `master_status`
--
ALTER TABLE `master_status`
  MODIFY `ID_MS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `PROGRESS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `progress_trafo`
--
ALTER TABLE `progress_trafo`
  MODIFY `WT_PROGRESS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transmisi150`
--
ALTER TABLE `transmisi150`
  MODIFY `TR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `workflow`
--
ALTER TABLE `workflow`
  MODIFY `WF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `workflow_trafo`
--
ALTER TABLE `workflow_trafo`
  MODIFY `WT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basis_progress`
--
ALTER TABLE `basis_progress`
  ADD CONSTRAINT `FK_BASISEND` FOREIGN KEY (`END`) REFERENCES `progress` (`PROGRESS_ID`),
  ADD CONSTRAINT `fk_basisstart` FOREIGN KEY (`START`) REFERENCES `progress` (`PROGRESS_ID`);

--
-- Constraints for table `basis_progresstr`
--
ALTER TABLE `basis_progresstr`
  ADD CONSTRAINT `FK_BASISTREND` FOREIGN KEY (`BASIS_END`) REFERENCES `progress_trafo` (`WT_PROGRESS`),
  ADD CONSTRAINT `FK_BASISTRSTART` FOREIGN KEY (`BASIS_START`) REFERENCES `progress_trafo` (`WT_PROGRESS`);

--
-- Constraints for table `gardu_induk`
--
ALTER TABLE `gardu_induk`
  ADD CONSTRAINT `GARDU_INDUK_ibfk_1` FOREIGN KEY (`ID_MS`) REFERENCES `master_status` (`ID_MS`);

--
-- Constraints for table `gi_ib`
--
ALTER TABLE `gi_ib`
  ADD CONSTRAINT `fk_giib` FOREIGN KEY (`GI_ID`) REFERENCES `gardu_induk` (`GI_ID`);

--
-- Constraints for table `workflow`
--
ALTER TABLE `workflow`
  ADD CONSTRAINT `FK_PROGID` FOREIGN KEY (`PROGRESS_ID`) REFERENCES `progress` (`PROGRESS_ID`),
  ADD CONSTRAINT `FK_workflowCODGIID` FOREIGN KEY (`CODGI_ID`) REFERENCES `cod_gi` (`CODGI_ID`);

--
-- Constraints for table `workflow_trafo`
--
ALTER TABLE `workflow_trafo`
  ADD CONSTRAINT `FK_WTPRO` FOREIGN KEY (`WT_PROGRESS`) REFERENCES `progress_trafo` (`WT_PROGRESS`),
  ADD CONSTRAINT `fk_trid` FOREIGN KEY (`TRAFO_ID`) REFERENCES `ext_trafo` (`TRAFO_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
