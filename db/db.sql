SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mvc`
--
DROP DATABASE IF EXISTS `mvc`;
CREATE DATABASE `mvc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mvc`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_date`, `modified_date`) VALUES
(1, 'Category One','2013-06-22 08:20:05', '2013-06-22 08:20:05'),
(2, 'Category Two','2013-06-22 08:20:05', '2013-06-22 08:20:05'),
(3, 'Category Three','2013-06-22 08:20:05', '2013-06-22 08:20:05');

-- --------------------------------------------------------
