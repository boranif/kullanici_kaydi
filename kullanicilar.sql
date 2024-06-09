-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Haz 2024, 17:52:44
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kullanici_veritabani`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `firstName`, `lastName`, `email`, `password`, `birthDate`, `gender`) VALUES
(10, 'Bora Yaşar', 'Nif', 'boranifdo@gmail.com', '$2y$10$b97M3hSocSHR1nlyW88eWu7B8kgYa3E48PyVVkgf8MH21cUJTWNta', '2005-09-29', 'male'),
(11, 'Arzu', 'Nif', 'nifarzu@gmail.com', '$2y$10$UQW3N7EJjvPU3PXokq7k4eySvmj/ot4UpngTXNEjwOiPvcsVQcKHi', '1977-01-18', 'female'),
(12, 'Selma', 'Nif', 'sel.nif19@icloud.com', '$2y$10$AqTHHLF6wqp3v9iipsTSQefRSk72aXkjQUxuuQjaV3Bm0n29dPOyO', '2002-08-19', 'female'),
(13, 'Azra Nif', 'Nif', 'azranif@icloud.com', '$2y$10$LjDRAL5r/jsFBCaB9ybXiu7KvnLBDt7mEPw3PqaKHOLHPBEFK37my', '2007-08-04', 'female'),
(14, 'Kadir', 'Nif', 'kadirnif7@gmail.com', '$2y$10$wPIVLzXkKsVABx25UtAfI.LZkX8EOw5ZODK77/BUNLKQxPKogN5ku', '1973-01-01', 'male');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
