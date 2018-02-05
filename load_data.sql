-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2018 at 07:25 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `home_depot`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,  
  `last_name` varchar(128) DEFAULT NULL,  
  `password` varchar(128) DEFAULT NULL,  
  `email` varchar(128) DEFAULT NULL,  
  `phone` varchar(128) DEFAULT NULL,  
  `institution` varchar(128) DEFAULT NULL 
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



--
-- Table structure for table `product`
--

CREATE TABLE `listings` (
        `listing_id` char(13) NOT NULL DEFAULT '',
        `user_id` int(11) NOT NULL,
        `title` varchar(128) DEFAULT NULL,
        `description` varchar(255) DEFAULT NULL,
        `image_url` varchar(255) DEFAULT NULL,
        `category` varchar(128) DEFAULT NULL,
        `city` varchar(128) DEFAULT NULL,
        `price` varchar(25) DEFAULT NULL,
        `list_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


--
-- Indexes for table `orders`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


--
-- Indexes for table `payment`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`listing_id`);
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `listings`
  MODIFY `listing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Dumping data for table `orders`
--

INSERT INTO `users` ( `user_id`, `first_name`, `last_name`, `password`, `email`, `phone`, `institution`) VALUES
( 1, 'Brian', 'Bolnick', 'PAssword!', 'brianbolnick@gmail.com', '801-839-9266', 'University of Utah');

--
-- Dumping data for table `product`
--

INSERT INTO `listings` (`listing_id`, `user_id`, `title`, `price`, `image_url`, `description`, `category`, `city`, `list_date`) VALUES
(1, 1, 'Keyboard', '14', 'https://images.pexels.com/photos/270640/pexels-photo-270640.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Technology', 'Salt Lake City', '0000-00-00 00:00:00'),
(2, 1, 'Tools', '20', 'https://images.pexels.com/photos/115558/pexels-photo-115558.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Tools and Hardware', 'Salt Lake City', '0000-00-00 00:00:00'),
(3, 1, 'Robot', '120', 'https://images.pexels.com/photos/247932/pexels-photo-247932.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Technology', 'Salt Lake City', '0000-00-00 00:00:00'),
(4, 1, 'Text Books', '500', 'https://images.pexels.com/photos/261909/pexels-photo-261909.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Books', 'Salt Lake City', '0000-00-00 00:00:00'),
(5, 1, 'Suits', '205', 'https://images.pexels.com/photos/261909/pexels-photo-261909.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Clothing', 'Salt Lake City', '0000-00-00 00:00:00'),
(6, 1, 'Food', '205', 'https://images.pexels.com/photos/261909/pexels-photo-261909.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Culinary and Eating', 'Salt Lake City', '0000-00-00 00:00:00'),
(7, 1, 'Guitar', '320', 'https://images.pexels.com/photos/325876/pexels-photo-325876.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Music and Instruments', 'Salt Lake City', '0000-00-00 00:00:00'),
(8, 1, 'Laptop', '999', 'https://images.pexels.com/photos/704971/pexels-photo-704971.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Technology', 'Salt Lake City', '0000-00-00 00:00:00'),
(9, 1, 'House', '135,000', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb', 'Maecenas faucibus mollis interdum.', 'Housing and Real Estate', 'Salt Lake City', '0000-00-00 00:00:00');