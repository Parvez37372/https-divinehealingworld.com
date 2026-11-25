-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2026 at 08:07 AM
-- Server version: 11.8.9-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u111565997_divinehealin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Kapil', 'Kapil@321', '2026-09-30 08:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `shoplink` varchar(500) DEFAULT '#shop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `status`, `created_at`, `category`, `description`, `shoplink`) VALUES
(3, ' Natural Crystals for a Better You', 'banner_1792067282_0d805715ef4872d6.png', 1, '2026-10-15 12:28:02', 'AUTHENTIC GEMSTONES • HANDCRAFTED JEWELLERYs', 'Discover the perfect blend of nature\'s beauty and positive energy with our handcrafted crystal jewellery. Each piece is unique, meaningful and made with love.', '#shop'),
(4, 'Natural Crystals for a Better You', 'banner_1792067347_2b0ea69d7390bb13.png', 1, '2026-10-15 12:29:07', 'AUTHENTIC GEMSTONES • HANDCRAFTED JEWELLERY2', 'Discover the perfect blend of nature\'s beauty and positive energy with our handcrafted crystal jewellery. Each piece is unique, meaningful and made with love.2', '#shop'),
(5, 'Natural Crystals for a Better You2', 'banner_1792068194_c2f5c76522999226.png', 1, '2026-10-15 12:43:14', 'AUTHENTIC GEMSTONES • HANDCRAFTED JEWELLERY2', 'Discover the perfect blend of nature\'s beauty and positive energy with our handcrafted crystal jewellery. Each piece is unique, meaningful and made with love.2', 'https://divinehealingworld.com/shop-category-products.php?category_id=3');

-- --------------------------------------------------------

--
-- Table structure for table `bestsellers`
--

