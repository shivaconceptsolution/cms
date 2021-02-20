-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2021 at 10:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts` ()  BEGIN
	SELECT *  FROM tbl_student;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Student` ()  READS SQL DATA
    DETERMINISTIC
    COMMENT 'procedure fro select'
SELECT * FROM tbl_student$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertStudent` (`rno` INT, `sname` VARCHAR(50), `branch` VARCHAR(50), `fees` INT)  BEGIN

	insert into tbl_student values(rno,sname,branch,fees);

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fupload`
--

CREATE TABLE `fupload` (
  `id` int(11) NOT NULL,
  `file1` varchar(200) NOT NULL,
  `file2` varchar(200) NOT NULL,
  `file3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fupload`
--

INSERT INTO `fupload` (`id`, `file1`, `file2`, `file3`) VALUES
(1, 'download.jpg', 'admin.png', 'icon.png'),
(2, 'a9f241db-7931-4a3a-857f-f49966510d0e.jpg', 'b177a8ea-00b8-47c4-8e13-e25876484a1d.jpg', 'front.jpg'),
(3, 'bk.jpg', 'abc4e809-1b43-4673-8ce0-5cbccc84ec16.jpg', 'abc4e809-1b43-4673-8ce0-5cbccc84ec16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`userid`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feed`
--

CREATE TABLE `tbl_feed` (
  `feedid` int(11) NOT NULL,
  `facultyname` varchar(50) NOT NULL,
  `feedto` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `postdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feed`
--

INSERT INTO `tbl_feed` (`feedid`, `facultyname`, `feedto`, `rating`, `postdate`) VALUES
(1, 'Naveen Yadav', 'null', 3, '2021-02-05 08:48:32'),
(2, 'ssss', 'manish', 3, '2021-02-05 08:49:05'),
(3, 'Naveen Yadav', 'manish', 5, '2021-02-09 08:11:15'),
(4, 'prashant', 'manish', 5, '2021-02-10 08:31:07'),
(5, 'sddf', 'manish', 5, '2021-02-10 08:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE `tbl_reg` (
  `custid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`custid`, `username`, `password`, `email`, `mobileno`) VALUES
(2, 'manish', '123', 'manisj@gmail.com', '981231121'),
(3, 'dfggg', '12345', 'sh9iva@gmail.com', '9893913662');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(11) NOT NULL,
  `reviewdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(50) NOT NULL,
  `reviewby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id`, `reviewdate`, `description`, `reviewby`) VALUES
(1, '2021-02-09 08:16:49', 'check', 'xyz'),
(2, '2021-02-09 08:17:39', 'zzdsd', 'sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `rno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`rno`, `sname`, `branch`, `fees`) VALUES
(1001, 'ramnarayan', 'CS', 45000),
(1002, 'ABC', 'KLMN', 344555),
(1003, 'KAMAL', 'CS', 78000),
(1006, 'Manish', 'IT', 90000),
(1004, 'XYZ', 'CS', 78000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fupload`
--
ALTER TABLE `fupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feed`
--
ALTER TABLE `tbl_feed`
  ADD PRIMARY KEY (`feedid`);

--
-- Indexes for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fupload`
--
ALTER TABLE `fupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_feed`
--
ALTER TABLE `tbl_feed`
  MODIFY `feedid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
