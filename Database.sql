-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 22, 2022 at 07:57 PM
-- Server version: 8.0.28
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bzns_monster`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainCategory`
--

CREATE TABLE `mainCategory` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `isParent` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mainCategory`
--

INSERT INTO `mainCategory` (`id`, `name`, `isParent`) VALUES
(1, 'Food', 1),
(2, 'Electronics', 1),
(3, 'Clothing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `mainCategoryId` int NOT NULL,
  `subCategoryId` int NOT NULL,
  `imgPath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `mainCategoryId`, `subCategoryId`, `imgPath`) VALUES
(1, 'Steacks', 1, 1, 'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_steakhouse.jpg'),
(2, 'Ground', 1, 1, 'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/bground.jpg'),
(3, 'Burgers', 1, 1, 'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_grnd_bgr.jpg'),
(4, 'Pre-Cut', 1, 1, 'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_stew_cb_strps.jpg'),
(5, 'Roasts', 1, 1, 'https://www.freshdirect.com/media/images/navigation/department/meat/meat_cat/beef_cat/bf/beef_prem_rsts.jpg'),
(6, 'Appels', 1, 2, 'https://www.freshdirect.com/media/images/product/fruit_3/fru_pid_2210362_z.jpg'),
(7, 'Avocados', 1, 2, 'https://www.freshdirect.com/media/images/product/veg_1/veg_fd_fgavcrdypk_z.jpg'),
(8, 'Bananas', 1, 2, 'https://www.freshdirect.com/media/images/product/fruit_3/fru_pid_2210788_z.jpg'),
(9, 'Citrus', 1, 2, 'https://www.freshdirect.com/media/images/product/fruit_2/orng_rednavel_z.jpg'),
(10, 'Grapes', 1, 2, 'https://www.freshdirect.com/media/images/product/fruit_3/grp_grnsdls_z.jpg'),
(11, 'Carrots', 1, 3, 'https://www.freshdirect.com/media/images/product/veg_3/orgveg_carrot_bnch_z.jpg'),
(12, 'Cucumbers', 1, 3, 'https://www.freshdirect.com/media/images/product/veg_3/cuc_grn_or_z.jpg'),
(13, 'Eggplant', 1, 3, 'https://www.freshdirect.com/media/images/product/veg_1/egplnt_ital_z.jpg'),
(14, 'Lettuce', 1, 3, 'https://www.freshdirect.com/media/images/product/veg_3/ltc_grnlf_or_z.jpg'),
(15, 'Peppers', 1, 3, 'https://www.freshdirect.com/media/images/product/vegetables/peppers/veg_pep_srnopkg_z.jpg'),
(16, 'French door refrigerators', 2, 4, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6250/6250110_sd.jpg'),
(17, 'Side-by-side refrigerators', 2, 4, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5811/5811900_sd.jpg'),
(18, '4-door refrigerators', 2, 4, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6323/6323216_sd.jpg'),
(19, 'Top-freezer refrigerators', 2, 4, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/9536/9536236_sd.jpg'),
(20, 'Commercial refrigerators', 2, 4, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6421/6421796cv1d.jpg'),
(21, 'Tablets', 2, 5, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4901/4901868_sd.jpg'),
(22, 'Laptops', 2, 5, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6479/6479175_sd.jpg'),
(23, 'PC gaming', 2, 5, 'https://pisces.bbystatic.com/image2/BestBuy_US/Gallery/flx-SOL-90011-DDDO_Update_PcGamingNav-216810.jpg'),
(24, 'Monitors', 2, 5, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6402/6402202_sd.jpg'),
(25, 'Printers, ink and toner', 2, 5, 'https://pisces.bbystatic.com/image2/BestBuy_US/en_US/images/abn/2015/tvv/fo/nav/co-tb-fo6.jpg'),
(26, 'Apple iPhone', 2, 6, 'https://pisces.bbystatic.com/image2/BestBuy_US/dam/flx-SOL-87516-iphone-13_DER-db590f83-44b2-4176-badf-4cebc75687cd.jpg'),
(27, 'Samsung Galaxy', 2, 6, 'https://pisces.bbystatic.com/image2/BestBuy_US/dam/flx-SOL-87519-fold_DER-8ba9d696-5491-442f-91e9-e99a5fd21fe1.jpg'),
(28, 'Google Pixel', 2, 6, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6483/6483635_sd.jpg'),
(29, 'More phones', 2, 6, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6478/6478246_sd.jpg'),
(30, 'Blue Hooded Technical Shacket', 3, 7, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/372639/1641545373.0321913-S2873582_C511_Alt2.jpg'),
(31, 'Lincoln Black Waxed Jacket', 3, 7, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/367275/1637155774.6542058-S2854838_C101_Alt2.jpg'),
(32, 'Burgundy Stripe Knitted Polo Shirt', 3, 7, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/367901/1639124797.5272756-S2866267_C327_Alt2.jpg'),
(33, 'Boys Khaki Dinosaur Camo Joggers', 3, 8, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/366840/1640077921.6565504-S2873102_C419_Alt1.jpg'),
(34, 'Unisex 3D Dinosaur', 3, 8, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/368914/1640799359.6570172-S2872704_C128_Alt1.jpg'),
(35, 'Boys Grey Zip Up Hoodie', 3, 8, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/367931/1640799350.553855-S2872138_C228_Alt2.jpg'),
(36, 'Unisex 3 Pack Jungle Joggers', 3, 9, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/370497/1642668075.0414178-S2886606_C47Q_Alt1.jpg'),
(37, 'Unisex Disney Tigger Dungarees', 3, 9, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/362999/1637829013.0300527-S2854929_C438_Alt1.jpg'),
(38, 'Boys Navy Knitted Shawl Neck Cardigan', 3, 9, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/284841/1598341463.914953-S2782534_C270_Alt1.jpg'),
(39, 'Unisex Cream Paddington Baby Grow', 3, 9, 'https://matalan-content.imgix.net/uploads/asset_file/asset_file/366861/1640248150.4363697-S2875069_C438_Alt1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subCategory`
--

CREATE TABLE `subCategory` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `isParent` int NOT NULL,
  `mainCategoryId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subCategory`
--

INSERT INTO `subCategory` (`id`, `name`, `isParent`, `mainCategoryId`) VALUES
(1, 'Meat', 0, 1),
(2, 'Fruit', 0, 1),
(3, 'Vegetables', 0, 1),
(4, 'Appliances', 0, 2),
(5, 'Computers & Tablets', 0, 2),
(6, 'Cell Phones', 0, 2),
(7, 'Men', 0, 3),
(8, 'Boys', 0, 3),
(9, 'Baby', 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mainCategory`
--
ALTER TABLE `mainCategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subCategory`
--
ALTER TABLE `subCategory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mainCategory`
--
ALTER TABLE `mainCategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `subCategory`
--
ALTER TABLE `subCategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
