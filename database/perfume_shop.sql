-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 04:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfume_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id_brand` int(11) NOT NULL,
  `brand_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id_brand`, `brand_name`) VALUES
(3, 'Azzaro'),
(4, 'Carolina Herrera'),
(6, 'Giorgio Armani'),
(5, 'Paco Rabbane'),
(8, 'Yves Saint Laurent');

-- --------------------------------------------------------

--
-- Table structure for table `perfumes`
--

CREATE TABLE `perfumes` (
  `id_perfume` int(11) NOT NULL,
  `perfume_name` varchar(45) NOT NULL,
  `notes` varchar(45) NOT NULL,
  `longevity` varchar(45) NOT NULL,
  `qualification` int(11) NOT NULL,
  `brand_name` varchar(45) NOT NULL,
  `perfume_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perfumes`
--

INSERT INTO `perfumes` (`id_perfume`, `perfume_name`, `notes`, `longevity`, `qualification`, `brand_name`, `perfume_description`) VALUES
(1, 'The most wanted', 'Warmed spicy', 'High', 9, 'Azzaro', 'The Most Wanted by Azzaro is a Amber Spicy fragrance for men. This is a new fragrance. The Most Wanted was launched in 2021. Top note is Cardamom; middle note is Toffee; base note is Amberwood.'),
(2, 'The most wanted parfum', 'Vanilla', 'High', 9, 'Azzaro', 'The Most Wanted Parfum by Azzaro is a Woody Spicy fragrance for men. This is a new fragrance. The Most Wanted Parfum was launched in 2022. Top note is Ginger; middle note is Woodsy Notes; base note is Bourbon Vanilla.'),
(3, 'CH Men Prive', 'Warm spiced', 'Moderate', 9, 'Carolina Herrera', 'CH Men Prive by Carolina Herrera is a Leather fragrance for men. CH Men Prive was launched in 2015. Top notes are Whiskey, Grapefruit and Pomelo; middle notes are Cardamom, Lavender, Sage and Red Thyme; base notes are Leather, Tonka Bean, Benzoin and Woody Notes.'),
(4, 'CH Men', 'Leather', 'Moderate', 9, 'Carolina Herrera', 'CH Men by Carolina Herrera is a Amber Spicy fragrance for men. CH Men was launched in 2009. Top notes are Grass, Bergamot and Grapefruit; middle notes are Woodsy Notes, Nutmeg, Saffron, Violet and Jasmine; base notes are Sugar, Leather, Vanilla, Suede, Amber, Cashmirwood, Sandalwood, Oakmoss and Vetiver.'),
(5, 'Very Good Girl', 'Fruity', 'Moderate', 8, 'Carolina Herrera', 'Very Good Girl by Carolina Herrera is a Floral Fruity fragrance for women. This is a new fragrance. Very Good Girl was launched in 2021. Very Good Girl was created by Quentin Bisch and Louise Turner. Top notes are Litchi and Red Currant; middle note is Rose; base notes are Vanilla and Vetiver.'),
(6, 'Wanted Girl By Night', 'Sweet', 'Moderate', 9, 'Azzaro', 'Wanted Girl By Night by Azzaro is a Chypre Floral fragrance for women. This is a new fragrance. Wanted Girl By Night was launched in 2021. Top notes are Whipped cream and Rum; middle note is Night blooming Cereus; base note is Patchouli.'),
(7, 'Pour Homme Wild Mint', 'Green', 'High', 8, 'Azzaro', 'Azzaro Pour Homme Wild Mint by Azzaro is a Aromatic Green fragrance for men. Azzaro Pour Homme Wild Mint was launched in 2019.'),
(8, 'Mademoiselle', 'White floral', 'Moderate', 8, 'Azzaro', 'Mademoiselle by Azzaro is a Floral Fruity fragrance for women. Mademoiselle was launched in 2015. The nose behind this fragrance is Karine Dubreuil-Sereni. Top notes are Peach and Mandarin Blossom; middle notes are Peony, Jasmine and Orange Blossom; base notes are Orris and Woody Notes.'),
(9, '212 Sexy', 'Sweet', 'High', 8, 'Carolina Herrera', '212 Sexy by Carolina Herrera is a Amber Floral fragrance for women. 212 Sexy was launched in 2004. The nose behind this fragrance is Rosendo Mateu. Top notes are Pink Pepper, Mandarin Orange and Bergamot; middle notes are Cotton Candy, Gardenia, Flowers, Pelargonium and Rose; base notes are Vanilla, Musk, Sandalwood, Caramel, Patchouli and Violet.'),
(10, '212 Men', 'Citrus', 'High', 9, 'Carolina Herrera', '212 Men by Carolina Herrera is a Woody Floral Musk fragrance for men. 212 Men was launched in 1999. 212 Men was created by Alberto Morillas, Rosendo Mateu and Ann Gottlieb. Top notes are Green Notes, Grapefruit, Spices, Bergamot, Lavender and Petitgrain; middle notes are Ginger, Violet, Gardenia and Sage; base notes are Musk, Sandalwood, Incense, Vetiver, Guaiac Wood and Labdanum.'),
(11, 'Giorgio for Men', 'Woody', 'High', 9, 'Giorgio Armani', 'Giorgio for Men by Giorgio Beverly Hills is a Amber Woody fragrance for men. Giorgio for Men was launched in 1984. Top notes are Aldehydes, Orange, Fruity Notes and Bergamot; middle notes are Patchouli, Rose, Carnation, Cinnamon, Sandalwood, Cedar and Orris Root; base notes are Honey, Oakmoss, Amber, Benzoin, Vanilla, Musk and Tonka Bean.'),
(12, 'Red for Men', 'Aromatic', 'High', 8, 'Giorgio Armani', 'Red for Men by Giorgio Beverly Hills is a Leather fragrance for men. Red for Men was launched in 1991. Top notes are Artemisia, Caraway, Basil and Bergamot; middle notes are Carnation, Geranium, Juniper Berries, Thyme, Rose and Jasmine; base notes are Leather, Oakmoss, Amber, Patchouli and Cedar.'),
(13, 'Beverly Hills', 'White floral', 'Eternal', 7, 'Giorgio Armani', 'Giorgio by Giorgio Beverly Hills is a Floral fragrance for women. Giorgio was launched in 1981. The nose behind this fragrance is Bob Aliano. Top notes are Apricot, Orange Blossom, Peach and Bergamot; middle notes are Tuberose, Gardenia, Ylang-Ylang, Jasmine, Orchid and Rose; base notes are Chamomile, Oakmoss, Vanilla, Amber, Musk, Sandalwood, Patchouli and Cedar.'),
(14, 'G Giorgio Beverly Hills', 'Floral', 'Moderate', 8, 'Giorgio Armani', 'G by Giorgio Beverly Hills is a Floral Fruity fragrance for women. G was launched in 1999. The nose behind this fragrance is Alain Astori. Top notes are Melon, Pineapple and Grapefruit; middle notes are Peony, Orchid, Peach and Ginger; base notes are Sandalwood and Vetiver.'),
(15, 'Wings Giorgio Beverly Hills', 'Floral', 'High', 8, 'Giorgio Armani', 'Wings by Giorgio Beverly Hills is a Floral Fruity fragrance for women. Wings was launched in 1992. The nose behind this fragrance is Jean Claude Delville. Top notes are Lily, Gardenia, Osmanthus, Marigold, Passion Flower and Rose; middle notes are Lilac, Jasmine, Cyclamen, Heliotrope and Orchid; base notes are Musk, Sandalwood, Amber and Cedar.'),
(16, 'Paco Rabanne Pour Elle Eau d\'Ete', 'Citrus', 'Moderate', 8, 'Paco Rabbane', 'Paco Rabanne Pour Elle Eau d\'Ete by Paco Rabanne is a Floral Fruity fragrance for women. Paco Rabanne Pour Elle Eau d\'Ete was launched in 2004. Top notes are Italian Mandarin, Bergamot and Californian Lemon; middle notes are Jasmine, Black Currant, Rose and Red Berries; base notes are White Musk, Amber and Bourbon Vanilla.'),
(17, '1 Million', 'Warm spicy', 'High', 8, 'Paco Rabbane', '1 Million by Paco Rabanne is a Woody Spicy fragrance for men. 1 Million was launched in 2008. 1 Million was created by Christophe Raynaud, Olivier Pescheux, Michel Girard and Christian Dussoulier. Top notes are Blood Mandarin, Grapefruit and Mint; middle notes are Cinnamon, Spicy Notes and Rose; base notes are Amber, Leather, Woody Notes and Indian Patchouli.'),
(18, '1 Million Prive', 'Warm spiced', 'High', 9, 'Paco Rabbane', '1 Million Prive by Paco Rabanne is a Amber Woody fragrance for men. 1 Million Prive was launched in 2016. The nose behind this fragrance is Christophe Raynaud. Top notes are Cinnamon and Blood Mandarin; middle notes are Tobacco and Myrrh; base notes are Tonka Bean and Patchouli.'),
(19, 'Lady Million', 'White floral', 'High', 8, 'Paco Rabbane', 'Lady Million by Paco Rabanne is a Floral Fruity fragrance for women. Lady Million was launched in 2010. Lady Million was created by Anne Flipo, Beatrice Piquet, Dominique Ropion and Bruno Jovanovic. Top notes are Raspberry, Neroli and Amalfi Lemon; middle notes are Jasmine, African Orange flower and Gardenia; base notes are white honey, Patchouli and Amber.'),
(20, 'Lady Million x Pac-Man Collector Edition', 'White floral', 'Eternal', 9, 'Paco Rabbane', 'Lady Million x Pac-Man Collector Edition by Paco Rabanne is a Floral Fruity fragrance for women. Lady Million x Pac-Man Collector Edition was launched in 2019. Lady Million x Pac-Man Collector Edition was created by Beatrice Piquet, Dominique Ropion and Anne Flipo. Top notes are Raspberry, Neroli and Lemon; middle notes are Orange Blossom, Jasmine and Gardenia; base notes are Honey, Amber and Patchouli.'),
(21, '212 Heroes Forever Young', 'Aromatic', 'Moderate', 8, 'Carolina Herrera', '212 Heroes by Carolina Herrera is a Aromatic Fruity fragrance for men. This is a new fragrance. 212 Heroes was launched in 2021. 212 Heroes was created by Domitille Michalon Bertier, Juliette Karagueuzoglou and Carlos Benaim. Top notes are Pear, Ginger and cannabis; middle notes are Geranium and Sage; base notes are Musk and Leather.'),
(22, 'Wanted Tonic', 'Citrus', 'Moderate', 7, 'Azzaro', 'Wanted Tonic by Azzaro is a Woody Spicy fragrance for men. This is a new fragrance. Wanted Tonic was launched in 2020. Top note is Lime; middle note is Ginger; base note is Patchouli.'),
(64, '1 Million Lucky', 'Woody', 'High', 9, 'Paco Rabbane', '1 Million Lucky by Paco Rabanne is a Woody fragrance for men. 1 Million Lucky was launched in 2018. The nose behind this fragrance is Natalie Gracia-Cetto. Top notes are Plum, Ozonic notes, Grapefruit and Bergamot; middle notes are Hazelnut, Honey, Cedar, Cashmere Wood, Jasmine and Orange Blossom; base notes are Amberwood, Patchouli, Oakmoss and Vetiver.'),
(65, '1 Million Elixir', 'Vanilla', 'High', 8, 'Paco Rabbane', '1 Million Elixir by Paco Rabanne is a fragrance for men. This is a new fragrance. 1 Million Elixir was launched in 2022. Top notes are Apple and Davana; middle notes are Damask Rose, Osmanthus and Cedar; base notes are Vanilla Absolute, Tonka Bean and Patchouli.'),
(69, 'Y Eau de Parfum', 'Aromatic', 'High', 9, 'Yves Saint Laurent', 'Y Eau de Parfum by Yves Saint Laurent is a Aromatic Fougere fragrance for men. Y Eau de Parfum was launched in 2018. The nose behind this fragrance is Dominique Ropion. Top notes are Apple, Ginger and Bergamot; middle notes are Sage, Juniper Berries and Geranium; base notes are Amberwood, Tonka Bean, Cedar, Vetiver and Olibanum.'),
(82, 'Y Eau de Toilette', 'Aromatic', 'Moderate', 8, 'Yves Saint Laurent', 'Y Eau de Toilette by Yves Saint Laurent is a fragrance for men. This is a new fragrance. Y Eau de Toilette was launched in 2022. The nose behind this fragrance is Dominique Ropion. Top notes are Aldehydes, Bergamot and Ginger; middle notes are Lavender, Geranium and Clary Sage; base notes are Olibanum, Vanilla, Ambergris and Cedar.'),
(129, '212 Heroes Forever Young Man', 'Aromatic', 'Moderate', 8, 'Carolina Herrera', '212 Heroes by Carolina Herrera is a Aromatic Fruity fragrance for men. This is a new fragrance. 212 Heroes was launched in 2021. 212 Heroes was created by Domitille Michalon Bertier, Juliette Karagueuzoglou and Carlos Benaim. Top notes are Pear, Ginger and cannabis; middle notes are Geranium and Sage; base notes are Musk and Leather.'),
(169, 'MODIFICADOS', 'MODIFICADO', 'MODIFICADO', 9, 'Azzaro', 'MODIFICADO'),
(172, '45455665445', '7777777777777', '1221323', 69456452, 'Azzaro', 'Thdaaadsade Most Wanted by Azzaro is a Amber Spicy fragrance for men. This is a new fragrance. The Most Wanted was launched in 2021. Top note is Cardamom; middle note is Toffeeeee; base note is Amberwood.'),
(173, '64', '699668', '75', 457, 'Azzaro', 'Thdaaadsade Most Wanted by Azzaro is a Amber Spicy fragrance for men. This is a new fragrance. The Most Wanted was launched in 2021. Top note is Cardamom; middle note is Toffeeeee; base note is Amberwood.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'useradmin@adm.kl', '$2a$10$4RVMdV6BQTZFAcmSs63YMeDNZipoy43b.aHmxt4fRo0pVoT7yXDn6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_brand`),
  ADD KEY `brand_name` (`brand_name`);

--
-- Indexes for table `perfumes`
--
ALTER TABLE `perfumes`
  ADD PRIMARY KEY (`id_perfume`),
  ADD KEY `brand_name` (`brand_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `perfumes`
--
ALTER TABLE `perfumes`
  MODIFY `id_perfume` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `perfumes`
--
ALTER TABLE `perfumes`
  ADD CONSTRAINT `perfumes_ibfk_1` FOREIGN KEY (`brand_name`) REFERENCES `brands` (`brand_name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
