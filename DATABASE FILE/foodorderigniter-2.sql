-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2022 at 05:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 1, 'Cheeseburger', 'The McDonald\'s Double Cheeseburger features two 100% pure beef burger patties seasoned with just a pinch of salt and pepper. It\'s topped with tangy pickles, chopped onions, ketchup, mustard and two slices of melty American cheese.', 45, 'mcdoBurger1.jpeg'),
(2, 1, 'Chicken', 'Juicy and tender white meat covered with a crispy coating and fried to perfection! Juicy and tender white meat covered with a crispy coating and fried to perfection!', 102, 'mcdoChicken1.jpeg'),
(3, 3, 'Mang Inasal Chicken', 'Whole cured, cooked sausage that is skinless or stuffed in a casing, that may be known as a frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, or knockwurst, and that may be served in a bun or roll', 128, 'MIPM1.jpg'),
(4, 2, 'Jolly\'s Spaghetti', 'Sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. The Epic Ham and Cheese Stuffed Bacon Burger is hands down the best', 59, 'Jspag.jpg'),
(5, 3, 'Barbecque', 'A thick, square-cut pizza with a crunchy, fried bottom layer of crust overflowing with delicious melted cheese. The result of this unique pizza style is a gooey, doughy center with a crunchy outer crust and caramelized cheese hugging its edges.', 89, 'barbecque.jpg'),
(6, 1, 'Spaghetti', 'While not traditionally Italian, McDonald\'s take on spaghetti is a box of long pasta topped with a generous portion of tomato sauce and shredded cheese. The marinara-like sauce is topped with either ground beef or sausage pieces similar to cut-up hot dogs', 89, 'mcdoSpag1.jpg'),
(7, 1, 'Pancake', 'Just spaghetti and the carbonara is made with pancetta or bacon, eggs, Parmesan, a little olive oil, salt and pepper. The silky carbonara sauce is created when the beaten eggs are tossed with the hot pasta and a little fat from the pancetta or bacon.', 89, 'mcdoBreakfast1.jpeg'),
(8, 2, 'Fries', 'The crunchy pasta, dusted with grated Parmesan cheese and dunked in a marinara-style sauce, makes a delicious hot appetizer. the ravioli is deep-fried, not toasted, and like many culinary discoveries, the first batch was the result of an accident.', 39, 'Jfries.jpg'),
(9, 3, 'Palabok', 'As the name implies, this is an iconic Italian dessert that is served at the end of the meal that hopefully “cheers you up”. For a decadent, crowd-pleasing dessert this Christmas you can\'t go past a no-bake Malteser tiramisu.', 89, 'MIpalabok.jpg'),
(10, 6, 'Arancini', 'Arancini are Italian rice balls that are stuffed, coated with bread crumbs and deep fried, and are a staple of Sicilian cuisine. They have a meat sauce and mozzarella cheese filling and crunchy breadcrumb coating. Similar Italian rice balls are called sup', 12, 'aw-arancini-articleLarge.jpg'),
(11, 6, 'Currywurst', 'Currywurst is a fast food dish of German origin consisting of steamed, and fried pork sausage typically cut into bite-sized chunks and seasoned with curry ketchup, a sauce based on spiced ketchup or tomato paste topped with curry powder, or a ready-made k', 7, 'curywurst.jpg'),
(12, 6, 'Steak au poivre', 'Steak au poivre or pepper steak is a French dish that consists of a steak, traditionally a filet mignon, coated with coarsely cracked peppercorns and then cooked. a steak that has had coarsely ground black pepper pressed into it before cooking, is served ', 10, 'stkkk.jpg'),
(13, 5, 'French Fries', 'French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes. French fries have numerous variants, from thick-cut to shoestring, crinkle, curly and many other names.', 2, 'ffries.jpg'),
(14, 5, 'Roast Beef Sandwich', 'Roast Beef Sandwich Recipe with Horseradish Cream is absolutely loaded up with flavor, from the thinly sliced roast beef to the roasted potatoes, to the horseradish cream, if you want delicious, then this is the sandwich for you.', 5, 'roast-beef-sandwich.jpg'),
(15, 4, 'Chowking Chicken', 'A cheesesteak is a sandwich made from thinly sliced pieces of beefsteak and melted cheese in a long hoagie roll. A popular regional fast food, it has its roots in the U.S. city of Philadelphia, Pennsylvania. Cheesesteaks have become popular at restaurants', 108, 'chowchicken.jpg'),
(16, 4, 'Halo-halo', 'Sesame chicken is an American-Chinese dish made by deep-frying deboned and battered chicken pieces which are then dressed with a thick, translucent, sweet sauce consisting of chicken broth, sugar, corn starch, and vinegar or sake. additionally topped with', 89, 'halohalo.jpg'),
(17, 4, 'Chao Fan', 'One of America\'s favorite cheesy snacks consisting of battered, breaded, and deep-fried pieces of mozzarella cheese. Served as an appetizer with marinara sauce, these cheesy sticks can also be paired with plum sauce, honey mustard sauce, raspberry sauce,', 89, 'Chao-Fan.jpg'),
(18, 2, 'Yumburger', 'Chimichanga is a wrapped, deep-fried flour tortilla filled with a variety of ingredients such as shredded chicken, beef, rice, beans, onions, and cheese. Served topped with sour cream, guacamole and salsa, this Mexican inspired recipe is delicious!', 39, 'yum.jpg'),
(20, 2, 'Chicken Joy', 'Chop suey is a dish in American Chinese cuisine and other forms of overseas Chinese cuisine, consisting of meat and eggs, cooked quickly with vegetables such as bean sprouts, cabbage, and celery and bound in a starch-thickened sauce.', 108, 'jollibeeC.jpg'),
(21, 5, 'PoBoy', 'A po\' boy is a traditional sandwich from Louisiana. It almost always consists of meat, which is usually roast beef or fried seafood, often shrimp, crawfish, fish, oysters or crab. The meat is served on New Orleans French bread, known for its crisp crust a', 5, 'poboy.jpg'),
(22, 7, 'Reuben Sandwich', 'Reuben Sandwich is composed of corned beef, swiss chees, sauerkraut and russian dressing, grilled between slices of rye bread. It is associated with kosher-style delicatessens as it combines meat and cheese.', 8, 'reubensandw.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 'Mcdonalds', 'mcdonalds@gmail.com', '09196929167', 'mcdonalds.com', '7am', '9pm', 'Mon-Sat', '1259  Zamora Street', 'mcdo.jpg'),
(2, 'Jollibee', 'jollibee@gmail.com', '09123456819', 'jollibee.com', '7am', '9pm', 'Mon-Sat', '1812  Mabuhay Street', 'Jollibee.jpg'),
(3, 'Mang Inasal', 'manginasal@gmail.com', '09251448369', 'manginasal.com', '7am', '9pm', 'Mon-Sat', '528  Pearl Drive', 'mang-inasal.jpg'),
(4, 'Chowking', 'chowking@gmail.com', '09187894356', 'chowking.com', '7am', '9pm', 'Mon-Sat', '1659  Roosevelt Avenue', 'chowking.jpg'),
(5, 'KFC', 'kfc@gmail.com', '09231564789', 'kfc.com', '7am', '9pm', 'Mon-Sat', '1547  Maligaya  Street', 'kfc.jpg'),
(6, 'Bonchon', 'bonchon@gmail.com', '09184562139', 'bonchon.com', '7am', '9pm', 'Mon-Sat', '60  Letre Road', 'bonchon.jpg'),
(7, 'Shakey\'s', 'shakeys@gmail.com', '09162354178', 'shakeys.com', '7am', '9pm', 'Mon-Sat', '2902 Macapagal Street', 'shakeys.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(2, 'Italian'),
(3, 'Continental'),
(4, 'Chinese'),
(5, 'Desserts'),
(6, 'American'),
(7, 'Vegan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(35, 'porkandvince', 'John Vincent', 'Zata', 'akosijv19@gmail.com', '1245552121', '$2y$10$vqDJXw.YFvDu4NUbWY8JX.R/Ur2XkM2vIAwAcpAJLrPzsAZ2TDF3u', '#42 BLOCK 3 LOT28 KALAYAAN A ST BATASAN HILLS QUEZON CITY'),
(36, 'hakdog', 'John Vincent', 'Zata', 'akosijv19@gmail.com', '09459972129', '$2y$10$RS9xTrzreu8CDfss/3USnO2g004kFdtyxJ8VeRX80FKr2A/rCHp2a', '#42 BLOCK 3 LOT28 KALAYAAN A ST'),
(37, 'pawnse', 'Jerry', 'Mandap', 'jponcemandap@gmail.com', '09565310040', '$2y$10$10w2XoMyXn9wAVUlbeumhudymT4trRyiJzLvRoV2yc9b5aBs4GFue', '2463 P.Zamora St., Pasay City');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(35, 37, 3, 'Mang Inasal Chicken', 1, 128, 'in process', '2022-01-27 05:13:09', '2022-01-27 04:13:28', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
