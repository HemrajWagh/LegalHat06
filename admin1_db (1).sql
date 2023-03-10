-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 01:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin1_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`) VALUES
(1, 'Pune'),
(2, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `assigned_id` int(11) DEFAULT NULL,
  `projectname` varchar(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `contactno` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `typeofcompany` varchar(255) DEFAULT NULL,
  `typeofbuyer` varchar(255) NOT NULL,
  `typeofflat` varchar(500) NOT NULL,
  `approxbudget` varchar(500) NOT NULL,
  `interestedinbuying` varchar(255) NOT NULL,
  `purposeOfInvestment` varchar(50) NOT NULL,
  `enquirysource` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `digitalsubsource` varchar(50) NOT NULL,
  `firmname` varchar(255) NOT NULL,
  `exceutivename` varchar(245) NOT NULL,
  `exceutivenumber` varchar(245) NOT NULL,
  `existingclientname` varchar(245) NOT NULL,
  `cluster` varchar(245) NOT NULL,
  `Tower` varchar(245) NOT NULL,
  `flatno` varchar(234) NOT NULL,
  `referralname` varchar(255) NOT NULL,
  `referralprojectname` varchar(255) NOT NULL,
  `referralbuildingname` varchar(255) NOT NULL,
  `referralflatno` varchar(122) NOT NULL,
  `referral_mobile` bigint(12) NOT NULL,
  `visits` int(11) NOT NULL,
  `revisit_to` varchar(255) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `salesperson` varchar(50) DEFAULT NULL,
  `registerdate` varchar(500) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enquirykp`
--

