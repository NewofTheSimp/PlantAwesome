-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 11:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Id` int(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDescription` varchar(255) NOT NULL,
  `itemPrice` double NOT NULL,
  `itemImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Id`, `itemName`, `itemDescription`, `itemPrice`, `itemImg`) VALUES
(43, 'JungleJuice', 'Fusce imperdiet tortor enim, id laoreet mauris fringilla eu. Ut vitae suscipit libero. Aenean laoreet ante at ante luctus bibendum. Donec eget nibh et odio tristique euismod.', 25, 'img/pexels-kseniachernaya-7318145.jpg'),
(44, 'Wacky ', 'Fusce imperdiet tortor enim, id laoreet mauris fringilla eu. Ut vitae suscipit libero. Aenean laoreet ante at ante luctus bibendum. Donec eget nibh et odio tristique euismod.', 12, 'img/pexels-kseniachernaya-7318096.jpg'),
(45, 'LocalPlant', 'Fusce imperdiet tortor enim, id laoreet mauris fringilla eu. Ut vitae suscipit libero. Aenean laoreet ante at ante luctus bibendum. Donec eget nibh et odio tristique euismod.', 55, 'img/pexels-anna-nekrashevich-8988961.jpg'),
(46, 'SeriouslyAwesome', 'Fusce imperdiet tortor enim, id laoreet mauris fringilla eu. Ut vitae suscipit libero. Aenean laoreet ante at ante luctus bibendum. Donec eget nibh et odio tristique euismod.', 65, 'img/pexels-anna-nekrashevich-8988963.jpg'),
(47, 'JangoBel', 'Fusce imperdiet tortor enim, id laoreet mauris fringilla eu. Ut vitae suscipit libero. Aenean laoreet ante at ante luctus bibendum. Donec eget nibh et odio tristique euismod.', 25, 'img/pexels-juanpphotoandvideo-1084188.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(255) NOT NULL,
  `orderUserId` int(255) NOT NULL,
  `orderItemId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `orderUserId`, `orderItemId`) VALUES
(103, 38, 43),
(107, 47, 45),
(109, 50, 46),
(111, 50, 43),
(112, 50, 44),
(113, 50, 45),
(114, 50, 44),
(115, 50, 46),
(116, 50, 44),
(117, 50, 43),
(118, 50, 46),
(119, 50, 44),
(120, 38, 44),
(121, 38, 44),
(122, 38, 44),
(123, 38, 45),
(124, 38, 46),
(125, 38, 45),
(126, 38, 44),
(127, 38, 47),
(128, 38, 45),
(129, 38, 44),
(130, 38, 44),
(131, 38, 44),
(132, 38, 44),
(133, 38, 45),
(134, 38, 44),
(135, 38, 43),
(136, 38, 44);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `isAdmin`, `userEmail`, `userName`, `userPassword`) VALUES
(38, 1, 'willemvinke8@gmail.com', 'WillemVinke', '$2y$10$GKanTsTkXi8VC5xRepEasOXId43nkZ1nt6TY3D575FjOnkBGL1bPu'),
(43, 0, 'foo@bar.com', 'foo', '$2y$10$rv4nGTbxqRvroN3qasuyFO/pjsTEBvdVtuayENtDKOTmYxmiHhQ3a'),
(44, 0, 'foo@foo.foo', 'foo', '$2y$10$FK8oh0plFyT3fdmPoUGqJu1pCajWCbvYN19X53ONlshsKd8pL9yZS'),
(47, 0, 'willemvinke5@gmail.com', 'WillemVinke', '$2y$10$7XERQ4hNIBAb9tu3wH/C.uZnVEtaGDwh5O1yYV1jGG4p6TGTO4hiq'),
(48, 0, 'willemvinke10@gmail.com', 'WillemVinke', '$2y$10$GVzjysr0afC4BLZpRtG21eM97JXYghiLFcL.LWTRMVICII9.N4dWG'),
(49, 1, 'willemvinke15@gmail.com', 'WillemVinke', '$2y$10$HwMM5YQqHvRRdZuxkxEbYuGBdb7NGgqeCT.Taedga98KY0axWs6fy'),
(50, 1, 'willemvinke20@gmail.com', 'WillemVinke', '$2y$10$j6eYkz1ZD9nS0rlV4waDBuU4JDsLzBOE879X3jXxYFl/vpgGtkpP.'),
(51, 0, 'willemvinke2@gmail.com', 'WillemVinke', '$2y$10$ktZ92fXKQZZneju942q7vO/2Z/FeZzjBg1V.K5A0mMjqw03xvQasq'),
(52, 1, 'willemvinke1@gmail.com', 'WillemVinke', '$2y$10$1feabn2ytU.XnYeD2eYpEeuBlv.CoylkJxt7t5FnX463nq2/bUe2O'),
(53, 1, 'willemvinke22@gmail.com', 'WillemVinke', '$2y$10$1AscgSXbnvVm8dk0QOGA7ueOZoPAUS4wJqKXw7fWsQKG.VADSA4l2'),
(54, 0, 'willemvinke3@gmail.com', 'WillemVinke', '$2y$10$H5HRbXGHqMoXQFug/BYWuuAKHpWRZSjdhErD21/gaFrLskJYwWQO2');

-- --------------------------------------------------------

--
-- Table structure for table `useraddress`
--

CREATE TABLE `useraddress` (
  `userId` int(255) NOT NULL,
  `streetName` varchar(255) NOT NULL,
  `streetNumber` int(255) NOT NULL,
  `streetPostalCode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraddress`
--

INSERT INTO `useraddress` (`userId`, `streetName`, `streetNumber`, `streetPostalCode`, `country`) VALUES
(38, 'Malangstraat', 20, '7541 AD', 'Netherlands'),
(43, 'Malangstraat', 20, '7541 AD', 'Netherlands'),
(47, 'Malangstraat', 20, '7541AD', 'Netherlands'),
(48, 'Malangstraat', 20, '7541 AD', 'Netherlands'),
(50, 'Malangstraat ', 20, '7541 AD', 'Netherlands');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `orderItemId_itemId` (`orderItemId`),
  ADD KEY `orderUserId_userId` (`orderUserId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `useraddress`
--
ALTER TABLE `useraddress`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orderItemId_itemId` FOREIGN KEY (`orderItemId`) REFERENCES `item` (`Id`),
  ADD CONSTRAINT `orderUserId_userId` FOREIGN KEY (`orderUserId`) REFERENCES `user` (`Id`);

--
-- Constraints for table `useraddress`
--
ALTER TABLE `useraddress`
  ADD CONSTRAINT `UserAddressId_UserId` FOREIGN KEY (`userId`) REFERENCES `user` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
