-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.26-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk laundry_db
CREATE DATABASE IF NOT EXISTS `laundry_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laundry_db`;

-- membuang struktur untuk table laundry_db.detailtransaksimasuk
CREATE TABLE IF NOT EXISTS `detailtransaksimasuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_nota` int(11) NOT NULL,
  `detail_jmlhpakaian` int(2) NOT NULL,
  `detail_jenispakaian` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laundry_db.detailtransaksimasuk: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `detailtransaksimasuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailtransaksimasuk` ENABLE KEYS */;

-- membuang struktur untuk table laundry_db.paket
CREATE TABLE IF NOT EXISTS `paket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paket_kd` varchar(3) NOT NULL,
  `paket_nama` varchar(50) NOT NULL,
  `paket_satuan` varchar(20) NOT NULL,
  `paket_harga` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laundry_db.paket: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `paket` DISABLE KEYS */;
INSERT INTO `paket` (`id`, `paket_kd`, `paket_nama`, `paket_satuan`, `paket_harga`) VALUES
	(1, '228', 'expres', 'kilogram', 8000);
/*!40000 ALTER TABLE `paket` ENABLE KEYS */;

-- membuang struktur untuk table laundry_db.pelanggan
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pel_kd` varchar(10) NOT NULL,
  `pel_nama` varchar(50) NOT NULL,
  `pel_alamat` text NOT NULL,
  `pel_telp` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laundry_db.pelanggan: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;

-- membuang struktur untuk table laundry_db.pengguna
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peng_kd` varchar(10) NOT NULL,
  `peng_nama` varchar(50) NOT NULL,
  `peng_telp` varchar(20) NOT NULL,
  `peng_tglmasuk` datetime NOT NULL,
  `peng_pass` text NOT NULL,
  `peng_hakakses` int(2) NOT NULL COMMENT '1=superuser, 2=finance, 3=operator, 4=inventory',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laundry_db.pengguna: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` (`id`, `peng_kd`, `peng_nama`, `peng_telp`, `peng_tglmasuk`, `peng_pass`, `peng_hakakses`) VALUES
	(1, '001', 'Cahyo', '0879994455', '2018-06-19 15:18:30', '21232f297a57a5a743894a0e4a801fc3', 1);
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;

-- membuang struktur untuk table laundry_db.transaksimasuk
CREATE TABLE IF NOT EXISTS `transaksimasuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_nota` varchar(10) NOT NULL,
  `peng_kd` int(11) NOT NULL,
  `tm_tglmasuk` datetime NOT NULL,
  `tm_tglkeluar` datetime NOT NULL,
  `pel_kd` int(11) NOT NULL,
  `paket_kd` int(11) NOT NULL,
  `tm_total` float NOT NULL,
  `tm_dp` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laundry_db.transaksimasuk: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `transaksimasuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksimasuk` ENABLE KEYS */;

-- membuang struktur untuk table laundry_db.transaksipengambilan
CREATE TABLE IF NOT EXISTS `transaksipengambilan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_nota` int(11) NOT NULL,
  `peng_kd` int(11) NOT NULL,
  `tp_denda` float NOT NULL,
  `tp_bayar` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laundry_db.transaksipengambilan: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `transaksipengambilan` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksipengambilan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
