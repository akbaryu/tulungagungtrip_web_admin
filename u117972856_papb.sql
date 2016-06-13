
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2015 at 12:15 PM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u117972856_papb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_info`
--

CREATE TABLE IF NOT EXISTS `tb_info` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tb_info`
--

INSERT INTO `tb_info` (`id_info`, `nama`, `info`, `tanggal`) VALUES
(5, 'Kelompok  II PAPB ', 'Yudha Akbar Praman\nAhmad wildan mukafi\nDwi Ari Surya Ningrum\nSilvia Ikmalia Fernanda\nAkhmad Rizqi Azhari\n', '2015-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE IF NOT EXISTS `tb_pengguna` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `level` enum('kades','penduduk','operator') NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`user_id`, `username`, `password`, `nama_pengguna`, `level`) VALUES
(1, 'wildan', 'wildan', 'Admin Super', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisata`
--

CREATE TABLE IF NOT EXISTS `tb_wisata` (
  `id_wisata` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kategori` enum('alam','sejarah','budaya','keluarga') DEFAULT NULL,
  `fasilitas` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `langitude` float NOT NULL,
  `latitude` float NOT NULL,
  PRIMARY KEY (`id_wisata`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `tb_wisata`
--

INSERT INTO `tb_wisata` (`id_wisata`, `nama`, `alamat`, `kategori`, `fasilitas`, `keterangan`, `image`, `image2`, `image3`, `image4`, `image5`, `langitude`, `latitude`) VALUES
(3, 'Pantai Popoh', 'Kecamatan Besuki, Tulungagung', 'alam', '', 'Pantai Popoh merupakan salah satu pantai favorit di Kabupaten Tulungagung. Objek wisata ini berada di selatan kota berjarak sekitar 30 km yakni tepatnya di Kecamatan Besuki. Letaknya yang berada di kawasan teluk, membuat ombak di tepi pantai ini tidak begitu besar. Pemandangan alam pantainya sangat eksotis dimana akan terdapat tebing-tebing karang yang terjal di sekitar pantai. Selain bisa bersantai atau bermain air, Anda juga bisa menyewa perahu nelayan untuk berkeliling di sekitar kawasan teluk. Tempat wisata di Tulungagung ini merupakan salah satu tempat yang menyenangkan untuk menghabiskan waktu liburan bersama keluarga tercinta.', 'pantaipopoh.jpg', ' ', ' ', ' ', ' ', 111.801, -8.262),
(4, 'Air Terjun Laweyan', 'Dusun Turi, Desa Geger, kecamatan Sendang', 'alam', '--', 'Air terjun ini cukup populer di Tulungagung. Meskipun memiliki tinggi tidak lebih dari 100 meter, tapi keindahan air terjun ini sangat luar biasa. Apalagi perjalanan untuk mencapai air terjun ini memacu adrenalin. Anda akan melalui areal perbukitan dengan menyeberangi 9 sungai. Oleh karena itu Anda harus mempersiapkan kemampuan fisik dan jangan lupa membawa bekal.Lokasi Air Terjun Lawean berjarak sekitar 25 kilometer di sisi barat daya kota Tulungagung. Obyek wisata ini sangat tepat untuk dikunjungi bagi Anda yang suka tantangan dan gemar berpetualang.', 'airterjunlawean1.jpg', 'airterjunlawean2.jpg', '', '', '', 111.819, -7.92209),
(5, 'Pantai Coro', 'Besole, Kecamatan Besuki, Jawa Timur', 'alam', '', 'Pantai Coro juga merupakan tempat wisata di Tulungagung yang menarik untuk dikunjungi. Pantai berpasir putih ini berlokasi di Kecamatan Besuki. Keunggulan pantai ini adalah letaknya yang tidak begitu jauh dari pusat kabupaten. Memang pantai ini tak terlalu luas tetapi keindahan pantainya tidak kalah menariknya dengan pantai lainnya di Jawa Timur.Untuk menuju ke lokasi Pantai Coro Anda bisa menuju ke Pantai Popoh kemudian menuju ke arah Reco Sewu, setelah parkir kendaraan di Reco Sewu, dilanjutkan denagn berjalan kaki beberapa kilometer.', 'pantaicoro.jpg', '', '', '', '', 111.816, -8.26885),
(6, 'Pantai Sine', 'Desa Kalibatur, Kec. Kalidawir, Kabupaten Tulungagung', 'alam', '--', 'Berjarak sekitar 35 kilometer di sebelah selatan Kota Tulungagung, Pantai Sine merupakan sebuah pantai berpasir putih kecoklatan dengan ombak yang terbilang cukup besar. Objek wisata di Tulungagung ini berlokasi di Desa Kalibatur, Kec. Kalidawir, Kabupaten Tulungagung. Selain bisa bermain air dan menikmati pesona alam pantainya, Anda juga bisa menyaksikan aktivitas nelayan setempat yang akan berangkat ke laut. Pantai Sine Tulungagung ini juga dikenal dengan nama Pantai Matahari Terbit.', 'pantaisine.jpg', '', '', '', '', 111.931, -8.28496),
(7, 'Pantai Molang', 'Pucanglaban, Jawa Timur', 'alam', '', 'Pantai indah di Tulungagung yang satu ini berada di Kecamatan Pucanglaban. Lokasinya cukup strategis karena berada di perbatasan antara Blitar dan Tulungagung. Deburan ombaknya yang menawan ditambah dengan warna pasir putih menggoda akan membuat Anda betah berlama-lama di sini. Akses jalan menuju ke pantai Molang ini cukup mudah. Sesampainya di Pucanglaban, Anda akan banyak menjumpai papan petunjuk yang mengantar Anda ke Pantai Molang.', 'pantaimolang.jpg', '', '', '', '', 112.026, -8.31208),
(8, 'Pantai Lumbung', 'Pucang Laban, Jawa Timur 66284', 'alam', '', 'Apakah Anda suka pantai yang memiliki banyak karang? Jika iya, Pantai Lumbung bisa menjadi pilihan tujuan wisata Anda. Keunggulan pantai di Tulungagung ini adalah ada karang besar di bibir pantai.\r\n\r\nPantai Lumbung berlokasi di Desa Pucanglaban, Kec. Pucanglaban, Tulungagung. Lokasi pantai ini tidak jauh dari Pantai Molang, sehingga untuk menuju ke Pantai ini anda cukup mengikuti jalur ke Pantai Molang kemudian setibanya di kawasan pabrik atau tambak udang, Anda bisa bertanya ke warga sekitar untuk jalur ke Pantai Lumbung.', 'pantailumbung.jpg', '', '', '', '', 112.018, -8.304),
(9, 'Pantai Pathok Gebang', 'Desa Jengglungharjo, Kec Tanggunggunung Tulungagung Jawa Timur', 'alam', '', 'Dari beberapa pilihan tempat wisata yang menarik untuk dikunjungi, Pantai Pathok Gebang dapat menjadi pilihan untuk mengisi waktu liburan Anda. Tetapi pantai ini khusus bagi pencinta petualangan. Hal ini karena untuk menuju ke lokasi Pantai Pathok Gebang ini lumayan sulit karena pengunjung harus menaiki bukit dan menyusuri hutan yang masih alami sekitar 30 - 40 menit dengan cara berjalan kaki. Pantai ini mempunyai ciri khas berupa tebing atau karang yang cukup besar dengan deburan airnya yang cukup tinggi bila diterjang ombak.', 'pathukgebang.jpg', '', '', '', '', 111.933, -8.30687),
(10, 'Pantai Klatak', 'Waru Doyong, Klatak, Jawa Timur', 'alam', '--', 'Nah, bagi Anda yang lebih senang dengan pantai yang memiliki pasir gelap, Pantai Klatak bisa menjadi pilihan bagus. Obyek wisata pantai di Tulungagung ini beralamat di Desa Keboireng, Kecamatan Besuki. Di pantai ini, Anda akan menyaksikan batu-batu kali yang menghiasi sekeliling pantai Klatak.\r\n\r\nBila Anda berangkat dari Kota Tulungagung menggunakan kendaraan bermotor waktu tempuh perjalanan sekitar 1 setengah jam untuk bisa sampai di lokasi pantai ini. Kegiatan favorit di kawasan wisata pantai ini adalah berenang, memancing dan bersantai.', 'pantaiklatak.jpg', '', '', '', '', 111.768, -8.26984),
(11, 'Pantai Ngalur dan Sanggar', 'Dusun Ngelo, Desa Jengglungharjo, Kec. Tanggunggunung, Tulungagung.', 'budaya', '--', 'Pantai Ngalur dan Pantai Sanggar adalah 2 pantai yang lokasinya berdekatan hanya dipisahkan oleh sebuah bukit. Pantai ini berada di Dusun Ngelo, Desa Jengglungharjo, Kec. Tanggunggunung, Tulungagung.', 'pantaingalurdansanggar.jpg', '', '', '', '', 111.911, -8.29855),
(13, 'Candi Dadi', 'Wajak Kidul, Boyolangu, Tulungagung', 'sejarah', '', 'Candi dadi  merupakan salah salah satu objek wisata budaya yang bisa Anda temukan di daerah Tulungagung. Di candi tersebut, Anda bisa melihat sisa-sisa bangunan kuno sehingga sangat tepat bagi yang suka sejarah. Candi dadi adalah candi tunggal yang bangunannya dibuat dari bahan batuan andesit yang terdiri dari batur dan kaki candi.', 'candidadi1.jpg', 'candidadi2.jpg', '', '', '', 111.922, -8.12097),
(14, 'Candi Ampel', 'Dusun Ngampel, Desa Joho, Kecamatan Kalidawir, Tulungagung.', 'sejarah', '', 'Candi ini terletak di dataran rendah di sekitar kaki perbukitan Walikukun. Sebagian besar candi yang berada di lokasi lain di dataran rendah yang sama berlatar belakang sejarah dari masa Majapahit. Berdasarkan lokasi dan rancang bangunnya, kemungkinan besar Candi ampel ini juga dibangun pada waktu yang sama yang merupakan peninggalan Kerajaan Majapahit.', 'candiampel1.jpg', 'candiampel2.jpg', '', '', '', 111.948, -8.18079),
(36, 'Candi Gayatri (Boyolangu)', 'Desa Boyolangu, Kecamatan Boyolangu.', 'sejarah', '', 'Candi Gayatri adalah reruntuhan candi Hindu yang berada di Desa Boyolangu, Kecamatan Boyolangu, Kabupaten Tulungagung, Jawa Timur. Pada bagian tangga batu candi ini terdapat tulisan angka 1289 Ç (1367 M) dan 1291 Çaka (1369 M), yang kemungkinan dipakai untuk menandai tahun pembuatan dari Candi Gayatri, yaitu pada zaman kerajaan Majapahit.\r\n\r\nDi dalam kawasan candi ini terdapat satu candi induk dan dua candi perwara di sebelah selatan dan utaranya. Candi induk berukuran 11,40 m x 11,40 m, mempunyai arca Gayatri (arca wanita dari ratu Sri Rajapatni, nenek dari raja Hayam Wuruk)) dengan panjang 1,1 m, lebar 1 m dan tinggi 1,2 m. Pada candi perwara di sebelah selatan terdapat arca Nandi, arca Dwarapala dan arca Mahisasura Nandini. Pada candi perwara di sebelah utara terdapat dua patung yoni yang disangga oleh kepala naga, arca Ganesa dan sebuah patung Jaladwara. Suasana di candi ini sangat sepi walaupun terletak di tengah desa. Halamannya ditutupi pohon-pohon. Ada tiga bangunan dan sebuah patung yang mungkin berupa bodhisavatta terletak di atas bangunan utama. Keadaan candi ini besar tetapi agak runtuh. Terdapat arca-arca Siwa di atas bangunan kecil dan di halaman.', 'candigayatri1.jpg', 'candigayatri2.jpg', '', '', '', 111.89, -8.12125),
(37, 'Candi Penampian', 'Desa Geger, Kecamatan Sendang', 'sejarah', '', 'Candi Penampihan adalah candi Hindu kuno peninggalan kerajaan Mataram kuno yang merupakan candi Hindu kuno yang dibangun pada tahun Saka 820 atau 898 Masehi. Arti Penampihan itu sendiri konon berasal dari Bahasa Jawa yang berarti antara penolakan dan penerimaan yang bersyarat. Candi Penampihan merupakan candi pemujaan dengan tiga tahapan (teras) yang dipersembahkan untuk memuja Dewa Siwa, dimana konon peresmian candi ini dengan mengadakan pagelaran Wayang (ringgit). Selanjutnya era demi era pergolakan perebutan kekuasaan dan politik di tanah jawa berganti mulai dari kerajaan Mataram Kuno, Kediri, Singosari, hingga Majapahit sekitar abad 9-14 M, candi ini terus digunakan untuk bertemu dan memuja Tuhan, Sang Hyang Wenang. Di dalam kompleks Candi terdapat beberapa Arca yaitu arca Siwa dan Dwarapala, tetapi karena ulah Manusia yang tidak mencintai dan menghargai Heritage dan legacy dari nenek moyang beberapa arca telah hilang dan rusak. Untuk mengamankan beberapa arca yang tersisa yaitu arca siwa sekarang diletakan di museum situs Purbakala Majapahit Trowulan Jawa timur. Selain Arca terdapat sebuah prasasti kuno yaitu Prasasti Tinulat tertulis dengan menggunakan huruf Pallawa dengan stempel berbentuk lingkaran di bagian atas prasasti. Berdasarkan Penuturan Bu Winarti umur 44 Tahun, juru kunci Candi Penampihan, prasasti itu berkisah tentang Nama-nama raja Balitung, serta seorang yang bernama Mahesa lalatan, siapa dia? Sejarah lisan maupun artefak belum bisa menguaknya. Serta seorang putri yang konon bernama Putri Kilisuci dari Kerajaan Kediri. Selain menyebutkan nama, prasasti itu juga memberikan informasi tentang Catur Asrama, yaitu sistem sosial masyarakat pada zaman itu dengan pengklasifikasian masyarakat (stratifikasi) berdasarkan kasta dalam agama Hindu yaitu Brahmana, Satria, Vaisya dan Sudra. Masih di kompleks candi Penampihan terdapat 2 kolam kecil yang bernama Samudera Mantana (pemutaran air samudera), di mana menurut pengamatan empiris selama berpuluh-puluh oleh Bu Winarti, 2 kolam tersebut merupakan indikator keadaan air di Pulau Jawa. Kolam yang sebelah utara merupakan indikator keadaan air di Pulau Jawa bagian utara dan Kolam sebelah selatan merupakan indikator keadaan air di Pulau Jawa bagian selatan. Berdasarkan penuturan Bu Winarti, apabila sumber air di kedua kolam tersebut kering berarti keadaan air dibawah menderita kekeringan, sebaliknya bila kedua atau salah satu kolam tersebut penuh air berarti keadaan air di bawah sedang banjir.\r\n\r\nJalan menuju lokasi saat ini sudah beraspal dan rabat beton, sehingga dapat ditempuh dengan kesana membawa sepeda motor langsung ke area lokasi candi. Area sekitar candi penampihan sejak jaman kolonial Belanda terkenal sebagai penghasil teh. Hal ini terbukti dari sisa-sisa puing bangunan peninggalan Belanda yang dulu menjadi saksi. Namun semenjak awal tahun 2000an karena harga teh yang tak stabil dan terus merugi perusahaan yang pengelolaannya dibawah Puskopad tersebut mengalami kebangkrutan. Lahan-lahan yang dahulu menjadi kebun teh kini dialih fungsikan untuk menanam tanaman sayur-mayur. Saat ini masih disisakan lahan sekitar 1 hektar di sekitar situs Candi. Candi Penampihan merupakan candi Hindu, memiliki 3 teras dengan posisi Candi utama terletak di bagian paling atas. Bentuknya seperti timbunan padi sebagai perlambang kemakmuran. Candi lain bentuknya seperti kura-kura yang dikelilingi arca naga. Mengenai candi yang susunannya berbentuk Kura-kura melambangkan perwujudan dewa-dewa Wisnu. Awalnya di atas candi ada arca Bima namun hilang. Teras kedua untuk tantri. Sedangkan di teras ketiga terletak prasasti. Prasasti tersebut bernama prasasti Tinulat. Prasasti ini ditulis dengan menggunakan bahasa Jawa Kuno dengan cerita yang tertulis di prasasti, candi ini diperkirakan dibangun sekitar abad IX hingga X pada era kerajaan Mataram Hindu semasa era pemerintahan Dyah Balitung. Diperkirakan raja putri tersebut adalah Dewi Kilisuci, Seorang raja putri dari kediri tertulis di Prasasti ada di bagian bawah. Di candi ini dulunya juga ada arca Dwarapala namun arca tersebut hilang di tahun 2000an. Di sebelah utara ada relief dengan menggunakan gambar 3 ekor Gajah. Ada gambar hewan-hewan yang hidup di daerah ini seperti kera, burung, ular, ayam. Candi Penampihan dulunya menjadi tempat pemujaan mulai era Mataram Hindu, Singosari, Kediri hingga Majapahit. Di prasasti tersebut tercatat juga nama Wilis yang kemudian dikenal menjadi nama gunung ini. Wilis sendiri artinya hijau, subur. Konon legendanya Gunung Wilis dulunya merupakan gunung yang aktif. Karena terjadi Samudra Mertana atau pemutaran Air Samudera akhirnya terjadi perpindahan dan memunculkan banyak sumber air yang meredam aktifitas gunung sehingga sekarang Wilis tak lagi aktif. Mengenai asal-usul nama candi penampihan berawal dari kisah seorang pembesar dari Ponorogo yang jatuh hati dengan putri dari Kediri yaitu dewi kilisuci. Ternyata lamarannya ditolak kalaupun diterima ada begitu banyak permintaan. Dari Kediri pulang kemudian mampir di daerah ini. Menggunakan candi ini sebagai tempat pemujaan dan menyepi. “ Penampihan artinya penolakan. Bisa juga Tampi menerima namun dengan syarat”.', 'candipenampihan1.jpg', 'candipenampihan2.jpg', '', '', '', 111.815, -7.94096),
(33, 'Candi Sanggrahan', 'Desa Sanggrahan, Kecamatan Boyolangu', 'sejarah', '--', 'Terletak di Desa Sanggrahan, Kecamatan Boyolangu candi ini disebut Candi Cungkup orang setempat. Kaki candi ini luas sekali, tingginya dua meter dan di atas ada ruang yang ukurannya sama dengan seperempat lapangan sepak bola. Ada batu di sebelah tangga yang dahulu merupakan gapura. Bangunan utama agak runtuh tetapi masih mengesankan. Candi ini memiliki papan-papan tetapi tidak ada gambaran sama sekali. Menurut juru kunci, yang tinggal di sebelah candi, dahulu sering ada orang yang datang untuk bersembahyang tetapi sekarang jarang sekali. Orang dari desa di sekitarnya kadang-kadang mengadakan selamatan di candi tetapi hanya kalau ada hajat. Mereka duduk di depan bangunan utama dan menggunakan campuran bahasa Arab dam Jawa.bangunan Candi tersebut terdiri dari sebuah bangunan induk dan dua buah sisa bangunan kecil lainnya. Bangunan induk berukuran panjang 12,60 m, ukuran lebar 9,05 m dan ukuran tingginya  5,86 m. Serta terdapat Arca Budha sebanyak 5 buah yang masing-masing mempunyai posisi Mudra yang berbeda. Diriwayatkan dalam Kitab Negarakertagama sebagai tempat pendharmaan Bhre Paguhan dari masa Kerajaan Majapahit. Sedangkan dalam cerita rakyat Sina Wijoyo Suyono, Candi Sanggrahan dikenal sebagai tempat yang dipergunakan untuk beristirahatnya rombongan pembawa jenazah Gayatri (Rajapadmi) sebelum didharmakan di Candi Gayatri. Dari segi arsitektur, Candi Sanggrahan merupakan komplek percandian yang dibangun dari kombinasi batu bata dan batu andesit. Komponen batu-bata secara umum mendominasi komplek percandian ini, yakni meliputi bagian selasar, gerbang, dan candi-candi perwara. Sedangkan batuan andesit hanya digunakan untuk menyusun bangunan utama. Pada bagian kaki candi terdapat relief yang diperkirakan merupakan bagian dari cerita Tantri Kamandaka. Relief tersebut menceritakan tentang seekor harimau yang tertipu oleh seekor kambing. Relief ini sering dijumpai pada candi-candi yang bercorak Budha, sehingga diperkirakan latar keagamaan Candi Sanggrahan adalah Budha. Candi berbentuk bujursangkar dan terdiri dari bangunan kaki, tubuh dan atap. Candi ini peninggalan Kerajaan Majapahit, dibangun sekitar tahun 1350, dulunya merupakan candi tempat penyimpanan abu kerabat raja Majapahit Bagian kaki candi sangat luas, tinggi dua meter, terdapat dinding relief harimau. Di bagian tangga ada reruntuhan batu bekas gapura. Komplek Percandian Candi Sanggrahan sebenarnya merupakan sebuah komplek percandian. Sayangnya, seiring berjalannya waktu, dua candi perwara yang berada di sebelah timur candi induk sudah runtuh dan tak bersisa. Sekarang, hanya candi induknya saja yang masih tegak berdiri. Candi induk Sanggrahan menghadap ke barat dengan panjang 12.60m lebar 9.05 m tinggi 5.86 cm. Bagian atap candi telah runtuh dan yang tersisa adalah bagian kaki candi dan sedikit badan candi. Candi Sanggrahan sendiri merupakan candi yang unik karena disusun atas dua batu yang berbeda. Bagian dalam candi disusun dari batu bata, sedangkan bagian luarnya terbuat dari batu andesit. Hal demikian juga dapat kita temui pada Candi Simping, Candi Surowono dan Candi Induk Penataran. Candi Sanggrahan juga minim relief maupun hiasan. Hanya terdapat relief singa yang berada dalam bidang persegi dan mengelilingi kaki candi. Selebihnya hanya bidang persegi kosong yang seharusnya berisi panil relief. Hal yang sama juga bisa dilihat di Candi Rimbi, bahkan kemungkinan besar bentuk Candi Sanggrahan tidak akan berbeda dengan Candi Rimbi jika kedua candi ini sama – sama dipugar. Hal istimewa dari Candi Sanggrahan adalah adanya pagar penahan dari batu bata yang masih utuh serta memiliki tinggi dua meter. Pagar penahan ini dihiasi oleh ornamen belah ketupat dalam posisi tidur. Gerbang masuknya sendiri berada di sebelah barat dan harus menaiki tangga selebar setengah meter. Gapuranya sendiri sudah runtuh dan hanya menyisakan bagian kakinya saja. Candi Sanggrahan memiliki taman yang terawat, indah serta bebas dari sampah. Tak ayal, Candi Sanggrahan pernah mendapat penghargaan sebagai Candi Terbersih se-Jawa Timur dan menjadikannya sangat layak untuk dikunjungi.Membandingkan Candi Sanggrahan dengan candi-candi besar di Jawa Timur macam Candi Penataran jelas kalah populer. Namun untuk ukuran Tulungagung candi ini sudah relatif dikenal oleh masyarakat. Karena candi ini adalah yang paling besar ukurannya dibandingkan dengan peninggalan-peninggalan lain yang bertebaran di Tulungagung. Bahan candi terbuat dari batu andesit dan batu bata. Candi Sanggrahan merupakan bangunan yang berundak-undak yang terdiri atas batuan (lapisan paling bawah) yang tersusun atas batu bata, Candi Sanggrahan rnenghadap ke barat, karena di bagian itu ada tangga naik ke bilik candi. Namun biliknya sekarang sudah tiada. Tidak beda dengan susunan candi pada umumnya, candi Sanggrahan juga dibagi atas bagian kaki, tubuh dan atap. Tetapi atap tersebut sekarang telah runtuh sama sekali. Pada kaki candi terdapat panil-panil dalam ukuran sama mengelilingi kaki candi. Antara kaki dan tubuh candi terdapat selasar sempit (semacam lantai yang sengaja dibuat untuk orang berjalan rnengelilingi candi). Bagian tubuh candi masih dalam keadaan baik, hanya bagian sisi sebelah barat yang sudah  rusak. Sehingga batu isian (batu bata yang ada di bagian dalam untuk penguat candi) sebagian kelihatan. Pada bagian tubuh candi terdapat bidang panil yang kosong tanpa relief. Pada Candi Sanggrahan tidak diketemukan catatan sejarah atau pun prasasti yang menunjukkan kapan dan oleh raja siapa candi tersebut dibuat, tetapi mengenai sifat agamanya, Candi Sanggrahan dapat kita ketahui dari beberapa arca Budha di sekitar candi, Sehingga para ahli purbakala yang pernah meneliti candi itu berkesimpulan bahwa candi Sanggrahan bersifat agama Budha. Pada Tahun 2015 Candi Sanggrahan direhab oleh Balai Purbakala Trowulan. Pada hari libur Candi Sanggrahan sering dikunjungi murid-murid SD dan TK untuk sekedar melihat-lihat. Pada hari raya Waisak di candi itu kadang-kadang juga sebagai tempat upacara ritual. Candi Sanggrahan meski tidak begitu terkenal tetapi merupakan salah satu bukti tingginya peradaban budaya nenek moyang masa lalu. Oleh karena itu diperlukan kesadaran untuk ikut menjaga warisan nenek moyang tersebut.', ' candisanggrahan1.jpg', ' candisanggrahan2.jpg', ' ', ' ', ' ', 111.917, -8.13658),
(17, 'Candi Mirigambar', 'Desa Mirigambar, Kecamatan Sumbergempol', 'sejarah', '', 'Terletak di Desa Mirigambar, Kecamatan Sumbergempol. Waulaupun agak sulit dicapai candi ini agak besar. Terletak di sebelah lapangan sepak bola dengan suasana yang tenang dan sepi. Keadaan bangunan ini agak runtuh dan dindingnya kemiringan. Masih ada relief-relief yang berkualitas tinggi. Candi Mirigambar terbuat dari  Bahan dari Batu Bata, tampak pada Batur baru persegi, beserta sebuah undakan yang dipenuhi ornamen. Diperkirakan dibangun pada akhir Abad ke XIII hingga akhir Abad XIV pada jaman kerajaan Majapahit. Kondisi candi yang tersusun dari batu bata ini telah runtuh tinggal menyisakan bagian kaki dan gapura.  Meskipun demikian keindahan seni pahat pada candi ini masih dapat dinikmati. Keindahan tersebut tercermin pada sisa-sisa reliefnya yang terpahat halus di permukaan batu bata. Relief tersebut mengisahkan tentang legenda Angling Dharma, sehingga Candi Mirigambar sering juga disebut dengan sebutan Candi Angling Dharma. Pembangunan candi Mirigambar tergolong cukup lama, yakni sejak akhir pemerintahan Kertanegara (Singosari) hingga masa pemerintahan Hayam Wuruk (Majapahit). Banyaknya tinggalan-tinggalan lain di sekitar Candi Mirigambar, mengindikasikan bahwa dahulunya lokasi ini merupakan sebuah komplek percandian yang sangat luas. Sehingga tidak mengherankan jika pembangunannya memakan waktu yang cukup lama. Tinggalan-tinggalan lain yang berada di sekitar Candi Mirigambar antara lain Bekas Pemandian Mliwis Putih, Candi Tuban, dan reruntuhan candi lain 300 m di timur Candi Mirigambar.', 'candimirigambar1.jpg', 'candimirigambar2.jpg', '', '', '', 111.974, -8.13614),
(1, 'Gunung Budheg', 'Tanggung, Campur Darat, Tulungagung Regency', 'alam', '', 'Tulungagung adalah nama salah satu kabupaten yang masuk dalam wilayah Provinsi Jawa Timur. Kabupaten ini terdiri dari wilayah dataran rendah sampai dengan pegunungan. Oleh karena itu selain punya pantai-pantai yang indah, Tulungagung juga punya pesona pemandangan pegunungan yang juga tidak kalah indah. Salah satunya adalah pemandangan yang bisa kita dapatkan dari puncak Gunung Budheg. Gunung Budheg atau biasa dikenal dengan nama Gunung Cikrak ini adalah salah satu gunung atau bukit yang mempunyai ketinggian sekitar 585 mdpl dan terletak di Desa Boyolangu, Kecamatan Boyolangu, Kabupaten Tulungagung.\r\nGunung Budheg bisa menjadi lokasi atau tempat untuk latihan bagi para pendaki pemula untuk melakukan pemanasan. Jalur yang harus dilalui untuk sampai ke puncak Gunung Budheg adalah jalanan yang menanjak melewati semak berduri diselingi dengan merayap dipinggiran tebing yang cukup curam. Namun perjalanan melelahkan tersebut akan terbayarkan dengan pemandangan indah yang bisa kita dapatkan dari puncak Gunung Budheg seperti sunrise pada pagi hari maupun pemandangan hijau pepohonan yang ada disekitar Gunung Budheg. Selain itu jika kita menginap di puncak Gunung Budheg kita bisa melihat pemandangan kerlap kerlip lampu pada malam hari.', 'GunungBudheg1.jpg', 'GunungBudheg2.jpg', 'GunungBudheg3.jpg', '', '', 111.907, -8.13824),
(38, 'Srabah Water Park', '8 km arah barat kota tulungagung', 'keluarga', '--', 'Srabah Water Park, taman wisata dan waterpark srabah memang sudah tak asing lagi, tempat ini merupakan tempat wisata favorit masyarakat Tulungagung. Berada di Bukit gunung dengan panorama yang indah, tepatnya 8 km arah barat kota tulungagung.Srabah telah memikat banyak pengunjung di weekend, dan tentunya tarif di srabah sangat terjangkau untuk kantong uang Tulungagung. Suasananya juga tak kalah indah dengan waterpark yang ada di Kediri maupun Surabaya. Srabah ini mempunyai jakur yang searah dengan tempat wisata lain seperti waduk wonorejo. Berbagai fasilitas yang telah disediakan disini seperti waterpark lengkap dengan slide seluncur, kolam arus, bak tumpah, cafe dan food court. Serta taman wisata indah dan asri lengkap dengan arena bermain anak dan danau buatan dengan perahu dan sepeda airnya. Srabah juga mempunyai fasilatas resort atau hotel yang mempunyai setting pemandangan gunung dengan sungai berbatuan di sebelah utara Srabah. Bagi anda yang ingin berwisata di Tulungagung dengan keluarga anda yang mayoritas banyak anak kecil, inilah tempat yang cocok untuk anda kunjungi. Tentunya yang dinamakan waterpark tidak mempunyai kedalaman kolam yang derastis, melainkan kolam-kolam disini sangat dangkal dan aman untuk anak-anak kecil yang ingin menikmati wisata air.', 'srabahwaterpark1.jpg', '', '', '', '', 111.856, -8.06157),
(39, 'Reog Kendang\r\n', 'Alun Alun Tulungagung', 'budaya', '--', ' Reog Tulungagung merupakan gubahan tari rakyat, menggambarkan arak-arakan prajurit Kedhirilaya tatkala mengiringi pengantin “Ratu Kilisuci“ ke Gunung Kelud, untuk menyaksikan dari dekat hasil pekerjaan Jathasura, sudahkah memenuhi persyaratan pasang-girinya atau belum. Dalam gubahan Tari Reog ini barisan prajurit yang berarak diwakili oleh enam orang penari.\r\n\r\n       Yang ingin dikisahkan dalam tarian tersebut ialah, betapa sulit perjalanan yang harus mereka tempuh, betapa berat beban perbekalan yang mereka bawa, sampai terbungkuk-bungkuk, terseok-seok, menuruni lembah-lembah yang curam, menaiki gunung-gunung, bagaimana mereka mengelilingi kawah seraya melihat melongok-longok ke dalam, kepanikan mereka, ketika “Sang Puteri“ terjatuh masuk kawah, disusul kemudian dengan pelemparan batu dan tanah yang mengurug kawah tersebut, sehingga Jathasura yang terjun menolong “Sang Puteri“ tewas terkubur dalam kawah, akhirnya kegembiraan oleh kemenangan yang mereka capai.\r\n        Semua adegan itu mereka lakukan melalui simbol-simbol gerak tari yang ekspresif mempesona, yang banyak menggunakan langkah-langkah kaki yang serempak dalam berbagai variasi, gerakan-gerakan lambung badan, pundak, leher dan kepala, disertai mimik yang serius, sedang kedua tangannya sibuk mengerjakan dhogdhog atau tamtam yang mereka gendong dengan mengikatnya dengan sampur yang menyilang melalui pundak kanan. Tangan kiri menahan dhogdhog, tangan kanannya memukul-mukul dhogdhog tersebut membuat irama yang dikehendaki, meningkahi gerak tari dalam tempo kadang-kadang cepat, kadang-kadang lambat. Demikian kaya simbol-simbol yang mereka ungkapkan lewat tari mereka yang penuh dengan ragam variasi, dalam iringan gamelan yang monoton magis, dengan lengkingan selompretnya yang membawakan melodi terus-menerus tanpa putus, benar-benar memukau penonton, seakan-akan berada di bawah hipnose.', 'reogkendang1.jpg', '', '', '', '', 111.898, -8.06473),
(30, 'JambooLand', 'Kedungwaru, Tulungagung.', 'keluarga', 'Toilet, Food Court, Musholla, Loker,dll.\r\nlokasi yang strategis dan mudah dijangkau, Jambooland mematok harga tiket yang tidak memberatkan masyarakat. Hal ini ditujukan supaya semua kalangan bisa menikmati wisata air ini, khususnya masyarakat Tulungagung dan sekitarnya.', 'Waterpark adalah salah satu wahana wisata yang sangat digemari berbagai kalangan, terutama untuk sarana rekreasi keluarga.\r\nJambooland di design ulang dan rancang sedemikian rupa sehingga diharapkan bisa menjadi salah satu wisata air terbaik di Tulungagung – Jawa Timur dengan menawarkan berbagai macam wahana permainan seperti: body slide/seluncur, kolam bak tumpah, kolam balita, kolam anak-anak.', 'JambooLand1.jpg', 'JambooLand2.jpg', '', '', '', 111.93, -8.08086),
(31, 'Bendungan Wonorejo', 'Desa Wonorejo, Kecamatan Pagerwojo, Kabupaten Tulungagung', 'alam', '--', 'Bendungan Wonorejo adalah bendungan yang terletak di Desa Wonorejo, Kecamatan Pagerwojo, Kabupaten Tulungagung, Provinsi Jawa Timur, Indonesia. Letak dari pusat kota diperkirakan sejauh 12 kilometer. Dengan kapasitas sekitar 122 juta meter kubik, Bendungan Wonorejo menjadi salah satu bendungan terbesar diIndonesia, bahkan Asia Tenggara.\r\n       Bendungan Wonorejo diresmikan pada tahun 2001 oleh Wakil Presiden Indonesia pada tahun tersebut, yaitu Megawati Soekarno Putri, setelah dibangun selama hampir 9 tahun sejak 1992. Bendungan Wonorejo memiliki fungsi penting sebagai salah satu pusat tenaga listrik dan sumber air minum di Provinsi Jawa Timur. Bendungan ini juga berfungsi sebagai sarana untuk pencegah banjir di Tulungagung yang dulu sering melanda kota tersebut, bersama Bendungan Neyama di Kecamatan Besuki.\r\nKini, Bendungan Wonorejo juga berfungsi sebagai salah satu objek wisata andalan Kabupaten selain Pantai POpoh. Beberapa sarana akomodasi telah dibangun di sekitar Bendungan Wonorejo, salah satu yang besar adalah Swa-Loh Resort.', 'BendunganWonorejo1.jpg', 'BendunganWonorejo2.jpg', 'BendunganWonorejo3.jpg', '', '', 111.796, -8.01894),
(40, 'Jaranan Sentherewe', 'Alun Alun Tulungagung', 'budaya', '--', 'Salah satu kesenian budaya yang sangat terkenal di Kabupaten Tulungagung yaitu Jaranan Sentherewe. Seni jaranan yang satu ini adalah penggabungan seni jaranan Jawa dengan gerak yang agresif, penuh energi dan dinamis. Ada beberapa macam jaranan antara lain : jaranan campursari, jaranan senterewe, jaranan pegon, jaranan jawa.Hampir setiap desa di Kabupaten Tulungagung memiliki perkumpulan Jaranan sentherewe,salah satunya adalah Jaranan”PUTRA BHIRAWA”dari desa Ngrance,Kec.Pakel,Tulungagung.', 'jaranansenterewe.jpg', '', '', '', '', 111.898, -8.06473);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;