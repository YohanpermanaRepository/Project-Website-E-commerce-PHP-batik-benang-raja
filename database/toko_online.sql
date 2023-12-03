-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 06:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(11, 'Syahrul Abidin', 'syahrul', '95ffb7a15f02c6c23f403edeae956a42'),
(12, 'putra', 'putra', '202cb962ac59075b964b07152d234b70'),
(13, 'putra1', '123', '202cb962ac59075b964b07152d234b70'),
(14, 'M. PUTRA SENJA KAIMANA', 'akew', '202cb962ac59075b964b07152d234b70'),
(15, 'han', 'han', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Sidoarjo', 10000),
(2, 'Surabaya', 12000),
(3, 'Bangkalan', 20000),
(4, 'Bojonegoro', 25000),
(5, 'Bondowoso', 15000),
(6, 'Gresik', 10000),
(7, 'Jember', 15000),
(8, 'Jombang', 13000),
(9, 'Lamongan', 17000),
(10, 'Lumajang', 18000),
(11, 'Magetan', 14000),
(12, 'Nganjuk', 15000),
(13, 'Pacitan', 20000),
(14, 'Ponorogo', 25000),
(15, 'Situbondo', 12000),
(16, 'Tuban', 15000),
(17, 'Tulungagung', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(7, 'contact.putrasenja@gmail.com', '21f1256217c52a6cdaa51f34bf1b4131', 'putra', '089623959423', 'HALIM PERDANA KUSUMA'),
(8, 'contact.putrasenja1@gmail.com', '202cb962ac59075b964b07152d234b70', 'M. PUTRA SENJA KAIMANA', '089623959423', 'HALIM PERDANA KUSUMA'),
(9, 'y@gmail.com', '202cb962ac59075b964b07152d234b70', 'yongki', '085712171122', 'madiun');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `jumlah`, `tanggal`, `bukti`) VALUES
(2, 1, 'syahrul', 0, '2020-03-18', '20200318053252'),
(3, 4, 'putra', 9000000, '2022-06-16', '20220616065829Fav-Icon.jpg'),
(4, 5, 'efwe', 423423, '2022-06-18', '20220618052930hvs biru.docx');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`) VALUES
(3, 6, 0, '2020-04-25', 220000, '', 0, 'kk', 'pending', ''),
(4, 7, 16, '2022-06-15', 665000, 'Tuban', 15000, 'HALIM PERDANA KUSUMA', 'barang dikirim', ''),
(5, 7, 1, '2022-06-16', 510000, 'Sidoarjo', 10000, 'halim', 'batal', ''),
(6, 8, 7, '2022-06-18', 415000, 'Jember', 15000, 'HALIM PERDANA KUSUMA 69116', 'pending', ''),
(7, 7, 9, '2022-06-18', 517000, 'Lamongan', 17000, 'fwef', 'pending', ''),
(8, 7, 7, '2022-06-18', 1315000, 'Jember', 15000, 'erfwef', 'pending', ''),
(9, 7, 2, '2022-06-18', 2392000, 'Surabaya', 12000, 'halim', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(3, 3, 37, 1, 'Jaket Hoodie', 220000, 50, 50, 220000),
(4, 4, 63, 1, 'Vans Old Skool Flame (2017)', 650000, 850, 850, 650000),
(5, 5, 72, 1, 'AC/DC T-Shirt', 500000, 20, 20, 500000),
(6, 6, 70, 1, 'Nirvana T-Shirt', 400000, 50, 50, 400000),
(7, 7, 72, 1, 'AC/DC T-Shirt', 500000, 20, 20, 500000),
(8, 8, 72, 1, 'AC/DC T-Shirt', 500000, 20, 20, 500000),
(9, 8, 85, 2, 'Sex Pistols T-Shirt', 400000, 50, 100, 800000),
(10, 9, 89, 1, 'NIRVANA In Utero Vinyl', 1980000, 180, 180, 1980000),
(11, 9, 70, 1, 'Nirvana T-Shirt', 400000, 50, 50, 400000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(70, 'Benang Raja Batik Couple Pria Wanita Kemeja Dan Gamis Motif Bunga Kotak', 400000, 50, '1.jpg', 'Spesifikasi Produk\r\n\r\nMerek\r\nBatik Benang Raja\r\nBahan\r\nKatun\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Panjang\r\nStok\r\n55\r\nDikirim Dari\r\nKOTA Surabaya \r\n\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n\r\n(SARIMBIT BATIK DAPAT DIBELI TERPISAH)\r\n\r\n-Kemeja Katun Bunga Kotak\r\nHARGA Rp.69.000,jumbo Rp.79.000\r\nKode : KK69-634\r\nTersedia ukuran M L XL XXL\r\nLingkar dada M -/+100cm\r\nLingkar dada L -/+106cm\r\nLingkar dada XL -/+112cm\r\nLingkar dada XXL -/+120cm\r\nPanjang Lengan -/+58-60cm\r\nPanjang Baju -/+72cm										'),
(72, 'Benang Raja Batik Couple Pria Wanita Motif Daun Bunga', 500000, 60, '2.jpg', 'Merek\r\nBatik Benang Raja\r\nBahan\r\nKatun\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nStok\r\n30\r\nDikirim Dari\r\nKOTA Surabaya			\r\n\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n\r\n(SARIMBIT BATIK DAPAT DIBELI TERPISAH)\r\n\r\n-Kemeja Katun Daun Bunga\r\nHARGA Rp.69.000,jumbo Rp.79.000\r\nKode : KK69-031\r\nTersedia ukuran M L XL XXL\r\nLingkar dada M -/+100cm\r\nLingkar dada L -/+106cm\r\nLingkar dada XL -/+112cm\r\nLingkar dada XXL -/+120cm\r\nPanjang Lengan -/+58-60cm\r\nPanjang Baju -/+72cm'),
(74, 'Benang Raja Batik Couple Pria Wanita Kombinasi', 400000, 50, '3.jpg', 'Merek\r\nBatik Benang Raja\r\nBahan\r\nKatun\r\nUkuran Jumbo\r\nYa\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Pendek\r\nStok\r\n10\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n.\r\n\r\n(SARIMBIT BATIK DAPAT DIBELI TERPISAH)\r\nSTOK TERBATAS!!\r\n\r\n-Hem Batik Sopal Kombinasi\r\nHARGA Rp.55.000,jumbo Rp.65.000\r\nKode : PKHD550\r\nTersedia ukuran M L XL XXL XXXL 4L\r\nLingkar dada M -/+102cm\r\nLingkar dada L :-/+ 106cm\r\nLingkar dada XL :-/+ 112cm\r\nLingkar dada XXL -/+120cm\r\nLingkar dada XXXL-/+124cm\r\nLingkar dada 4L -/+126cm\r\nPanjang Lengan:-/+26-29cm\r\nPanjang Baju :-/+73-81cm'),
(76, 'Benang Raja Batik Couple Pria Wanita Motif Pulau', 850000, 80, '4.jpg', 'Merek\r\nBatik Benang Raja\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Panjang\r\nBahan\r\nTenun Baron\r\nStok\r\n44\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n\r\n(SARIMBIT BATIK DAPAT DIBELI TERPISAH)\r\n\r\n-Kemeja Katun Pulau\r\nHARGA Rp.69.000,jumbo Rp.79.000\r\nKode : KK69-012\r\nTersedia ukuran M L XL XXL\r\nLingkar dada M -/+100cm\r\nLingkar dada L -/+106cm\r\nLingkar dada XL -/+112cm\r\nLingkar dada XXL -/+120cm\r\nPanjang Lengan -/+58-60cm\r\nPanjang Baju -/+72cm'),
(77, 'Benang Raja Gamis Batik Couple Pria Wanita Motif PKMR Soraya', 700000, 70, '5.jpg', 'Merek\r\nBatik Benang Raja\r\nBahan\r\nKatun\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nStok\r\n4\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n\r\n(SARIMBIT KELUARGA BATIK DAPAT DIBELI TERPISAH)\r\n\r\n-Kemeja Katun MR\r\nHARGA Rp.65.000,jumbo Rp.75.000\r\nKode : KS65-MR28\r\nTersedia ukuran M L XL XXL XXXL\r\nLingkar dada M -/+100cm\r\nLingkar dada L -/+108cm\r\nLingkar dada XL :-/+ 110cm\r\nLingkar dada XXL -/+ 114cm\r\nLingkar dada XXXL -/+120cm\r\nPanjang Lengan:-/+57-60cm\r\nPanjang Baju :-/+69-78cm\r\n'),
(78, 'Gamis Batik Jumbo Modern Premium - Gamis Busui', 540000, 60, '6.jpg', 'Ukuran Jumbo\r\nYa\r\nNegara Asal\r\nIndonesia\r\nBahan\r\nKatun\r\nMotif\r\nBatik\r\nStok\r\n899806\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\nBahan :\r\nkatun dengan tingkat ketebalan sedang dan nyaman digunakan untuk berbagai aktifitas\r\n\r\n* kemiripan warna dengan asli 90% dikarenakan efek blitz kamera dan tingkat IPS layar pada masing - masing handphone/pc\r\n\r\nUkuran\r\nall size : lingkar dada 110 cm - panjang baju 140 cm\r\nmuat untuk size M L XL maksimal BB 75 kg\r\n\r\nGamis batik koleksi Juni Batik dengan motif terbaru dan modern hanya untukmu. Di desain untuk bisa dipakai  dalam berbagai acara. Sangat nyaman saat dipakai sehingga menunjang penampilan dan kepercayaan kamu. Beli sekarang sebelum kehabisan!\r\n'),
(79, 'Gamis Batik Modern Murah Katun Halus Kombinasi Truntum', 545000, 65, '7.jpg', 'Ukuran Jumbo\r\nYa\r\nNegara Asal\r\nIndonesia\r\nBahan\r\nKatun\r\nMotif\r\nBatik\r\nStok\r\n1715\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\nBahan : Katun Premium (halus, adem di pakai) \r\nTersedia Ukuran Standar dan Jumbo \r\nUkuran Standar : Lebar dada 110cm, Fit XL, panjang 140cm, Resleting depan,tali samping,lengan karet\r\nUkuran Jumbo : Lebar dada 120cm, Fit to XXL, panjang 140cm, Resleting depan,tali samping,lengan karet\r\n==============================\r\nSilahkan di pinang \r\nStock sewaktu-waktu bisa berubah\r\n'),
(80, 'Benang Raja Hem Batik Pria Lengan Pendek', 450000, 50, '8.jpg', 'Merek\r\nBatik Benang Raja\r\nNegara Asal\r\nIndonesia\r\nBahan\r\nKatun\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Pendek\r\nUkuran Jumbo\r\nYa\r\nStok\r\n169\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\n~3 DAUN~\r\n-Hem Katun Daun\r\nHARGA Rp.40.000,Jumbo Rp.50.000\r\nKode : HK40-641\r\nTersedia ukuran M L XL XXL XXXL 4L 5L\r\nLingkar dada M :-/+ 102cm\r\nLingkar dada L :-/+ 106cm\r\nLingkar dada XL :-/+ 110cm\r\nLingkar dada XXL :-/+ 118cm\r\nLingkar dada XXXL :-/+ 120cm\r\nLingkar dada 4L :-/+ 124-126cm\r\nLingkar dada 5L :-/+ 126-128cm\r\nPanjang Lengan:-/+23-27cm\r\nPanjang Baju :-/+70-75cm\r\n'),
(81, 'Benang Raja Batik Couple Pria Wanita Motif Zigzag Parang', 300000, 10, '9.jpg', 'Merek\r\nBatik Benang Raja\r\nBahan\r\nKatun\r\nJenis Pakaian\r\nAtasan\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Panjang\r\nStok\r\n39\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n\r\n(SARIMBIT BATIK DAPAT DIBELI TERPISAH)\r\n\r\n-Kemeja Katun Zigzag Parang\r\nHARGA Rp.69.000,jumbo Rp.79.000\r\nKode : KK69-032\r\nTersedia ukuran M L XL XXL\r\nLingkar dada M -/+100cm\r\nLingkar dada L -/+106cm\r\nLingkar dada XL -/+112cm\r\nLingkar dada XXL -/+120cm\r\nPanjang Lengan -/+58-60cm\r\nPanjang Baju -/+72cm\r\n'),
(82, 'Benang Raja Kemeja Batik Pria Lengan Panjang Motif Macan', 300000, 10, '10.jpg', 'Merek\r\nBatik Benang Raja\r\nNegara Asal\r\nIndonesia\r\nBahan\r\nKatun\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Panjang\r\nUkuran Jumbo\r\nYa\r\nAcara\r\nKasual\r\nStok\r\n1\r\nDikirim Dari\r\nKOTA SURABAYA\r\n\r\nKemeja Kombinasi Tulis Primis Lapis Furing\r\nHARGA Rp. 189.000,Jumbo Rp.204.000\r\nKode : HTP189-11\r\nTersedia ukuran M L XL XXL XXXL\r\nLingkar dada M -/+102cm\r\nLingkar dada L -/+110cm\r\nLingkar dada XL -/+112cm\r\nLingkar dada XXL -/+114cm\r\nLingkar dada XXXL -/+120cm\r\nPanjang lengan -/+60-64cm\r\nPanjang Baju -/+71-78cm\r\n\r\n\r\n\r\nREADY STOK, HARGA PABRIK !!\r\nORDER SEKARANG, SEBELUM KEHABISAN  :)\r\n\r\n\r\nKemeja Kombinasi Tulis Primis Lapis Furing\r\nHARGA Rp. 189.000,Jumbo Rp.204.000\r\nKode : HTP189-11\r\nTersedia ukuran M L XL XXL XXXL\r\nLingkar dada M -/+102cm\r\nLingkar dada L -/+110cm\r\nLingkar dada XL -/+112cm\r\nLingkar dada XXL -/+114cm\r\nLingkar dada XXXL -/+120cm\r\nPanjang lengan -/+60-64cm\r\nPanjang Baju -/+71-78cm\r\n'),
(93, 'Benang Raja Batik Couple Pria Wanita Motif Banyumili', 170000, 50, '11.jpg', 'Bahan\r\nKatun\r\nNegara Asal\r\nIndonesia\r\nMotif\r\nBatik\r\nPanjang Lengan\r\nLengan Pendek\r\nStok\r\n25\r\nDikirim Dari\r\nKOTA SURABAYA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
