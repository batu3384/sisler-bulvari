-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 11 Ara 2024, 10:03:04
-- Sunucu sürümü: 8.3.0
-- PHP Sürümü: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sisler_cafe`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calisanlar`
--

DROP TABLE IF EXISTS `calisanlar`;
CREATE TABLE IF NOT EXISTS `calisanlar` (
  `calisan_id` int NOT NULL,
  `calisan_ad` varchar(100) COLLATE utf8mb3_turkish_ci NOT NULL,
  `calisan_soyad` varchar(100) COLLATE utf8mb3_turkish_ci NOT NULL,
  `calisan_pozisyon` varchar(100) COLLATE utf8mb3_turkish_ci NOT NULL,
  `baslama_tarih` date NOT NULL,
  `saatlik_odeme` int NOT NULL,
  PRIMARY KEY (`calisan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `calisanlar`
--

INSERT INTO `calisanlar` (`calisan_id`, `calisan_ad`, `calisan_soyad`, `calisan_pozisyon`, `baslama_tarih`, `saatlik_odeme`) VALUES
(1, 'ahmet', 'toker', 'fulltime', '0000-00-00', 100),
(2, 'ekrem', 'özdağ', 'parttime', '0000-00-00', 80),
(3, 'yusuf', 'yılmaz', 'parttime', '0000-00-00', 70),
(4, 'mehmet', 'korkmaz', 'fulltime', '0000-00-00', 110),
(5, 'fatih', 'kaya', 'parttime', '0000-00-00', 60),
(6, 'asda', 'dasdad', 'sadad', '2024-12-10', 120);

--
-- Tetikleyiciler `calisanlar`
--
DROP TRIGGER IF EXISTS `calisan_ise_baslama`;
DELIMITER $$
CREATE TRIGGER `calisan_ise_baslama` BEFORE INSERT ON `calisanlar` FOR EACH ROW SET new.baslama_tarih=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calisan_gunluk_ucret`
--

DROP TABLE IF EXISTS `calisan_gunluk_ucret`;
CREATE TABLE IF NOT EXISTS `calisan_gunluk_ucret` (
  `gunluk_ucret_id` int NOT NULL,
  `calisan_id` int NOT NULL,
  `ucret_tarihi` date DEFAULT NULL,
  `gunluk_calisma_saati` int NOT NULL,
  `gunluk_ucret` int DEFAULT NULL,
  PRIMARY KEY (`gunluk_ucret_id`),
  KEY `calisan_id` (`calisan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `calisan_gunluk_ucret`
--

INSERT INTO `calisan_gunluk_ucret` (`gunluk_ucret_id`, `calisan_id`, `ucret_tarihi`, `gunluk_calisma_saati`, `gunluk_ucret`) VALUES
(1, 1, '2024-12-10', 10, NULL),
(2, 3, '2024-12-11', 10, 700),
(3, 2, '2024-12-11', 8, 640),
(4, 5, '2024-12-11', 8, 480);

--
-- Tetikleyiciler `calisan_gunluk_ucret`
--
DROP TRIGGER IF EXISTS `calisan_gunluk_ucret_hesaplama`;
DELIMITER $$
CREATE TRIGGER `calisan_gunluk_ucret_hesaplama` BEFORE INSERT ON `calisan_gunluk_ucret` FOR EACH ROW SET new.gunluk_ucret=
(SELECT calisanlar.saatlik_odeme*new.gunluk_calisma_saati
 FROM calisanlar
 WHERE calisanlar.calisan_id=new.calisan_id),new.ucret_tarihi=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `kategori_id` int NOT NULL,
  `kategori_adi` varchar(100) COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`kategori_id`, `kategori_adi`) VALUES
(1, 'Kahvaltı'),
(2, 'Atıştırmalıklar ve Yiyecekler'),
(3, 'Tatlılar'),
(4, 'Sıcak İçecekler'),
(5, 'Kahveler'),
(6, 'Türk Kahveleri'),
(7, 'Demleme Bitki Çayları'),
(8, 'Soğuk İçecekler'),
(9, 'Soğuk Kahveler'),
(10, 'Meşrubatlar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori_urun`
--

DROP TABLE IF EXISTS `kategori_urun`;
CREATE TABLE IF NOT EXISTS `kategori_urun` (
  `kategori_id` int NOT NULL,
  `urun_id` int NOT NULL,
  KEY `kategori_id_2` (`kategori_id`,`urun_id`),
  KEY `urun_id` (`urun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `kategori_urun`
--

INSERT INTO `kategori_urun` (`kategori_id`, `urun_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(3, 44),
(3, 45),
(3, 46),
(3, 47),
(3, 48),
(3, 49),
(3, 50),
(3, 51),
(3, 52),
(4, 53),
(4, 54),
(4, 55),
(4, 56),
(4, 57),
(4, 58),
(4, 59),
(4, 60),
(5, 61),
(5, 62),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 63),
(6, 64),
(6, 65),
(6, 66),
(6, 67),
(6, 68),
(6, 69),
(6, 70),
(6, 71),
(6, 72),
(7, 89),
(7, 90),
(7, 91),
(7, 92),
(7, 93),
(7, 94),
(7, 95),
(8, 96),
(8, 97),
(8, 98),
(8, 99),
(8, 100),
(8, 101),
(8, 102),
(8, 103),
(8, 104),
(8, 105),
(8, 106),
(8, 107),
(8, 108),
(8, 114),
(8, 115),
(8, 116),
(8, 117),
(8, 118),
(8, 119),
(8, 120),
(8, 121),
(8, 122),
(8, 123),
(8, 124),
(8, 125),
(8, 126),
(8, 127),
(8, 128),
(8, 129),
(8, 130),
(8, 131),
(8, 132),
(9, 109),
(9, 110),
(9, 111),
(9, 112),
(9, 113),
(10, 133),
(10, 134),
(10, 135),
(10, 136),
(10, 137),
(10, 138),
(10, 139),
(10, 140),
(10, 141),
(10, 142),
(10, 143);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

DROP TABLE IF EXISTS `siparis`;
CREATE TABLE IF NOT EXISTS `siparis` (
  `siparis_id` int NOT NULL,
  `urun_id` int NOT NULL,
  `adet` int DEFAULT NULL,
  `fiyat` int DEFAULT NULL,
  KEY `urun_id` (`urun_id`) USING BTREE,
  KEY `siparis_id` (`siparis_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `urun_id`, `adet`, `fiyat`) VALUES
(1, 18, 2, 340),
(1, 66, 6, 720),
(2, 18, 5, 850),
(2, 121, 3, 330),
(2, 66, 2, 240),
(3, 2, 5, 1825),
(3, 3, 6, 720);

--
-- Tetikleyiciler `siparis`
--
DROP TRIGGER IF EXISTS `siparis_fiyat_hesaplama`;
DELIMITER $$
CREATE TRIGGER `siparis_fiyat_hesaplama` BEFORE INSERT ON `siparis` FOR EACH ROW SET NEW.fiyat = (SELECT urunler.urun_fiyat FROM urunler WHERE urunler.urun_id = NEW.urun_id) * NEW.adet
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `siparisler_toplam_fiyat`;
DELIMITER $$
CREATE TRIGGER `siparisler_toplam_fiyat` AFTER INSERT ON `siparis` FOR EACH ROW UPDATE siparis_detay
SET siparis_detay.toplam_fiyat=(SELECT sum(siparis.fiyat) FROM siparis WHERE siparis.siparis_id=new.siparis_id)
where siparis_id=new.siparis_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

DROP TABLE IF EXISTS `siparis_detay`;
CREATE TABLE IF NOT EXISTS `siparis_detay` (
  `siparis_id` int NOT NULL,
  `masa_kodu` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `siparis_tarih` date NOT NULL,
  `toplam_fiyat` int DEFAULT NULL,
  `siparis_durum` enum('siparis alindi','siparis tamamlandi','siparis iptal edildi','') CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`siparis_id`),
  KEY `masa_kodu` (`masa_kodu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparis_id`, `masa_kodu`, `siparis_tarih`, `toplam_fiyat`, `siparis_durum`) VALUES
(0, '', '2024-12-10', NULL, ''),
(1, 't1', '2024-12-10', 1060, 'siparis tamamlandi'),
(2, 't2', '2024-12-10', 1420, 'siparis alindi'),
(3, 'b3', '2024-12-11', 2545, 'siparis tamamlandi');

--
-- Tetikleyiciler `siparis_detay`
--
DROP TRIGGER IF EXISTS `siparis_detay_tarih_ekleme`;
DELIMITER $$
CREATE TRIGGER `siparis_detay_tarih_ekleme` BEFORE INSERT ON `siparis_detay` FOR EACH ROW SET new.siparis_tarih=now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `tamamlanan_siparisler_detay`;
DELIMITER $$
CREATE TRIGGER `tamamlanan_siparisler_detay` AFTER UPDATE ON `siparis_detay` FOR EACH ROW BEGIN
    IF NEW.siparis_durum = 'siparis tamamlandi' THEN
        INSERT INTO tamamlanan_siparis_detay
        VALUES (OLD.siparis_id, OLD.toplam_fiyat, OLD.siparis_tarih);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tamamlanan siparis`
--

DROP TABLE IF EXISTS `tamamlanan siparis`;
CREATE TABLE IF NOT EXISTS `tamamlanan siparis` (
  `siparis_id` int NOT NULL,
  `urun_id` int NOT NULL,
  `adet` int NOT NULL,
  `fiyat` int NOT NULL,
  `tamamlanma_tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tamamlanan_siparis_detay`
--

DROP TABLE IF EXISTS `tamamlanan_siparis_detay`;
CREATE TABLE IF NOT EXISTS `tamamlanan_siparis_detay` (
  `siparis_id` int NOT NULL,
  `toplam_fiyat` int NOT NULL,
  `tamamlanma_tarihi` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `tamamlanan_siparis_detay`
--

INSERT INTO `tamamlanan_siparis_detay` (`siparis_id`, `toplam_fiyat`, `tamamlanma_tarihi`) VALUES
(1, 1060, '2024-12-10'),
(3, 2545, '2024-12-11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `urun_id` int NOT NULL,
  `urun_isim` varchar(100) COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_fiyat` int NOT NULL,
  `urun_maliyet` int NOT NULL,
  PRIMARY KEY (`urun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_id`, `urun_isim`, `urun_fiyat`, `urun_maliyet`) VALUES
(1, 'Serpme Kahvaltı', 675, 200),
(2, 'Tek Kişilik Kahvaltı Tabağı', 365, 100),
(3, 'Sahanda Yumurta', 120, 50),
(4, 'Sucuklu Yumurta', 140, 80),
(5, 'Beyaz Peynirli Omlet', 135, 60),
(6, 'Kaşarlı Omlet', 135, 70),
(7, 'Menemen', 170, 100),
(8, 'Kaşarlı Sucuklu Menemen', 195, 120),
(9, 'Burger Tabağı', 280, 130),
(10, 'Sosis Tava', 135, 80),
(11, 'Patates Tabağı', 115, 50),
(12, 'Sisler Atıştırmalık Tabağı', 180, 90),
(13, 'Sigara Böreği', 120, 50),
(14, 'Paçanga Böreği', 190, 90),
(15, 'Tortilla', 200, 90),
(16, 'Kurabiye Tabağı', 80, 20),
(17, 'Kestane', 170, 100),
(18, 'Beyaz Peynirli Gözleme', 170, 60),
(19, 'Kaşar Peynirli Gözleme', 170, 60),
(20, 'Kaşarlı Yumurtalı Gözleme', 195, 70),
(21, 'Kaşarlı Mantarlı Gözleme', 195, 70),
(22, 'Karışık Gözleme', 195, 70),
(23, 'Kavurmalı Gözleme', 210, 80),
(24, 'Kaşarlı  Tost', 115, 40),
(25, 'Karışık Tost', 135, 60),
(26, 'Beyaz Peynirli Tost', 115, 50),
(27, 'Kavurmalı Tost', 180, 70),
(28, 'Sisler Bulvarı Spesyal Tost', 210, 80),
(29, 'Ton Balıklı Sandviç', 160, 70),
(30, 'Beyaz Peynirli Sandviç', 125, 60),
(31, 'Kaşarlı Sandviç', 125, 60),
(32, 'Kaşarlı Salamlı Sandviç', 135, 75),
(33, 'Mantı', 220, 70),
(34, 'Tikka Masala Soslu Penne', 230, 90),
(35, 'Krema Soslu Penne', 230, 90),
(36, 'Köri Soslu Penne ', 230, 90),
(37, 'Pesto Soslu Penne', 230, 90),
(38, 'Penne Arabiata', 210, 90),
(39, 'Tavuk Pirzola', 250, 100),
(40, 'Tavuk Biftek', 250, 100),
(41, 'Köri Soslu Tavuk', 250, 100),
(42, 'Krema Soslu Tavuk', 250, 100),
(43, 'Tikka Masala Soslu Tavuk', 265, 100),
(44, 'Dondurma Top', 30, 15),
(45, 'Mozaik Pasta ', 160, 40),
(46, 'Yanardağ Pasta', 180, 40),
(47, 'Marlenka ', 180, 40),
(48, 'Tiramisu', 170, 50),
(49, 'Limonlu Chessecake', 180, 40),
(50, 'Frambuazlı Cheesecake', 180, 40),
(51, 'Magnolia', 160, 60),
(52, 'Sufle', 180, 50),
(53, 'Sıcak Çikolata', 95, 20),
(54, 'Sıcak Süt', 60, 5),
(55, 'Ballı Süt', 85, 10),
(56, 'Çay ', 25, 3),
(57, 'Fincan Çay', 50, 5),
(58, 'Sütlü Çay', 60, 6),
(59, 'Salep', 95, 30),
(60, 'Fındıklı Salep', 105, 35),
(61, 'Pumpkin Latte', 100, 35),
(62, 'Chai Tea Latte', 95, 30),
(63, 'Türk Kahvesi', 75, 20),
(64, 'Büyük Türk Kahvesi', 115, 30),
(65, 'Sütlü Türk Kahvesi', 80, 25),
(66, 'Büyük Sütlü Türk Kahvesi', 120, 35),
(67, 'Sütlü Dibek Kahvesi', 80, 30),
(68, 'Büyük Sütlü Dibek Kahvesi', 120, 40),
(69, 'Damla Sakızlı Türk Kahvesi', 80, 30),
(70, 'Büyük Damla Sakızlı Türk Kahvesi', 120, 40),
(71, 'Osmanlı Kahvesi', 80, 30),
(72, 'Büyük Osmanlı Kahvesi', 120, 40),
(73, 'Filtre Kahve ', 85, 30),
(74, 'İlave Süt', 15, 1),
(75, 'Sade Nescafe ', 80, 20),
(76, 'Sütlü Nescafe', 85, 21),
(77, 'Espresso', 75, 20),
(78, 'Double Espresso', 90, 25),
(79, 'Americano', 85, 20),
(80, 'Macchiato', 85, 20),
(81, 'Latte', 90, 25),
(82, 'Fındık Aromalı Latte', 100, 30),
(83, 'Vanilya Aromalı Latte', 100, 30),
(84, 'Mocha', 100, 30),
(85, 'White Chocolate Mocha', 100, 30),
(86, 'Karamel Macchiato', 100, 30),
(87, 'Kappucino', 95, 30),
(88, 'Affagato', 125, 30),
(89, 'Adaçayı', 85, 15),
(90, 'Ihlamur', 85, 15),
(91, 'Papatya Çayı ', 85, 15),
(92, 'Yeşil Çay', 85, 15),
(93, 'Melisa Çayı', 85, 15),
(94, 'Elma Çayı', 85, 15),
(95, 'Kış Çayı ', 90, 20),
(96, 'Hasta Çayı', 90, 20),
(97, 'Çikolatalı Milshake', 110, 40),
(98, 'Karamelli Milkshake', 110, 40),
(99, 'Çilekli Milkshake', 110, 40),
(100, 'Orman Meyveli Milkshake', 110, 40),
(101, 'Frambuazlı Milkshake', 110, 40),
(102, 'Vanilyalı Milkshake', 110, 40),
(103, 'Karpuz Çilekli Milkshake', 110, 40),
(104, 'Karpuzlu Milshake', 110, 40),
(105, 'Kivili Milkshake', 110, 40),
(106, 'Muzlu Milshake', 110, 40),
(107, 'Oreolu Milshake', 165, 50),
(108, 'Brownieli Milshake', 165, 50),
(109, 'İced Americano', 100, 30),
(110, 'İced Latte', 110, 30),
(111, 'İced Mocha', 120, 35),
(112, 'Frappe', 100, 35),
(113, 'Cold Brew', 125, 35),
(114, 'Limonata', 95, 10),
(115, 'Çilekli Limonata', 105, 15),
(116, 'Karadut', 95, 10),
(117, 'Sıkma Portakal Suyu', 110, 30),
(118, 'Çilekli Smoothie', 110, 60),
(119, 'Muzlu Smoothie', 110, 60),
(120, 'Kivili Smoothie', 110, 60),
(121, 'Böğürtlenli Smoothie', 110, 60),
(122, 'Orman Meyveli Smoothie', 110, 60),
(123, 'Çilekli Frozen', 105, 20),
(124, 'Kavunlu Frozen', 105, 20),
(125, 'Karpuzlu Frozen', 105, 20),
(126, 'Kivili Frozen', 105, 20),
(127, 'Naneli Frozen', 105, 20),
(128, 'Limonlu Frozen', 105, 20),
(129, 'Orman Meyveli Frozen', 105, 20),
(130, 'Karpuz Çilekli Frozen', 105, 20),
(131, 'Muzlu Frozen', 105, 20),
(132, 'Blue Lagon', 105, 70),
(133, 'İce Tea', 65, 20),
(134, 'Pepsi', 65, 20),
(135, 'Yedigün', 65, 20),
(136, 'SevenUp', 65, 20),
(137, 'Meyve Suyu', 65, 15),
(138, 'Soda ', 45, 15),
(139, 'Meyveli Soda', 50, 20),
(140, 'Sıkma Limon Soda', 60, 25),
(141, 'Churchill', 65, 25),
(142, 'Ayran', 50, 20),
(143, 'Su', 20, 5);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `calisan_gunluk_ucret`
--
ALTER TABLE `calisan_gunluk_ucret`
  ADD CONSTRAINT `calisan_gunluk_ucret_ibfk_1` FOREIGN KEY (`calisan_id`) REFERENCES `calisanlar` (`calisan_id`);

--
-- Tablo kısıtlamaları `kategori_urun`
--
ALTER TABLE `kategori_urun`
  ADD CONSTRAINT `kategori_urun_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategoriler` (`kategori_id`),
  ADD CONSTRAINT `kategori_urun_ibfk_2` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`);

--
-- Tablo kısıtlamaları `siparis`
--
ALTER TABLE `siparis`
  ADD CONSTRAINT `siparis_ibfk_1` FOREIGN KEY (`urun_id`) REFERENCES `urunler` (`urun_id`),
  ADD CONSTRAINT `siparis_ibfk_2` FOREIGN KEY (`siparis_id`) REFERENCES `siparis_detay` (`siparis_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