CREATE TABLE `enquirykp` (
  `id` int(11) NOT NULL,
  `projectname` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `contactno` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `typeofcompany` varchar(255) DEFAULT NULL,
  `typeofbuyer` varchar(255) NOT NULL,
  `typeofflat` varchar(255) NOT NULL,
  `approxbudget` varchar(255) NOT NULL,
  `interestedinbuying` varchar(255) NOT NULL,
  `purposeOfInvestment` varchar(255) NOT NULL,
  `enquirysource` varchar(255) NOT NULL,
  `digitalsubsource` varchar(255) DEFAULT NULL,
  `channelsubsource` varchar(255) DEFAULT NULL,
  `exceutivename` varchar(255) DEFAULT NULL,
  `exceutivenumber` varchar(255) DEFAULT NULL,
  `existingclientname` varchar(255) DEFAULT NULL,
  `cluster` varchar(255) DEFAULT NULL,
  `tower` varchar(255) DEFAULT NULL,
  `flatno` varchar(255) DEFAULT NULL,
  `referralname` varchar(255) DEFAULT NULL,
  `referralprojectname` varchar(255) DEFAULT NULL,
  `referralbuildingname` varchar(255) DEFAULT NULL,
  `referralflatno` varchar(255) DEFAULT NULL,
  `referral_mobile` bigint(12) DEFAULT NULL,
  `visits` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `salesperson` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquirykp`
--

INSERT INTO `enquirykp` (`id`, `projectname`, `name`, `dob`, `contactno`, `email`, `address`, `location`, `city`, `occupation`, `companyname`, `typeofcompany`, `typeofbuyer`, `typeofflat`, `approxbudget`, `interestedinbuying`, `purposeOfInvestment`, `enquirysource`, `digitalsubsource`, `channelsubsource`, `exceutivename`, `exceutivenumber`, `existingclientname`, `cluster`, `tower`, `flatno`, `referralname`, `referralprojectname`, `referralbuildingname`, `referralflatno`, `referral_mobile`, `visits`, `remarks`, `salesperson`, `created_at`, `updated_at`) VALUES
(1, 'gdg', 'dgdg', 'dg', '9960482299', 'sf@f.h', 'dgd', 'dgd', 'dgd', 'fss', 'fs', 'ss', 'ss', 's', 's', 'fs', '', 'ss', 's', 's', 's', 's', 's', 'ss', 's', 's', 'ss', 's', 's', 's', 9960482299, 1, 'ssf', 'sf', '2022-05-07 09:54:59', '2022-05-07 09:54:59'),
(2, '$projectname', '$name', '$dob', '.$contactno.', '$email', '$address', '$location', '$city', '$occupation', '$companyname', '$typeofcompany', '$typeofbuyer', '$typeofflat', '$approxbudget', '$interestedinbuying', '', '$enquirysource', '$digitalsubsource', '$channelsubsource', '$exceutivename', '$exceutivenumber', '$existingclientname', '$cluster', '$tower', '$flatno', '$referralname', '$referralprojectname', '$referralbuildingname', '$referralflatno', 0, 1, '$remarks', '$salesPerson', '2022-05-07 11:22:12', '2022-05-07 11:22:12'),
(3, '$projectname', '$name', '$dob', '.$contactno.', '$email', '$address', '$location', '$city', '$occupation', '$companyname', '$typeofcompany', '$typeofbuyer', '$typeofflat', '$approxbudget', '$interestedinbuying', '', '$enquirysource', '$digitalsubsource', '$channelsubsource', '$exceutivename', '$exceutivenumber', '$existingclientname', '$cluster', '$tower', '$flatno', '$referralname', '$referralprojectname', '$referralbuildingname', '$referralflatno', 0, 1, '$remarks', '$salesPerson', '2022-05-08 07:24:24', '2022-05-08 07:24:24'),
(4, 'Prajwal', 'sfs', '2022-05-10', '9960480140', 'fsf@g.gh', 'hd', 'hd', 'h', 'salaried', 'hd', 'it', 'first timehomebuyer', '1 bhk', '30-40 lacs', '', '', 'Digital', 'MP_Digital_Walkin', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'dhhddh', 'test1', '2022-05-09 11:17:42', '2022-05-09 11:17:42'),
(5, 'Peninsula', 'sfsff', '2022-05-09', '9960480141', 'sfs@bg.gd', 'gdg', 'gdg', 'gd', 'salaried', 'gdg', 'it', 'first timehomebuyer', '1 bhk', '30-40 lacs', '', '', 'Digital', 'MP_Digital_Walkin', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'dgg', 'test1', '2022-05-09 11:23:46', '2022-05-09 11:23:46'),
(6, '$projectname', '$name', '$dob', '.$contactno.', '$email', '$address', '$location', '$city', '$occupation', '$companyname', '$typeofcompany', '$typeofbuyer', '$typeofflat', '$approxbudget', '$interestedinbuying', '$purposeOfInvestment', '$enquirysource', '$digitalsubsource', '$channelsubsource', '$exceutivename', '$exceutivenumber', '$existingclientname', '$cluster', '$tower', '$flatno', '$referralname', '$referralprojectname', '$referralbuildingname', '$referralflatno', 0, 1, '$remarks', '$salesPerson', '2022-05-10 07:47:36', '2022-05-10 07:47:36'),
(7, 'Prajwal', 'sgsg', '2022-05-11', '9960480156', 'fsfs@h.sgsg', 'sgg', 'sgsgs', 'gsgsg', 'salaried', 'gsgsg', 'it', 'first timehomebuyer', '2 bhk', '30-40 lacs', '', 'End-Use', 'Digital', 'MP_Digital_Walkin', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fsfsff', 'test1', '2022-05-10 10:56:44', '2022-05-10 10:56:44'),
(8, 'Prithvi', 'hemraj', '2022-05-12', '9960480159', 'hemrajswagh@gmail.com', 'camp', '1', '1', 'salaried', 'kumar', 'it', 'first timehomebuyer', '1 bhk', '30-40 lacs', '', 'End-Use', 'Digital', 'MP_Digital_Walkin', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'good', 'test1', '2022-05-10 15:34:04', '2022-05-10 15:34:04'),
(9, 'Prithvi', 'Hemraj ', '2022-05-05', '9699420068', 'hemrajswagh@gmail.com', 'CMp', '1', '1', 'salaried', 'Kumari ', 'it', 'first timehomebuyer', '1 bhk', '41-50 lacs', '', 'End-Use', 'Digital', 'MP_Digital_Walkin', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'Testing ', 'test1', '2022-05-10 15:40:12', '2022-05-10 15:40:12'),
(10, 'Peninsula', 'dadadad', '2022-05-04', '9960480160', 'ff@r.d', 'sgsgs', '1', '1', 'salaried', 'gsgsgsg', 'it', 'first timehomebuyer', '2 bhk', '41-50 lacs', '', 'End-Use', 'Digital', 'MP_Digital_Walkin', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'sgsgsgsgsgsgs', 'test1', '2022-05-10 16:52:51', '2022-05-10 16:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `feedback1`
--

CREATE TABLE `feedback1` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service_at_reception` varchar(255) NOT NULL,
  `show_flat_experience` varchar(255) NOT NULL,
  `site_visit_experience` varchar(255) NOT NULL,
  `sales_person_experience` varchar(255) NOT NULL,
  `suggestion_for_improvements` varchar(255) NOT NULL,
  `references1` varchar(255) NOT NULL,
  `references2` varchar(255) NOT NULL,
  `references3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback1`
--

INSERT INTO `feedback1` (`id`, `email`, `service_at_reception`, `show_flat_experience`, `site_visit_experience`, `sales_person_experience`, `suggestion_for_improvements`, `references1`, `references2`, `references3`) VALUES
(1, 'hemrajswagh@gmail.com', '4', '4', '4', '5', 'no', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(50) NOT NULL,
  `lead_name` varchar(250) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `service` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `created_At` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `lead_name`, `mobile`, `email`, `service`, `city`, `created_At`, `updated_at`) VALUES
(1, 'hemraj', '9960482299', 'hemrajswagh@mgail.com', 'Trademark', 'Pune', '2022-11-09 18:33:19', '2022-11-09 18:33:19'),
(2, 'hemraj2', '9960482299', 'hemrajswagh@mgail.com', 'Trademark', 'Pune', '2022-11-09 18:39:42', '2022-11-09 18:39:42'),
(3, 'hemraj', '1234567890', 'hemraj@gmail.com', 'Copyright', 'Pune', '2022-11-25 06:04:19', '2022-11-25 06:04:19'),
(4, 'hemraj wagh ', '1234567891', 'hemrajswagh@gmail.com', 'Patent', 'Pune', '2023-01-13 09:22:02', '2023-01-13 09:22:02'),
(5, 'hemraj wagh ', '1234567891', 'hemrajswagh@gmail.com', 'Trademark', 'Pune', '2023-01-13 09:32:09', '2023-01-13 09:32:09'),
(6, 'hemraj wagh ', '1234567891', 'hemrajswagh@gmail.com', 'Patent', 'Pune', '2023-01-13 09:33:40', '2023-01-13 09:33:40'),
(7, 'hemraj wagh', '1234567891', 'hemrajswagh@gmail.com', 'Patent', 'Pune', '2023-01-13 09:34:48', '2023-01-13 09:34:48'),
(8, 'hemraj wagh', '1234567890', 'hemrajswagh@gmail.com', 'Copyright', 'fsfsf', '2023-01-13 09:43:16', '2023-01-13 09:43:16'),
(9, 'hemraj waghfsfsfs', '1234567890', 'hemrajswagh@gmail.com', 'Trademark', 'fsfsf', '2023-01-13 09:43:54', '2023-01-13 09:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `lid` int(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`lid`, `lname`, `city`) VALUES
(1, 'Hadapsar', 'Pune'),
(2, 'Moshi', 'Pune'),
(3, 'Vidyavihar', 'Mumbai'),
(4, 'Kharadi', 'Pune'),
(5, 'Kondhwa', 'Pune'),
(6, 'Hinjewadi', 'Pune'),
(7, 'Alandi Road', 'Pune'),
(8, 'Ambegaon Budruk', 'Pune'),
(9, 'Anandnagar', 'Pune'),
(10, 'Aundh', 'Pune'),
(11, 'Aundh Road', 'Pune'),
(12, 'Balaji Nagar', 'Pune'),
(13, 'Baner', 'Pune'),
(14, 'Baner road', 'Pune'),
(15, 'Bhandarkar Road', 'Pune'),
(16, 'Bhavani Peth', 'Pune'),
(17, 'Bibvewadi', 'Pune'),
(18, 'Bopodi', 'Pune'),
(19, 'Budhwar Peth', 'Pune'),
(20, 'Bund Garden Road', 'Pune'),
(21, 'Camp', 'Pune'),
(22, 'Chandan Nagar', 'Pune'),
(23, 'Dapodi', 'Pune'),
(24, 'Deccan Gymkhana', 'Pune'),
(25, 'Dehu Road', 'Pune'),
(26, 'Dhankawadi', 'Pune'),
(27, 'Dhayari Phata', 'Pune'),
(28, 'Dhole Patil Road', 'Pune'),
(29, 'Erandwan', 'Pune'),
(30, 'Fatima Nagar', 'Pune'),
(31, 'Fergusson College Road', 'Pune'),
(32, 'Ganesh Peth', 'Pune'),
(33, 'Ganeshkhind', 'Pune'),
(34, 'Ghorpade Peth', 'Pune'),
(35, 'Ghorpadi', 'Pune'),
(36, 'Gokhale Nagar', 'Pune'),
(37, 'Gultekdi', 'Pune'),
(38, 'Guruwar peth', 'Pune'),
(39, 'Hadapsar Industrial Estate', 'Pune'),
(40, 'Hingne Khurd', 'Pune'),
(41, 'Jangali Maharaj Road', 'Pune'),
(42, 'Kalyani Nagar', 'PUne'),
(43, 'Karve Nagar', 'Pune'),
(44, 'Karve Road', 'Pune'),
(45, 'Kasba Peth', 'Pune'),
(46, 'Katraj', 'Pune'),
(47, 'Khadki', 'Pune'),
(48, 'Kharadi', 'Pune'),
(49, 'Kondhwa', 'Pune'),
(50, 'Kondhwa Budruk', 'Pune'),
(51, 'Kondhwa Khurd', 'Pune'),
(52, 'Koregaon Park', 'Pune'),
(53, 'Kothrud', 'Pune'),
(54, 'Law College Road', 'Pune'),
(55, 'Laxmi Road', 'Pune'),
(56, 'Lulla Nagar', 'Pune'),
(57, 'Mahatma Gandhi Road', 'Pune'),
(58, 'Mangalwar peth', 'Pune'),
(59, 'Manik Bagh', 'Pune'),
(60, 'Market yard', 'Pune'),
(61, 'Model colony', 'Pune'),
(62, 'Mukund Nagar', 'Pune'),
(63, 'Mundhawa', 'Pune'),
(64, 'Nagar Road', 'Pune'),
(65, 'Nana Peth', 'Pune'),
(66, 'Narayan Peth', 'Pune'),
(67, 'Narayangaon', 'Pune'),
(68, 'Navi Peth', 'Pune'),
(69, 'Padmavati', 'Pune'),
(70, 'Pashan', 'Pune'),
(71, 'Paud Road', 'Pune'),
(72, 'Pirangut', 'Pune'),
(73, 'Prabhat Road', 'Pune'),
(74, 'Pune Railway Station', 'Pune'),
(75, 'Rasta Peth', 'Pune'),
(76, 'Raviwar Peth', 'Pune'),
(77, 'Sadashiv Peth', 'Pune'),
(78, 'Sahakar Nagar', 'Pune'),
(79, 'Salunke Vihar', 'Pune'),
(80, 'Sasson Road', 'Pune'),
(81, 'Satara Road', 'Pune'),
(82, 'Senapati Bapat Road', 'Pune'),
(83, 'Shaniwar Peth', 'Pune'),
(84, 'Shivaji Nagar', 'Pune'),
(85, 'Shukrawar Peth', 'Pune'),
(86, 'Sinhagad Road', 'Pune'),
(87, 'Somwar Peth', 'Pune'),
(88, 'Swargate', 'Pune'),
(89, 'Tilak Road', 'Pune'),
(90, 'Uruli Devachi', 'Pune'),
(91, 'Vadgaon Budruk', 'Pune'),
(92, 'Wadgaon Sheri', 'Pune'),
(93, 'Viman Nagar', 'Pune'),
(94, 'Vishrant Wadi', 'Pune'),
(95, 'Wagholi', 'Pune'),
(96, 'Wakadewadi', 'Pune'),
(97, 'Wanowrie', 'Pune'),
(98, 'Warje', 'Pune'),
(99, 'Yerawada', 'Pune'),
(100, 'NIBM,Undri', 'Pune'),
(101, 'Mohamadwadi', 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_pass` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id`, `name`, `user_name`, `user_pass`) VALUES
(2, 'hemraj', 'hemrajswagh@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `otp_tbl`
--

CREATE TABLE `otp_tbl` (
  `id` int(11) NOT NULL,
  `mobile_no` varchar(11) DEFAULT NULL,
  `otp` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp_tbl`
--

INSERT INTO `otp_tbl` (`id`, `mobile_no`, `otp`) VALUES
(1, '9960480001', '476135'),
(2, '9960480005', '748360'),
(3, '9960480006', '582991'),
(4, '99604822007', '624632'),
(5, '9960482007', '392930'),
(6, '8446543484', '537797'),
(7, '9960480051', '10549'),
(8, '9011009236', '600368'),
(9, '8862078741', '842591'),
(10, '9960482299', '232750');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `pname`) VALUES
(2, 'Pratham');

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `sid` int(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `project` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`sid`, `sname`, `project`) VALUES
(1, 'Shubham Patni', 'Prithvi'),
(2, 'Ashraf Qureshi', 'Pratham'),
(4, 'Himanshu chhatraband', 'Pratham'),
(6, 'Vishank Anand', 'Prospera'),
(7, 'Bharka Dubey', 'Prospera'),
(8, 'Atul Rathod', 'Prospera'),
(9, 'Deepika', 'Prospera'),
(10, 'Ashraf Qureshi', 'Primavera'),
(11, 'Shubham Parate', 'Primavera'),
(12, 'Ashraf Qureshi', 'Prajwal'),
(13, 'Shubham Parate', 'Prajwal'),
(14, 'Jayesh Katake', 'Park Infinia'),
(15, 'Roshan Anand', 'Park Infinia'),
(16, 'Sumant Patle', 'Park Infinia'),
(17, 'Neha Kharva', 'Palm Spring Tower'),
(18, 'Asrar Qureshi', 'Palm Spring Tower'),
(19, 'Denis Michael', 'Palm Spring Tower'),
(20, 'Akshay', 'Palm Spring Tower'),
(21, 'Vivek Singh', 'Palm Spring Tower'),
(22, 'Neha Kharva', 'Princetown Royal'),
(23, 'Asrar Qureshi', 'Princetown Royal'),
(24, 'Denis Michael', 'Princetown Royal'),
(25, 'Akshay', 'Princetown Royal'),
(26, 'Vivek Singh', 'Princetown Royal'),
(27, 'Mayur Dudam', 'Priyadarshan'),
(28, 'Mayur Dudam', 'Peninsula'),
(29, 'Navin Gaur', 'Primus'),
(30, 'Navin Gaur', 'Siddhachal'),
(31, 'John Dsouza', 'Parasmani');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquirykp`
--
ALTER TABLE `enquirykp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback1`
--
ALTER TABLE `feedback1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_tbl`
--
ALTER TABLE `otp_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `enquirykp`
--
ALTER TABLE `enquirykp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback1`
--
ALTER TABLE `feedback1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `lid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `otp_tbl`
--
ALTER TABLE `otp_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `salesperson`
--
ALTER TABLE `salesperson`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
