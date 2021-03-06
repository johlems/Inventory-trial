-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 05:11 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rjglobus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE IF NOT EXISTS `tbl_cat` (
`cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Internal Equipment'),
(2, 'External Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE IF NOT EXISTS `tbl_con` (
`con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE IF NOT EXISTS `tbl_employee` (
`emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(37, 'Sherwin', 'T', 'Berana', 1, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 1, 1),
(48, 'Jm', 'O', 'Lema', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE IF NOT EXISTS `tbl_emp_type` (
`type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
`item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT '4',
  `status_id` int(11) NOT NULL DEFAULT '4'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(5, 'laptop', 'serial', 'model', 'brand ', 25500, '2017-01-06', 37, 1, 2, 4),
(10, 'AAA', '123123', '123123', '12321312', 123123, '2017-01-11', 37, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE IF NOT EXISTS `tbl_item_status` (
`status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off`
--

CREATE TABLE IF NOT EXISTS `tbl_off` (
`off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'PERSONNEL'),
(2, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE IF NOT EXISTS `tbl_pos` (
`pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'IT Officer'),
(2, 'IT Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE IF NOT EXISTS `tbl_request` (
`req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT '1',
  `req_is_done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`req_id`, `req_date`, `item_id`, `req_type_id`, `req_status_id`, `req_is_done`) VALUES
(19, '2017-01-01', 14, 1, 2, 1),
(20, '2017-01-01', 14, 1, 2, 1),
(21, '2017-01-01', 10, 1, 2, 1),
(22, '2017-01-01', 14, 1, 2, 1),
(91, '2017-03-12', 23, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE IF NOT EXISTS `tbl_req_status` (
`req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE IF NOT EXISTS `tbl_req_type` (
`req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
 ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
 ADD PRIMARY KEY (`emp_id`), ADD KEY `type_id` (`type_id`), ADD KEY `pos_id` (`pos_id`), ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
 ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
 ADD PRIMARY KEY (`item_id`), ADD KEY `emp_id` (`emp_id`), ADD KEY `cat_id` (`cat_id`), ADD KEY `status_id` (`status_id`), ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
 ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
 ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
 ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
 ADD PRIMARY KEY (`req_id`), ADD KEY `item_id` (`item_id`), ADD KEY `req_type_id` (`req_type_id`), ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
 ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
 ADD PRIMARY KEY (`req_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
