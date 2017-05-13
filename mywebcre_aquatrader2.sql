-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2017 at 11:12 AM
-- Server version: 5.6.35-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebcre_aquatrader2`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pending', 1, '2013-08-25 11:13:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Pending', 2, '2013-08-25 11:13:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Delivered', 2, '2013-08-25 11:13:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Pending', 3, '2013-08-25 11:13:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Delivered', 4, '2013-08-25 11:13:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Delivered', 1, '2013-08-25 11:14:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Pending', 1, '2013-08-25 11:14:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Pending', 8, '2015-09-17 13:28:33', '2015-09-17 13:28:33', '0000-00-00 00:00:00'),
(9, 'Pending', 10, '2016-08-29 13:53:04', '2016-08-29 13:53:04', '0000-00-00 00:00:00'),
(10, 'Pending', 10, '2016-08-29 13:53:32', '2016-08-29 13:53:32', '0000-00-00 00:00:00'),
(11, 'Pending', 10, '2016-08-29 13:54:46', '2016-08-29 13:54:46', '0000-00-00 00:00:00'),
(12, 'Pending', 10, '2016-08-29 14:01:21', '2016-08-29 14:01:21', '0000-00-00 00:00:00'),
(13, 'Pending', 10, '2016-08-29 15:17:37', '2016-08-29 15:17:37', '0000-00-00 00:00:00'),
(14, 'Pending', 10, '2016-08-29 15:17:45', '2016-08-29 15:17:45', '0000-00-00 00:00:00'),
(15, 'Pending', 12, '2016-09-06 15:50:59', '2016-09-06 15:50:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 17, 3, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 19, 2, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 8, 1, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 35, 5, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 27, 2, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 3, 22, 10, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 4, 18, 4, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 4, 19, 3, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 5, 27, 6, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 6, 8, 1, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 32, 2, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 7, 29, 8, '2013-08-25 11:18:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 8, 6, 1, '2015-09-18 01:28:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 8, 1, 1, '2015-09-18 01:28:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 8, 29, 1, '2015-09-18 01:28:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 9, 19, 1, '2016-08-29 16:53:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 9, 1, 2, '2016-08-29 16:53:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 10, 29, 1, '2016-08-29 16:53:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 11, 33, 1, '2016-08-29 16:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 11, 1, 1, '2016-08-29 16:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 11, 30, 1, '2016-08-29 16:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 11, 20, 1, '2016-08-29 16:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 12, 1, 1, '2016-08-29 17:01:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 12, 20, 1, '2016-08-29 17:01:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 14, 1, 1, '2016-08-29 18:17:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 15, 26, 3, '2016-09-06 18:50:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(400) NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `photo`, `type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shubunkins12', 'Slender in body like the comets and commons, but should show in color the violet, red, orange, yellow and with spots of black (calico colors). Also these colors should run into the fins too.There is 2 different kinds of this fish London and Bristols. 1', 4, 'shubunkin.jpg', 1, '2016-08-29 17:27:37', '2016-08-29 14:27:37', NULL),
(2, 'CometsTest', 'Slender in body shape and have long single tail fin. They are very hardy fish and will grow on an average of 12-14\" long.', 3.5, 'comet.jpg', 1, '2015-09-18 02:43:12', '2015-09-10 12:55:49', NULL),
(3, 'Sakura', 'Sakura goldfish is any fancy breed that sports the \"matte\" characteristic in which the majority of the scales are semitransparent but with a sprinkling of several metallic scales and carrying only red pigmentation on its otherwise pinkish-white body. In other words, a calico goldfish minus the black and the blue.', 4, 'sakura.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(4, 'Fantail', 'Egg shape body with long doubled or short tail fins. They are somewhat hardy fish. These are the starting point of all the fancy goldfish.', 4.5, 'fantail.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(5, 'Pearlscale', 'Egg shaped goldfish but normally their mid region is much larger than most of the other egg shaped goldfish. The scales have a pearl raised appearance. They come in many different colors.', 6, 'pearlscale.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(6, 'Oranda', 'Egg shaped body with head growth (wen). The wen growth should be well developed. Fin length should be long and flowing.', 12, 'oranda.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(7, 'Ryukin', 'Close looking to the fantail goldfish, but they have a hump back to them that starts just after the head of the goldfish.', 15, 'ryukin.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(8, 'Moors', 'A velvetly black colored Goldfish with telescope eyes and an egg shaped body. They don\'t come in any other colors than black.', 10, 'moor.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(9, 'Pompom', 'Egg shaped fish either with or without fins. The Pom-Pons you see are the nostrils in excessive development. Some fish have it very lighly and others have very big ones.', 20, 'pompom.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(10, 'Veiltail', 'Long flowing fins that droops off the body. The fins look like a veil of a bride head dress. Body is an egged shaped and the color of the fish comes in many colors.', 15, 'veiltail.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(11, 'Lionhead', 'Egg shaped goldfish, but its back is pretty much in a straight line with head growth on it. No dorsal fin on this fish.', 25, 'lionhead.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(12, 'Ranchu', 'Egg shaped goldfish, but its back is curved then you will see a tail tuck of 90* with head or with out growth on it. No dorsal fin on this fish.', 20, 'ranchu.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(13, 'Bubble Eye', 'Egg shaped fish like the celestial with large, fluid-filled sacks under the eyes. These fish require special tanks with no sharp objects. No dorsal fin on this fish.', 30, 'bubbleeye.jpg', 1, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(14, 'Striated Discus', 'Striated discus include some of the earliest tank-bred strains such as turquoise and red turquoise discus. Also included in this category are discus such as snakeskins which have finer striated patterns. Many wild-type discus also fit into this category. ', 50, 'striated.jpg', 2, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(15, 'Solid Discus', 'The most popular of the solid fish include Marlboro Reds, Red Melons, and Blue Diamonds. These fish lack the striation in their gills, fins, and body that most other types of discus exhibit. Though not for everyone, the solid discus have become a favourite of many discus hobbyists.', 55, 'solid.jpg', 2, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(16, 'Spotted Discus', 'Spotted discus, from the wild red spotted greens to the intensely colorful Asian varieties, are increasingly sought after and in demand. This variety includes the popular Leopard discus. Many new forms of these spotted discus have become available in the past few years.', 50, 'spotted.jpg', 2, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(17, 'Pigeon Blood Discus', 'The pigeon blood variety is one of the largest and most diverse. Pigeon discus include fish with spots, striations, and solid color types and may be orange, red, blue, or even white. Pigeons are also easily distinguished by their bright red eyes.', 60, 'pigeonblood.jpg', 2, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(18, 'Wild Caught Discus', 'Many hobbyists have a soft spot for the original discus -- wilds. These fish include browns, blues, greens, and heckels. The varieties and color morphs seem endless. Wild discus range from solid to spotted and display a huge array of different colors.', 80, 'wildcaught.jpg', 2, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(19, 'Black Lace Angel', 'The Black Lace Angel is a strain of angelfish that is black in color with long flowing fins that are accentuated with a beautiful black lace.It prefers a well-planted tank of at least 30 gallons with soft, slightly acidic water. Rocks and driftwood can be added to the aquarium, but leave plenty of space for swimming. ', 20, 'blacklace.jpg', 3, '2016-08-29 16:54:35', '2016-08-29 13:54:35', '2016-08-29 13:54:35'),
(20, 'Gold Veil Angel', 'The Gold Veil Angel will add drama and brilliance to your community aquarium. A beautiful strain of angelfish with golden/white coloration, the Gold Veil Angel has long, thin fins that typically extend past the length of the body. These graceful features combined with its striking color make the Gold Veil Angel a true standout in planted aquariums.', 20, 'goldveil.jpg', 3, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(21, 'Koi Angel', 'The Koi Angel is a strain of angelfish that has been bred for it\'s mottled black and white coloration. Some may have gold markings on the head. The young specimens may have a red hue beneath the eyes that fades with age. These are beautiful angelfish, and like Koi, the coloration of each fish will be different.', 22, 'koi.jpg', 3, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(22, 'Marble Veil Angel', 'The Marble Veil Angel is a strain of angelfish that has a black, white, and yellow marbled pattern. The fins are long and thin with delicate-looking webbing, and will typically extend past the length of the body.', 25, 'marbleveil.jpg', 3, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(26, 'Cardinal Tetra', 'The Cardinal Tetra brings delicate beauty to any home freshwater aquarium. It has a bright blue stripe contrasted by a lower red stripe that runs the entire length of its body. This coloration differs from its cousin, the Neon Tetra, which has a red stripe that runs only halfway down the body. Equally as peaceful as Neon Tetras, Paracheirodon axelrodi will school together for a brilliant display o', 5, 'cardinal.jpg', 4, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(27, 'Neon Tetra', 'The Neon Tetra is often described as the jewel of the aquarium hobby. It is easy to see why it is one of the most popular freshwater tropical fish. With their iridescent blue bodies and bright red tails, Paracheirodon innesi creates an exciting splash of color in any aquarium, especially when kept in schools of six or more. ', 5, 'neon.jpg', 4, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(28, 'Rummy-Nose Tetra', 'The Rummy-Nose Tetra gets its name from the red blushing across its nose and face. But its beautiful coloration does not end there. Hemigrammus bleheri has a mirror-like silver body and a jet-black tail striped with white. This color pattern adds a simple, yet striking beauty to any freshwater aquarium. The Rummy-Nose Tetra is a peaceful omnivore that makes an excellent addition to community aquar', 7, 'rummynose.jpg', 4, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(29, 'Blue Peacock Cichlid', 'Blue Peacock Cichlid: The Blue Peacock Cichlid, Aulonocara nyassae, comes from the rocky, sandy shores of Lake Malawi, Africa. The males are a bright yellow to metallic blue, whereas, the females take on a drab brown to gray color.', 30, 'bluepeacock.jpg', 5, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(30, 'Electric Yellow Cichlid', 'The Electric Yellow Cichlid is set apart from other African Cichlids by its striking electric yellow coloration. It injects an irresistible splash of bold color to the cichlid aquarium. Mature specimens flaunt contrasting horizontal black stripes and vertical bars to provide additional visual interest.', 35, 'electricyellow.jpg', 5, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(31, 'Bumblebee Cichlid', 'The Bumblebee Cichlid, also known as the Hornet Cichlid, or Chameleon Cichlid comes from deepwater caves in Lake Malawi, Africa. The coloration of the Bumblebee is a golden yellow background with vertical brown to black bars running the length of its body.', 35, 'bumblebee.jpg', 5, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(32, 'Electric Blue Cichlid', 'The Electric Blue African Cichlid creates a gorgeous, colorful focal point in the freshwater aquarium. It has the typical sleek, bullet-shaped body common to the Cichlidae family. The active Electric Blue African Cichlid seems equally content guarding its territory or perusing the perimeter of your aquarium.', 33, 'electricblue.jpg', 5, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(33, 'Alternanthera \'Rosanervig\'', 'Vibrant pink leaves with light nerves characterise this vigorous culture form. The plant has a compact form of growth and the stalk does not grow as strong as other Alternanthera. Suitable for planting in the mid-section of the aquarium – and even in the front when cut well. As for all Alternanthera, good light and fertilizer conditions, as well as CO2 additive is material for growth and colour de', 10, 'alternanthera.jpg', 6, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(34, 'Bacopa monnieri \'Compact\'', 'This culture form of the stalk plant Bacopa Monnieri is more compact and, under good light conditions, almost a creeping plant. By pinching off all vertical growing shoots, the plant can maintain a low and close growth, since it willingly creates a large number of side shoots.', 8, 'bacopa.jpg', 6, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(35, 'Bolbitis heudelotii', 'Bolbitis comes from West Africa, a fern with very beautiful transparent green leaves, 15-40 cm tall and wide. When planting do not cover the rhizome because it will rot, and it is best to plant Bolbitis heudelotii on a root or stone. Keep the plant in position with fishing line until it has gained a hold. Easy to propagate by splitting the horizontal rhizome. Growth can be increased considerably b', 12, 'bolbitis.jpg', 6, '2015-09-18 02:43:12', '0000-00-00 00:00:00', NULL),
(36, 'vfad', 'asdasdasd', 2, 'sa2.jpg', 7, '2016-08-29 17:43:43', '2016-08-29 14:15:28', '0000-00-00 00:00:00'),
(48, 'hahdh', 'daskdhajskjd', 23, '1472491869_product.jpg', 2, '2016-08-29 17:31:09', '2016-08-29 14:31:09', '0000-00-00 00:00:00'),
(49, 'acsdasfsdf', 'fdsfsdfsdf', 3, '1472492408_product.jpg', 1, '2016-08-29 17:40:08', '2016-08-29 14:40:08', '0000-00-00 00:00:00'),
(50, 'dadasdd', 'sdasdadas', 3, '001.jpg', 2, '2016-08-29 14:48:42', '2016-08-29 14:48:42', '0000-00-00 00:00:00'),
(51, 'jojo', 'DSANDASD', 2, '1472493740_product.jpg', 2, '2016-08-29 18:02:20', '2016-08-29 15:02:20', '0000-00-00 00:00:00'),
(52, 'jojoe32', 'DSANDASD', 2, '1472494017_product.jpg', 7, '2016-08-29 18:06:57', '2016-08-29 15:06:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Goldfish', '2013-08-25 10:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Discus', '2013-08-25 10:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Angelfish', '2013-08-25 10:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tetras', '2013-08-25 10:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Cichlids', '2013-08-25 10:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Plants', '2013-08-25 10:30:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Shark', '2015-09-07 12:51:30', '2015-09-07 12:51:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(300) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `firstname`, `lastname`, `password`, `created_at`, `updated_at`, `deleted_at`, `remember_token`, `admin`) VALUES
(1, 'peter.smith1', 'peter.smith@gmail.com', 'Peter update', 'Smith', '1', '2015-09-14 01:26:23', '2015-09-13 13:26:23', '0000-00-00 00:00:00', '', 0),
(2, 'paul.jones', 'paul.jones@gmail.com', 'Paul', 'Jones', '1', '2013-08-25 22:56:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(3, 'mary.stevens', 'mary.stevens@gmail,com', 'Mary', 'Stevens', '1', '2013-08-25 22:56:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(4, 'luke.baker', 'luke.baker@gmail.com', 'Luke', 'Baker', '1', '2013-08-25 22:56:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(5, 'JoeJai', 'joe.jai@gmail.com', 'JoeJai', 'Jai', 'bla', '2015-09-07 12:58:55', '2015-09-07 12:58:55', '0000-00-00 00:00:00', '', 0),
(8, '<p>kuk</p>', '<p>das</p>', '<p>asdass</p>', '<p>sdfsdf1das</p>', '$2y$10$4KQMDtKuUUNfGSHXznu1S.7wXuEF9I8P942/X4C69lPWTWyd2jr.K', '2016-08-29 17:02:35', '2015-10-13 12:42:18', '0000-00-00 00:00:00', 'hifBeiw8TBdNpxeMnMWdPsF3SoIL1mdiCud2bAnYZn2hjhkM5bDkPLw5LYBc', 0),
(9, '<p>key</p>', 'key', '<p>key</p>', 'key', '$2y$10$7gr23cSkNsiHUYP2FtZ5c./Vks7CqHlx3FpM7i5W6TnbnK2LgAQ..', '2015-11-08 23:03:39', '2015-11-08 10:03:39', '0000-00-00 00:00:00', 'QI3A2iwJNVvT9TwZ9zArVe1KztH8yaJLVCo3rvDrDJjjT4BSuCxs8GaNlVoe', 0),
(10, 'kik', 'DASD@gmail.com', 'kikii', 'koko', '$2y$10$BSzsv/0fA04tWoT2P6D1z.Hu3wVNCe9lUaK.OpLzY8eADxNgJDoKC', '2016-08-29 18:17:48', '2016-08-29 15:17:48', '0000-00-00 00:00:00', '7qt9lNq9mQFgigJxa5Gdpg7duzIDX1u2Osr6KnofZu3qW1Qa53KHDtoGZ1Om', 1),
(11, 'kiki', 'sasx@gmail.com', 'kak', 'jaj', '$2y$10$sfO9sAlapmu5nHnjudixuO7or9Rp7SWym9K1ZXe3CBPXhwbDjGGIC', '2016-08-29 17:09:20', '2016-08-29 14:09:20', '0000-00-00 00:00:00', 'HwtXfcXTBymEou6Ducg0RHv6y5pcwMKUALSsT1zqnIMrW8B03hhOb0dl9nEF', 0),
(12, 'bibi', 'bibi@gmail.com', 'bibi', 'bibi', '$2y$10$aZFkxL9.DVMYzUVdaVO3F.X06.Wro1xgthRaJA3Nw38aebJCIjMAq', '2016-09-06 19:23:22', '2016-09-06 16:23:22', '0000-00-00 00:00:00', 'G57eJ1skSIIVjwtPoAl4KA1Et4boRKxBYLLG4jpMOVFX89r8YKCVpeB4RNtf', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
