-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2015 at 10:25 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` enum('PENDING','APPROVED','','') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `status`) VALUES
(2, 'Ashwin', 'Kupatkar', 'ashwink@cybage.com', 'as2ukeLG/3.Uc', 'APPROVED'),
(10, 'Biswajit', 'Bardhan', 'biswajitb@cybage.com', '12eMC4Wi9/C9o', 'APPROVED'),
(11, 'Tanya', 'Singhal', 'tanyas@cybage.com', 'taJrv9xSIW16M', 'APPROVED'),
(12, 'Ruchita', 'Dhandar', 'ruchitad@cybage.com', 'rumbxWzpqg.Fo', 'APPROVED'),
(13, 'Akshay', 'Sarda', 'akshays@cybage.com', 'akD8PE3/TAldk', 'APPROVED'),
(14, 'Avinash', 'Kumar', 'avinashk@cybage.com', 'av8vELNkaIdqo', 'APPROVED'),
(15, 'Bhagyalaxmi', 'Maheswaram', 'bhagyalaxmim@cybage.com', 'bh1plChI5mqVI', 'APPROVED'),
(16, 'Danish', 'Nadaf', 'danishn@cybage.com', 'da9G8W4awV4tQ', 'APPROVED'),
(17, 'Dhiren', 'Goyal', 'dhireng@cybage.com', 'dh5svwey43K1I', 'APPROVED'),
(18, 'Harshali', 'Chopade', 'harshalic@cybage.com', 'haeUqCi3La1Fc', 'APPROVED'),
(19, 'Sanjay', 'Divgi', 'sanjayd@cybage.com', 'san3h4TlIHHtY', 'APPROVED'),
(20, 'Vivek', 'Gupta', 'vivekg@cybage.com', 'viHyPPaU1.C/I', 'APPROVED'),
(21, 'Yogesh', 'Rao', 'yogeshr@cybage.com', 'yoeqxhyhywfH2', 'APPROVED'),
(23, 'Pranita', 'Setiya', 'pranitas@cybage.com', 'prPkSWEfPRtuI', 'APPROVED'),
(24, 'Jaydatta', 'Nagarkar', 'jaydattan@cybage.com', 'jaedxWD1yiF9I', 'APPROVED'),
(25, 'Jhilam', 'Biswas', 'jhilamb@cybage.com', 'jhn58Nh9R4bnc', 'APPROVED'),
(26, 'Kalyani', 'Moolinti', 'kalyanim@cybage.com', 'kaAHvhQCx7mNk', 'APPROVED'),
(27, 'Keerthi', 'M', 'keerthim@cybage.com', 'kem0g.gPAeT3w', 'APPROVED'),
(28, 'Mayurakshi', 'Das', 'mayurakshi@cybage.com', 'maj3YYFqHf0us', 'APPROVED'),
(29, 'Meenal', 'Badki', 'meenalb@cybage.com', 'meKE7pP8hsAGg', 'APPROVED'),
(30, 'Neha', 'Bhute', 'nehab@cybage.com', 'nehuNvt7VMO/g', 'APPROVED'),
(31, 'Pallavi', 'Sengupta', 'pallavis@cybage.com', 'paiIfSi0IZ/uo', 'APPROVED'),
(32, 'Pramod', 'K', 'pramodk@cybage.com', 'prsUyrPAc7q3M', 'APPROVED'),
(33, 'Priyanka', 'Mogali', 'priyanka@cybage.com', 'pra3Wi6o9Z1Fw', 'APPROVED'),
(34, 'Pratik', 'Kulkarni', 'pratikk@cybage.com', 'prOpdybIDlUZ6', 'APPROVED'),
(35, 'Shiv', 'Pahuja', 'shivp@cybage.com', 'shM3N3pm6uqgE', 'APPROVED'),
(36, 'Srikanta', 'Dutta', 'srikantad@cybage.com', 'sroSgmBToH9GA', 'APPROVED'),
(37, 'Suyash', 'Jire', 'suyashj@cybage.com', 'suhFyahT/Hrx2', 'APPROVED'),
(38, 'Venkatadri', 'C', 'venkatadric@cybage.com', 'vebLNcyd7QEKQ', 'APPROVED'),
(39, 'Radha', 'G', 'radhag@cybage.com', 'raILP9hopoaJo', 'APPROVED'),
(42, 'Biswajit', 'Bardhan', 'sunshine.cst.07@gmail.com', 'bilMVMxMUCHkM', 'APPROVED');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