CREATE TABLE `bestsellers` (
  `id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bestsellers`
--

INSERT INTO `bestsellers` (`id`, `pro_name`, `image`, `price`, `title`, `desc`, `created_at`) VALUES
(1, 'Rose Quartz Ring', 'bestseller_1790759717_e1eda5800e.jpg', 1500.00, 'Quartz Ring', 'wbsvgwd negdygeydye nhegdytedey', '2026-09-30 09:15:17'),
(2, 'Bestseller Green Aventurine Bracelet', 'bestseller_1791366034_ae3adf0770.jpg', 1200.00, 'bestseller-green-aventurine-bracelet', 'bestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-braceletbestseller-green-aventurine-bracelet', '2026-10-07 09:40:34'),
(3, 'Bestseller Blue Aventurine Pendant', 'bestseller_1791366182_e3a7d2f9e5.jpg', 1999.00, 'Bestseller Blue Aventurine Pendant', 'Bestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine PendantBestseller Blue Aventurine Pendant', '2026-10-07 09:43:02'),
(4, 'Bestseller Tiger Eye Bracelet', 'bestseller_1791366255_4e9ab93a97.jpg', 1599.00, 'Bestseller Tiger Eye Bracelet', 'Bestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye BraceletBestseller Tiger Eye Bracelet', '2026-10-07 09:44:15'),
(5, 'Bestseller Moonstone Earrings', 'bestseller_1791366427_8647cd2927.jpg', 1200.00, 'Bestseller Moonstone Earrings', 'Bestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone EarringsBestseller Moonstone Earrings', '2026-10-07 09:47:07'),
(6, 'Category Rings', 'bestseller_1791366524_7b1eb86317.jpg', 1500.00, 'category-rings', 'category-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-ringscategory-rings', '2026-10-07 09:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `category_id`, `name`, `title`, `description`, `image`, `price`, `status`, `created_at`) VALUES
(1, 3, 'Crystals', 'Crystals metls', 'Discover our beautiful collection of natural crystals, carefully selected for their unique beauty, energy, and timeless appeal. Explore a variety of crystals perfect for meditation, spiritual practices, healing spaces, and everyday positivity.', 'shop_product_1791193777_25790450db.jpg', 1400.00, 1, '2026-10-05 09:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL DEFAULT 'India',
  `order_note` text DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(50) NOT NULL DEFAULT 'cod',
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `city`, `state`, `pincode`, `country`, `order_note`, `subtotal`, `shipping`, `total`, `payment_method`, `status`, `created_at`) VALUES
(1, 'jjj gvg', 'j@gmail.com', '886884825', '56', 'Delhi', 'Claiborne', '100012', 'India', 'hgh', 14000.00, 0.00, 14000.00, 'cod', 'Pending', '2026-10-05 11:00:58'),
(2, 'SANJU BABA', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Delhi', '100015', 'India', '', 1400.00, 0.00, 1400.00, 'cod', 'Pending', '2026-10-05 11:03:19'),
(3, 'SANJU BABA', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Delhi', '100015', 'India', '', 1400.00, 0.00, 1400.00, 'online', 'Pending', '2026-10-05 11:03:49'),
(4, 'SANJU BABA', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Delhi', '100015', 'India', '', 1400.00, 0.00, 1400.00, 'cod', 'Pending', '2026-10-07 10:07:31'),
(5, 'BTJ ALPHA Power By TSoftTech', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Claiborne', '10001', 'India', 'whsdwgd jhudeud', 3000.00, 0.00, 3000.00, 'cod', 'Pending', '2026-10-07 10:15:35'),
(6, 'SANJU BABA', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Delhi', '110025', 'India', 'sss', 3198.00, 0.00, 3198.00, 'cod', 'Pending', '2026-10-07 10:20:33'),
(7, 'BTJ ALPHA Power By TSoftTech', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Claiborne', '10001', 'India', 'ss', 1200.00, 0.00, 1200.00, 'cod', 'Pending', '2026-10-15 11:08:03'),
(8, 'SANJU BABA', 'btjalpha32@gmail.com', '+918868848218', '56\r\ne3', 'Delhi', 'Delhi', '100015', 'India', 'ddd', 1500.00, 0.00, 1500.00, 'cod', 'Pending', '2026-10-15 11:13:23'),
(9, 'SANJU BABA', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Delhi', '100015', 'India', '', 1400.00, 0.00, 1400.00, 'cod', 'Pending', '2026-10-15 11:14:24'),
(10, 'BTJ ALPHA Power By TSoftTech', 'btjalpha32@gmail.com', '+918868848218', '56', 'Delhi', 'Claiborne', '10001', 'India', 'dtfyy huyu', 2400.00, 0.00, 2400.00, 'cod', 'Pending', '2026-10-19 12:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `category_id`, `product_name`, `product_title`, `product_image`, `price`, `quantity`, `total`, `created_at`) VALUES
(1, 1, 1, 3, 'Crystals', 'Crystals metls', 'shop_product_1791193777_25790450db.jpg', 1400.00, 10, 14000.00, '2026-10-05 11:00:58'),
(2, 2, 1, 3, 'Crystals', 'Crystals metls', 'shop_product_1791193777_25790450db.jpg', 1400.00, 1, 1400.00, '2026-10-05 11:03:19'),
(3, 3, 1, 3, 'Crystals', 'Crystals metls', 'shop_product_1791193777_25790450db.jpg', 1400.00, 1, 1400.00, '2026-10-05 11:03:49'),
(4, 4, 1, 3, 'Crystals', 'Crystals metls', 'shop_product_1791193777_25790450db.jpg', 1400.00, 1, 1400.00, '2026-10-07 10:07:31'),
(5, 5, 6, NULL, 'Category Rings', NULL, NULL, 1500.00, 2, 3000.00, '2026-10-07 10:15:35'),
(6, 6, 4, NULL, 'Bestseller Tiger Eye Bracelet', NULL, NULL, 1599.00, 2, 3198.00, '2026-10-07 10:20:33'),
(7, 7, 5, NULL, 'Bestseller Moonstone Earrings', NULL, NULL, 1200.00, 1, 1200.00, '2026-10-15 11:08:03'),
(8, 8, 6, NULL, 'Category Rings', NULL, NULL, 1500.00, 1, 1500.00, '2026-10-15 11:13:23'),
(9, 9, 1, 3, 'Crystals', 'Crystals metls', 'shop_product_1791193777_25790450db.jpg', 1400.00, 1, 1400.00, '2026-10-15 11:14:24'),
(10, 10, 5, NULL, 'Bestseller Moonstone Earrings', NULL, NULL, 1200.00, 2, 2400.00, '2026-10-19 12:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `pro_category` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_image`, `pro_name`, `pro_desc`, `pro_price`, `pro_category`, `created_at`) VALUES
(1, 'product_1791551260_328ceb21598dfb4c.jpg', 'Ring', 'RingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRingRing', 1300.00, 'Ring', '2026-10-09 13:07:40'),
(2, 'product_1792060964_87ad385585cd9e4a.jpg', 'Earrings', 'Discover our elegant Earrings, designed to add beauty and charm to every look. Perfect for daily wear, special occasions, and gifting, these stylish earrings complement both traditional and modern outfits. A beautiful addition to your jewellery collection.', 1500.00, 'Ring', '2026-10-15 10:42:44'),
(3, 'product_1792061054_d51c1995f21bc18e.jpg', 'Bestseller', 'bestseller-tiger-eye-bracelet bestseller-tiger-eye-bracelet bestseller-tiger-eye-bracelet bestseller-tiger-eye-bracelet v', 5000.00, 'bestseller-tiger-eye-bracelet', '2026-10-15 10:44:14'),
(4, 'product_1792065505_775ad410473b2b48.jpg', 'Earrings', 'Earrings Earrings Earrings', 250.00, 'Earrings', '2026-10-15 11:58:25'),
(5, 'product_1792065585_64fb856abdfa46d4.jpg', 'White Earrings', 'White EarringsWhite EarringsWhite EarringsWhite EarringsWhite EarringsWhite EarringsWhite EarringsWhite Earrings', 5000.00, 'White Earrings', '2026-10-15 11:59:45'),
(6, 'product_1792065658_fdd5dffd7c8e17b7.jpg', 'labradorite-pendant', 'labradorite-pendantlabradorite-pendantlabradorite-pendantlabradorite-pendantlabradorite-pendantlabradorite-pendant', 500.00, 'bestseller-labradorite-pendant', '2026-10-15 12:00:58'),
(7, 'product_1793011360_5750143c89f4d92a.jpg', 'Bestseller', 'White EarringsWhite EarringsWhite EarringsWhite EarringsWhite EarringsWhite EarringsWhite Earring...', 2500.00, 'bestseller', '2026-10-26 10:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `reiki_bookings`
--

CREATE TABLE `reiki_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(190) NOT NULL,
  `session_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reiki_bookings`
--

INSERT INTO `reiki_bookings` (`id`, `slot_id`, `customer_name`, `phone`, `email`, `session_details`, `created_at`) VALUES
(4, 9, 'Parvez Ahmad', '9892183978', 'parvez47470@gmail.com', 'ffv', '2026-11-17 07:48:45'),
(5, 10, 'Parvez Khna', '45638239283', 'divinehealing578@gmail.com', 'metting', '2026-11-17 07:55:33'),
(6, 11, 'Parvez Khna', '9027854940', 'Parvez47470@gmail.com', 'metting', '2026-11-17 08:06:01'),
(7, 12, 'Parvez', '9027854940', 'parvez37370@gmail.com', 'booking test', '2026-11-17 08:25:36'),
(8, 13, 'test', '9027854940', 'divinehealing578@gmail.com', 'Akashic Records Reading', '2026-11-18 09:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `reiki_slots`
--

CREATE TABLE `reiki_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `slot_date` date NOT NULL,
  `slot_time` time NOT NULL,
  `status` enum('available','booked') NOT NULL DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reiki_slots`
--

INSERT INTO `reiki_slots` (`id`, `slot_date`, `slot_time`, `status`, `created_at`) VALUES
(9, '2026-11-18', '15:17:00', 'booked', '2026-11-17 07:45:40'),
(10, '2026-11-18', '01:29:00', 'booked', '2026-11-17 07:54:57'),
(11, '2026-11-20', '15:29:00', 'booked', '2026-11-17 07:58:02'),
(12, '2026-11-24', '13:28:00', 'booked', '2026-11-17 07:58:17'),
(13, '2026-11-26', '13:31:00', 'booked', '2026-11-17 07:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `category_name`, `category_title`, `created_at`) VALUES
(3, 'Crystals', 'Crystals', '2026-10-05 09:48:16'),
(4, 'Rings', 'Hand men women ring', '2026-10-05 09:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_image`, `created_at`) VALUES
(1, 'hwhmftjiee', 'txvqvpjy@formtests.info', '$2y$10$CWGSN1W.FutmqPL528l2P.UrobMR0UMh.CMxzQbIXHgeyAahGwe.S', 'default.png', '2026-10-29 02:50:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bestsellers`
--
ALTER TABLE `bestsellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reiki_bookings`
--
ALTER TABLE `reiki_bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_booking_slot` (`slot_id`);

--
-- Indexes for table `reiki_slots`
--
ALTER TABLE `reiki_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_slot` (`slot_date`,`slot_time`),
  ADD KEY `idx_availability` (`status`,`slot_date`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bestsellers`
--
ALTER TABLE `bestsellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reiki_bookings`
--
ALTER TABLE `reiki_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reiki_slots`
--
ALTER TABLE `reiki_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reiki_bookings`
--
ALTER TABLE `reiki_bookings`
  ADD CONSTRAINT `fk_reiki_slot` FOREIGN KEY (`slot_id`) REFERENCES `reiki_slots` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
