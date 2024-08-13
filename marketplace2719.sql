-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 04:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplace2719`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'rena@gmail.com', '0727ef96d56229a5bb9d9ab73d7a56115b778318', 'Renara');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(1, 'Sejarah Kain Katun Dan Manfaatnya', '<p>Sebagai bahan pakaian yang cukup nyaman bila dikenakan oleh setiap orang, Itulah yang menjadikan kain katun populer di kalangan masyarakat. Apalagi jenis kain yang terbuat dari serat alami ini, sudah dikenal sejak 5000 tahun sebelum masehi.<br />\r\n<br />\r\nPakaian yang terbuat dari kain katun memiliki beberapa&nbsp;manfaat yang luar biasa bagi&nbsp;kesehatan tubuh. Makin sering mengenakan pakaian dengan jenis bahan ini, beberapa permasalahan tubuh bisa teratasi. Berikut ini merupakan keuntungannya.<br />\r\n<br />\r\n1. Meminimalkan pertumbuhan bakteri pada tubuh<br />\r\n2. Menghindarkan terjadinya iritasi<br />\r\n3. Termasuk kain non-alergi<br />\r\n<br />\r\nsumber:dream.co.id</p>\r\n', 'katun.jpeg'),
(2, '7 Karakteristik Kain Linen Yang Wajib Kamu Ketahui Sebelum Belanja Pakaian', '<p>Sebagai salah satu bahan pakaian, kain linen dapat diklasifikasikan kedalam jenis kain yang memiliki karakteristik cukup istimewa. Bagaimana tidak, bahan kain yang dibuat dari serat alami tumbuhan rami ini nyatanya memiliki tekstur yang sangat halus jika disentuh dan agak berkilau.<br />\r\n<br />\r\nKain linen yang dihasilkan dari olahan serat rami bisa disebut sebagai kain pertama yang dikenal sepanjang sejarah peradaban manusia. Hal tersebut diperkuat dengan fakta bahwa serat linen merupakan serat pertama kali yang digunakan oleh manusia sebagai bahan dasar pembuatan kain.<br />\r\n<br />\r\nTidak seperti bahan kain pada umumnya, kain linen yang biasa digunakan sebagai bahan pakaian sebenarnya memiliki karakteristik dan keunikan tersendiri yang membedakannya dengan jenis bahan kain lainnya. Berikut adalah 7 karakteristik kain linen yang wajib kamu ketahui sebelum berbelanja pakaian:<br />\r\n<br />\r\n1. Linen yang berkualitas tinggi memiliki permukaan yang sangat halus dan rapi.<br />\r\n2. Kain linen sangat identik dengan warna putih, sedikit pucat dan natural.<br />\r\n3. Kain linen termasuk kedalam golongan serat nabati terkuat jika dibandingkan dengan serat alami jenis lain. Permukaan kain linen terlihat berkilau dan memiliki ketebalan yang konsisten.<br />\r\n4. Semakin sering dicuci permukaan kain linen akan menjadi semakin lembut, namun jika tidak dirawat dengan baik juga bisa rusak dan terlihat kurang menarik.<br />\r\n5. Pakaian yang terbuat dari bahan linen tidak hanya halus, mengkilap dan terlihat mahal tapi juga tidak mudah kotor.<br />\r\n6. Bahan linen akan terasa sangat sejuk saat dikenakan didaerah yang bersuhu panas dan akan bersifat menghangatkan ketika cuaca dingin.<br />\r\n7. Kain linen bisa rusak karena jamur, keringat dan pemutih sehingga membutuhkan perawatan yang khusus.<br />\r\n<br />\r\nSumber:fitinline.com</p>\r\n', 'kain.jpg'),
(3, '5 Manfaat Rahasia di Balik Pemakaian Outer', '<p>Masih mikir-mikir untuk beli outer yang pas buat kamu? Kayaknya kamu perlu cek ini deh, lima manfaat rahasia dibalik pemakaian outer!<br />\r\n<br />\r\n1. Membuat Hal Simple Menjadi Unik<br />\r\nHanya perlu menggunakan dalaman berwarna hitam, baik itu dress ataupun atasan bawahan, dengan tambahan outer, penampilan kamu sudah lebih cantik<br />\r\n<br />\r\n2. Musim Dingin Tetap Modis<br />\r\nOuter rajut jadi pilihan yang tepat saat kamu harus tetap terlihat modis namun terasa hangat, cuaca di Indonesia yang masih sering hujan, bikin kamu pusing dong harus berganti jaket. Nah, sekarang gak usah bingung lagi, pakai outer rajut aja!<br />\r\n<br />\r\n3. Menutupi Bagian Dada dan Lengan<br />\r\nTampil modis juga tetap bisa terlihat syar&#39;i kok, dengan cara memakai outer yang menutupi dada dan lengan<br />\r\n<br />\r\n4. Tidak Terasa Panas<br />\r\n&nbsp;juga tetep bisa pakai outer walaupun musim panas, dengan pilihan bahan outer yang tepat, biasanya bahan rayon, sifon atau kaos, kamu tetap bisa modis menggunakan outer dan gak kepanasan<br />\r\n<br />\r\n5. Memberikan Kesan Langsing<br />\r\nDengan menggunakan batwing outer, kamu akan tampak lebih langsing, dan begitu pula sebaliknya, bagi kamu yang kurus dan ingin memperlihatkan look yang lebih berisi, kamu juga bisa menggunakan outer ini.<br />\r\n<br />\r\nsumber:moeslema.com</p>\r\n', 'outer.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(1, 'Fashion Wanita', 'fashion1.jpg'),
(4, 'Perabot Rumah Tangga', 'perabot.png'),
(7, 'Makanan', 'makanan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`) VALUES
(1, 'syifasalsabila@amikom.ac.id', 'f952e2020df8d3c1905d469c29e1c8124e3cb5ec', 'Syifa Salsabila', 'Perumnas Condong Catur', '09856778346', '419', 'Kabupaten Sleman DI Yogyakarta'),
(2, 'rara@gmail.com', '3334c9c5f5f1bca4e8c9115b17d14ec47f3c0ccf', 'Rara ', 'Condong Catur Sleman', '0857364673286', '119', 'Sleman'),
(3, 'jeyralee@gmail.com', 'a45b4e47a134ce609eaac33ac18c696b3c3f5ce6', 'Jeyra Lee Arkalino', 'Jalan Besok no 123 Karang Tawang', '08188888888', '377', 'Kabupaten Purworejo Jawa Tengah'),
(5, 'penjual@gmail.com', '60e28160345d3f28fb41b9f770ae926392055cf9', 'Penjual', 'Jalan Mawar 123 Somagede', '0978727653', '41', 'Kabupaten Banyumas Jawa Tengah'),
(6, 'pembeli@gmail.com', 'a24f73a8fd31a8e61009c9e77967f8ce65e89d77', 'Pembeli', 'Perumnas Condong Catur Sleman', '0872554512', '419', 'Kabupaten Sleman DI Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `berat_produk`) VALUES
(1, 1, 1, 'Kerudung Segi Empat', 90000, 'kerudung.jpg', 'Assalamualaikum. Sebelum membeli, mohon untuk membaca deskripsi produk terlebih dahulu! Karena produk yg kami jual sesuai dengan deskripsi ya ?\r\n\r\nReady stock siap kirim!\r\n\r\nAlesha voal menggunakan bahan voal Arabian Original import memiliki karakteristik flowly, ringan, nyaman dan mudah diatur. \r\n\r\nHijab dijahit lipit kecil dengan benang yang senada. Jahitan rapih dan rapat sehingga jahitan tidak mudah terlepas. \r\n\r\nUkuran hijab 120cm, ukuran hijab sebelum dipotong adalah 124 x 124. Jadi InsyaAllah ukuran tidak kurang dari 120cm. Kami menjahit sesuai dengan serat benangnya sehingga hasilnya presisi dan tidak bergelombang.\r\n\r\n\r\nDisclaimer.\r\nProduk yg di foto adalah benar produk yg kami jual, kami mengusahakan untuk menampilkan foto produk yg sesuai dengan aslinya. Warna bisa berbeda sedikit karena pengaruh device yg berbeda. Oleh karena itu apabila ingin melihat gambar yg lain, bisa hubungi kami via chat. \r\nSilahkan diorder ❤', 250),
(2, 1, 1, 'Mukena', 150000, 'mukena21.jpg', 'Mukena mewah bahan Santorini Silk Premium, yang lembut dan dingin di kulit. Menggunakan bahan yang ringan namun tidak mudah terbang ketika digunakan dan tidak menimbulkan bunyi kresek kresek. Mukena dewasa dengan size jumbo\r\nJahitan halus, rapih standar butik. Produk dikemas dengan rapih dan wangi. Mukena dilengkapi dengan wadahnya yang cantik dan kecil sehingga mudah dibawa kemanapun.\r\n\r\nMukena cocok untuk daily, travelling, seserahan ataupun hadiah ustzah atau guru.\r\n\r\nsize \r\nAtasan\r\nPD 126 cm\r\nPB 137 cm\r\nLubang muka bisa di adjust menggunakan resleting berkualitas yang tidak mudah rusak\r\nBagian risleting terlapisi kain sehingga tidak menimbulkan gatal pada wajah.\r\n\r\nBawahan\r\nPanjang rok 124cm\r\nLIngkar rok 70 cm - melar sampai 145cm\r\nMenggunakan karet yang tidak mudah kendor.  \r\n\r\n*note (Harap dicuci terlebih dahulu sebelum digunakan), cuci manual sangat di sarankan agar produk awet', 600),
(3, 1, 7, 'Roti Tawar', 10000, 'rotitawar1.jpg', 'Roti Tawar', 200),
(6, 1, 7, 'Nastar', 25000, 'nastar1.jpeg', 'INI NASTAR', 250),
(7, 1, 1, 'Sepatu', 150000, 'sepatu.jpg', 'INI SEPATU', 2000),
(8, 3, 4, 'Kipas Angin', 100000, 'kipas.jpg', 'ini kipas angin warna merah. ini mengandung angin jadi awas masuk angin dan hati-hati terbang', 500),
(9, 3, 4, 'Ember Plastik', 15000, 'ember.jpg', 'Ember plastik seba guna asal gak buat tempat nasi. Tidak mudah pecah kecuali dibanting dengan brutal.', 200),
(10, 3, 4, 'Sapu', 10000, 'sapu.jpg', 'Sapu untuk menyapu sampah yang perlu dibuang. Tidak bisa terbang jadi bukan sapu ajaib tapi sapu biasa.', 100),
(11, 3, 4, 'Baskom', 10000, 'baskom.jpg', 'Baskom warna warni serbaguna. Harga untuk satuan bukan paketan. Tidak mudah pecah kecuali sengaja dibanting. ', 100),
(15, 5, 1, 'Tas', 75000, 'tas1.jpg', 'Tas Wanita', 250),
(16, 5, 4, 'Pisau Set', 125000, 'pisau1.jpg', 'Pisau set', 750),
(17, 5, 7, 'Basreng', 45000, 'basreng1.jpg', 'Basreng Pedas', 500);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(7, '<p>Selamat Datang</p>\r\n', 'ls.jpg'),
(8, '<p>Haloo</p>\r\n', 'slider2.jpg'),
(9, '<p>SKZOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOo</p>\r\n', 'skzoo2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','lunas','batal','dikirm','selesai') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL,
  `resi_ekspedisi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`, `resi_ekspedisi`) VALUES
(1, '', 1, 2, '2024-03-21 20:27:22', 100000, 'pesan', 20000, 120000, 120000, 'Sleman', 'Rena', '08758362566', 'Perumnas Condong Catur', 'Banyumas', 'Syipa', '0897675421', 'Sumpiuh Banyumas', 'J&T', 'Kilat', '1 Hari', '1000', NULL),
(2, '202406300703092113', 3, 1, '2024-06-30 07:03:09', 135000, 'lunas', 26000, 161000, 161000, 'Kabupaten Sleman DI Yogyakarta', 'Syifa Salsabila', '09856778346', 'Perumnas Condong Catur', 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Jalur Nugraha Ekakurir (JNE)', 'Ongkos Kirim Ekonomis', '26000', '2000', NULL),
(3, '202406300705257636', 3, 1, '2024-06-30 07:05:25', 150000, 'pesan', 26000, 176000, 176000, 'Kabupaten Sleman DI Yogyakarta', 'Syifa Salsabila', '09856778346', 'Perumnas Condong Catur', 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Jalur Nugraha Ekakurir (JNE)', 'Ongkos Kirim Ekonomis', '6-7', '2000', NULL),
(4, '202406301037371751', 3, 1, '2024-06-30 10:37:37', 75000, 'lunas', 18000, 93000, 93000, 'Kabupaten Sleman DI Yogyakarta', 'Syifa Salsabila', '09856778346', 'Perumnas Condong Catur', 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Jalur Nugraha Ekakurir (JNE)', 'Yakin Esok Sampai', '1-1', '750', 'JJ1234'),
(5, '202406301106323533', 3, 1, '2024-06-30 11:06:32', 50000, 'lunas', 52000, 102000, 102000, 'Kabupaten Sleman DI Yogyakarta', 'Syifa Salsabila', '09856778346', 'Perumnas Condong Catur', 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Jalur Nugraha Ekakurir (JNE)', 'Ongkos Kirim Ekonomis', '6-7', '3750', 'JB122E'),
(6, '202407061821317606', 2, 3, '2024-07-06 18:21:31', 120000, 'lunas', 133000, 253000, 253000, 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Sleman', 'Rara ', '0857364673286', 'Condong Catur Sleman', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '3-5', '700', 'JZ9111'),
(7, '202407080846444210', 3, 1, '2024-07-08 08:46:44', 75000, 'lunas', 18000, 93000, 93000, 'Kabupaten Sleman DI Yogyakarta', 'Syifa Salsabila', '09856778346', 'Perumnas Condong Catur', 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Jalur Nugraha Ekakurir (JNE)', 'Yakin Esok Sampai', '1-1', '750', NULL),
(8, '202407080851234598', 2, 3, '2024-07-08 08:51:23', 75000, 'lunas', 133000, 208000, 208000, 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Sleman', 'Rara ', '0857364673286', 'Condong Catur Sleman', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '3-5', '1000', 'RN1111'),
(9, '202407121729453651', 1, 3, '2024-07-12 17:29:45', 100000, 'lunas', 12000, 112000, 112000, 'Kabupaten Purworejo Jawa Tengah', 'Jeyra Lee Arkalino', '08188888888', 'Jalan Besok no 123 Karang Tawang', 'Kabupaten Sleman DI Yogyakarta', 'Syifa Salsabila', '09856778346', 'Perumnas Condong Catur', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '1-2', '1000', 'NT7111'),
(10, '202407201808147207', 6, 5, '2024-07-20 18:08:14', 245000, 'lunas', 38000, 283000, 283000, 'Kabupaten Banyumas Jawa Tengah', 'Penjual', '0978727653', 'Jalan Mawar 123 Somagede', 'Kabupaten Sleman DI Yogyakarta', 'Pembeli', '0872554512', 'Perumnas Condong Catur Sleman', 'Jalur Nugraha Ekakurir (JNE)', 'Yakin Esok Sampai', '1-1', '1500', 'RN1911');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `jumlah_rating` int(11) DEFAULT NULL,
  `ulasan_rating` text DEFAULT NULL,
  `waktu_rating` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`, `jumlah_rating`, `ulasan_rating`, `waktu_rating`) VALUES
(1, 1, 1, 'Hijab Segi Empat', 50000, 1, NULL, NULL, NULL),
(2, 1, 2, 'Mukena Travel Dewasa Silky', 50000, 1, NULL, NULL, NULL),
(3, 2, 6, 'Nastar', 25000, 5, 5, 'enak sekali', '2024-07-06 17:08:57'),
(4, 2, 3, 'Roti Tawar', 10000, 1, 4, 'bagus', '2024-07-06 17:08:57'),
(5, 3, 7, 'Sepatu', 150000, 1, NULL, NULL, NULL),
(6, 4, 6, 'Nastar', 25000, 3, 4, 'enak', '2024-07-06 16:51:22'),
(7, 5, 3, 'Roti Tawar', 10000, 5, 5, 'sukaaaaaaaaaaaaaaaa', '2024-07-06 17:07:41'),
(8, 6, 8, 'Kipas Angin', 100000, 1, 5, 'anginnya kencang sampai saya mau terbang. bagus sekali!!!!', '2024-07-06 18:27:21'),
(9, 6, 11, 'Baskom', 10000, 2, 5, 'baskomnya cantik, saya suka. terima kasih!!!', '2024-07-06 18:27:21'),
(10, 7, 6, 'Nastar', 25000, 3, 4, 'enak bgtttt', '2024-07-08 08:49:27'),
(11, 8, 9, 'Ember Plastik', 15000, 5, 5, 'anti pecah mantap!', '2024-07-12 17:22:19'),
(12, 9, 11, 'Baskom', 10000, 10, 3, 'BAGGOESSSSSSS', '2024-07-12 17:31:54'),
(13, 10, 15, 'Tas', 75000, 1, 5, 'Tas nya bagus', '2024-07-20 18:10:56'),
(14, 10, 16, 'Pisau Set', 125000, 1, 4, 'Pisaunya Tajam', '2024-07-20 18:10:56'),
(15, 10, 17, 'Basreng', 45000, 1, 4, 'Basrengnya enak!!', '2024-07-20 18:10:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
