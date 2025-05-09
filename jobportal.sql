-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 04:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7987979878, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-06-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `JobId` int(5) DEFAULT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Applydate`, `Status`, `ResponseDate`) VALUES
(1, 1, 2, '2020-06-11 13:54:07', 'Sorted', '2020-06-11 13:54:07'),
(2, 1, 3, '2020-06-04 11:54:10', 'Sorted', '2020-06-04 11:54:10'),
(3, 3, 7, '2020-09-02 18:16:54', 'Sorted', '2020-09-02 18:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Development - IT', 'Development -Information Technology.', '2018-09-03 06:32:34', '2020-06-05 11:53:56', 1),
(3, 'HR', 'Human resoucre', '2018-09-03 06:33:33', '0000-00-00 00:00:00', 1),
(5, 'Finance', 'Finance', '2020-06-05 11:26:40', '0000-00-00 00:00:00', 0),
(6, 'Admin', 'Adiminstrator', '2020-09-02 18:18:44', NULL, 0),
(7, 'SEO', 'Seo jobs', '2022-07-06 02:09:32', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Qualification` varchar(200) DEFAULT NULL,
  `ClgorschName` varchar(200) DEFAULT NULL,
  `PassingYear` varchar(200) DEFAULT NULL,
  `Stream` varchar(200) DEFAULT NULL,
  `CGPA` decimal(2,0) DEFAULT NULL,
  `Percentage` decimal(4,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `Qualification`, `ClgorschName`, `PassingYear`, `Stream`, `CGPA`, `Percentage`, `CreationDate`) VALUES
(1, 1, '10th std', 'Tulsi Vidya Niketan', '2010', 'Science', '7', '79', '2020-06-03 11:27:01'),
(2, 1, '12th std', 'Tulsi Vidya Niketan', '2012', 'PCM', '6', '67', '2020-06-03 11:29:10'),
(3, 1, 'Graduation', 'IIMT Merrut', '2016', 'B.Tech', '7', '79', '2020-06-03 11:33:09'),
(4, 3, '10th std', 'Sunrise Public School', '2005', '', '9', '75', '2020-09-02 18:12:33'),
(5, 3, '12th std', 'Nihar Meera Public School', '2007', 'PCM', '9', '78', '2020-09-02 18:13:42'),
(6, 3, 'Graduation', 'LPU', '2012', 'IT', '7', '65', '2020-09-02 18:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `ConcernPerson` varchar(150) DEFAULT NULL,
  `EmpEmail` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `CompnayName` varchar(255) DEFAULT NULL,
  `CompanyTagline` mediumtext DEFAULT NULL,
  `CompnayDescription` mediumtext DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  `CompnayLogo` varchar(200) DEFAULT NULL,
  `noOfEmployee` char(10) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `typeBusinessEntity` varchar(255) DEFAULT NULL,
  `lcation` varchar(255) DEFAULT NULL,
  `establishedIn` char(200) DEFAULT NULL,
  `RegDtae` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployers`
--

INSERT INTO `tblemployers` (`id`, `ConcernPerson`, `EmpEmail`, `EmpPassword`, `CompnayName`, `CompanyTagline`, `CompnayDescription`, `CompanyUrl`, `CompnayLogo`, `noOfEmployee`, `industry`, `typeBusinessEntity`, `lcation`, `establishedIn`, `RegDtae`, `LastUpdationDate`, `Is_Active`) VALUES
(1, 'Anuj kumar', 'official@gmail.com', '$2y$12$Y4pEX6/8NraaNKAAQ9TW3ObU9YEG1W8ygyrjyT.YyHqRGyb8B7TYK', 'hp', 'Don\'t be afraid of source code', '<span style=\"color: rgb(29, 33, 41); font-family: Georgia, serif; font-size: 17px; white-space: pre-wrap;\">LLP</span>', 'https://XYZ.com/', '6ffdd42a2c60069b5e21ea2ec21ba319.png', '5', 'Education', 'LLP', 'New Delhi, India', '2015', '2020-06-01 18:30:00', '2022-07-06 02:13:26', 1),
(2, 'John Doe', 'johndoe@test.com', '$2y$12$nXkgst8pnbalhqLftgocnuy8737IoNc2SC3ZTs7mDOavyX6bunZaS', 'Apple', 'Think beyond imagination', 'Lorem ipsum dolor sit amet, te ullum persecuti nam, ne vim lorem virtute. Summo abhorreant eos ei. Mel epicurei adversarium in, quodsi inermis gubergren sit ea. Sale aeque decore te quo, erant placerat concludaturque sit ex. Omnis malis assum cu vim. Vis cu nominati praesent dignissim, quo solum ludus regione ei. Ut mel denique lucilius.\r\n\r\nEi sit noster delectus, id qui inani detracto hendrerit, sed in nulla vidisse. His diceret feugait maluisset ut, pri id aperiri placerat insolens. Ad inermis vivendo maluisset vis, ius ei simul partem constituto. Ei affert euismod aliquando his, duo fabulas perpetua voluptatibus ut. Et vim vocibus docendi, eam cibo iuvaret evertitur ex, no adhuc malorum explicari ius. Pro augue suavitate tincidunt ex, pro in legere dicunt denique.', 'https://www.apple.com/in/', '80997ccfaf84ad6b5969bc0ee4c3a59b.jpg', NULL, NULL, NULL, NULL, NULL, '2020-05-31 18:30:00', '2020-06-08 06:57:00', 1),
(3, 'Anuj Kumar', 'tcs@test.com', '$2y$12$BIu47aSN0S16.Jar1A2oKuOFy6pV4t8WJD3XC1h0ZXEQy4msRJbci', 'TCS', 'Information Technology', 'Tata Consultancy Services', 'http://tcs.com', 'd657a1ed79a3a39a0cff0628959bee52.png', '10000', 'IT', 'Pvt Ltd', 'New Delhi India', '2000', '2020-09-01 18:30:00', '2020-09-03 02:18:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexperience`
--

CREATE TABLE `tblexperience` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `EmployerName` varchar(200) DEFAULT NULL,
  `EmployementType` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Ctc` decimal(10,0) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblexperience`
--

INSERT INTO `tblexperience` (`ID`, `UserID`, `EmployerName`, `EmployementType`, `Designation`, `Ctc`, `FromDate`, `ToDate`, `Skills`, `CreationDate`) VALUES
(1, 1, 'ABC PVT LTD', 'Full Time', 'Software Developer', '50000', '2012-06-05', '2014-09-07', 'PHP,PDO', '2020-06-03 11:12:01'),
(2, 1, 'PAL pvt ltd', 'Full Time', 'Software Developer', '60000', '2014-09-08', '2018-06-09', 'PHP,PDO', '2020-06-03 11:14:41'),
(3, 1, 'FALT pvt ltd', 'Full Time', 'Software Developer', '75000', '2019-09-08', '', 'PHP, PDO', '2020-06-03 11:17:54'),
(4, 1, 'HMT Pvt ltd', 'fulltime', 'Software Developer', '75000', '2020-01-09', '', 'PHP, PDO, HTML, Excel', '2020-06-03 12:12:40'),
(5, 3, 'ABC', 'Fulltimw', 'Software Developer', '25000', '2019-07-02', '2020-02-29', '', '2020-09-02 18:15:05'),
(6, 3, 'XYZ', 'Fulltime', 'Software Developer', '40000', '2020-03-01', '2020-09-02', '', '2020-09-02 18:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobType` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `skillsRequired` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `JobExpdate` date DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobs`
--

INSERT INTO `tbljobs` (`jobId`, `employerId`, `jobCategory`, `jobTitle`, `jobType`, `salaryPackage`, `skillsRequired`, `experience`, `jobLocation`, `jobDescription`, `JobExpdate`, `postinDate`, `updationDate`, `isActive`) VALUES
(2, 1, 'Development - IT', 'PHP Developer', 'Full Time', '4000-10000', 'PHP, MYSQl, HTML, CI', '1-2', 'New York, California', 'Desired Candidate Profile\r\n-<div>Expertise in Core PHP and MVC Frameworks like Codeigniter and Laravel&nbsp;</div><div>-CMS Experience (WordPress, Magento, Joomla) is preferred. \r\n-Experience with SOAP, REST or JSON is preferred&nbsp;</div><div>-Experience with Git and Ubuntu is preferred.</div>', '2020-06-19', '2018-09-29 07:01:21', '2020-06-03 14:37:38', 1),
(3, 1, 'HR', 'HR Executive', 'Contract', '1000-5000', 'Executive Training, Induction, Employee Relations', '1-2', 'Hyderabad', 'Plan,develop&amp; implement strategy for employee life cycle\r\nPerformance Management.&nbsp;<div>Learning &amp; development for New Joiner\r\nSuccession planning.&nbsp;</div><div>Employee Engagement.&nbsp;</div><div>Implementing HR Performance Matrices across different process\r\nBuilding the Employer Brand</div>', '2020-07-05', '2018-09-29 07:17:54', '2020-06-03 14:38:28', 1),
(4, 1, 'Development - IT', 'Java Developer', 'Full Time', '5000-10000', 'Core Java, SQL, HTML', '2-4', 'New Delhi, Banglore', '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">In depth knowledge and application of Java, J2EE, JSP, Servlets, JDBC, Spring Framework, Struts framework, EJB and JavaScript</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Proficient understanding of web mark-up, including HTML5 and CSS3</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Experience in developing AJAX interfaces with AJAX libraries and frameworks (e.g. JQuery, AngularJS, etc.)</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Understanding of web services technologies such as REST, SOAP, HTTP, JSON</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Thorough understanding of usage of the fundamental concepts like Exception Handling, Static block/variables/classes, OOPS concepts, Collections, Multi-Threading, http sessions, session handling, Servlets/JSP life cycle, JDBC, actions, events, implicit objects, custom tags, context</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Exposure to an industry-standard database (Oracle or Sybase) on a UNIX platform with awareness of database design and SQL scripting knowledge and performance tuning</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Awareness of application servers /webservers (Weblogic , JBoss and iPlanet)</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Work experience in testing frameworks like Junit, TestNG</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Work experience on the transactional applications for low latency, high availability uses is a plus</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Ability to work in a fast-paced and agile development environment and to learn new frameworks/stacks</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Swings/.Net/C# knowledge is a plus</span>', '2020-08-09', '2018-09-29 13:03:37', '2020-06-03 14:38:57', 1),
(7, 3, 'Development - IT', 'Software Application Developer', 'Full Time', '80000-100000', 'PHP, MySQL, HTML, Bootstrap', '3-7', 'Noida', 'Software Application Developer', '2020-09-30', '2020-09-02 18:08:39', '2020-09-02 18:09:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Resume` varchar(150) DEFAULT NULL,
  `AboutMe` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobseekers`
--

INSERT INTO `tbljobseekers` (`id`, `FullName`, `EmailId`, `ContactNumber`, `Password`, `Resume`, `AboutMe`, `ProfilePic`, `Skills`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(1, 'Test', 'test@gmail.com', 1234567890, '$2y$12$3TLhf0ZbaRVduNapypRm1e7Ej848kgO.oJrQMwSpnvNZ/CWp4i0fe', '5c1894c1c2cddf44fb0fb17d136da6ac1585219175.pdf', '“I graduated with my degree in Economics two months ago. I chose that field of study because I’ve always been interested in finance and money, and a couple of family members told me it leads to great career options, too.”', 'e76de47f621d84adbab3266e3239baee1591629612.png', 'PHP, HTML, PDO', '2020-03-26 10:39:35', '2020-08-19 01:18:28', 1),
(2, 'Sarita', 'sarita@gmail.com', 9878979879, '$2y$12$A.hc1lnvQEx/yJmqdAtFveJDy/4YrmXErdh0rAs8YfZXGFAMQdu/i', '7b46decdf5055deead5bda75bca512521591076613.pdf', NULL, NULL, 'PHP, CodeIgniter', '2020-06-02 05:43:33', '2020-09-02 17:24:04', 1),
(3, 'Amit kumar', 'amit@gmail.com', 1234567809, '$2y$12$aheE1CSIbEVme0ARE2uIIec87h3oaYFpxPcjFWX2wErgD6LZK0Xh.', '40bf149da9a78c763a3a67998190a9431599070214.pdf', '5 Year Exp in Software Development', 'bd2c05722d8766fe480f3ae726111bec1599070279.jpg', 'php, mysql, HTML', '2020-09-02 18:10:14', '2020-09-02 19:05:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `JobID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `JobID`, `UserID`, `Message`, `Status`, `ResponseDate`) VALUES
(1, 3, 1, 'Your resume has been sort listed. Kindly comes with original documents at a time.', 'Sorted', '2020-06-11 13:54:25'),
(2, 2, 1, 'You are sort listed comes with your original document', 'Sorted', '2020-08-31 18:30:00'),
(3, 7, 3, 'Sort listed', 'Sorted', '2020-09-01 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div class=\"iw-heading  style1 vc_custom_1511523196571 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 35px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px; font-weight: 600;\">Our job portal creates an opportunity for both job seekers and organizations to embrace an easy employment process. Users can register for free on this job portal and they can receive different job posting and updates that is related to their career search or their specific field.</div></div><div class=\"iw-heading  style1 vc_custom_1511523484678 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 30px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px;\">As an organization, you can make use of our job portal to post different job openings as well as use them for searching for the most deserving candidates for vacancies. This helps to save time and help streamline the right candidate for a particular job.<br style=\"outline: none; box-sizing: border-box;\">Who can use our online job portal?<br style=\"outline: none; box-sizing: border-box;\">Our job portal can be used by both organization to post job openings and job seekers to find the job of their choice. Our job portal creates a platform for people seeking for job opportunities as well as corporations seeking best candidates for job openings, to come together.<br style=\"outline: none; box-sizing: border-box;\">At www.job-here.com, we are one of the best job sites and we also have provisions that make it possible for them to collect the required knowledge and background of each company or candidate. All the jobs are categorically organized in groups related to each field and industry. Job portals, also known as Career portals have aided numerous job seekers get suitable work and given a boost to their career growth.<br style=\"outline: none; box-sizing: border-box;\">So do not hesitate to explore your career opportunities with our job portal and give your career the elevation that you have always been waiting for.</div></div>', '2020-06-05 12:18:06', 0, '2020-06-05 11:00:55'),
(2, 'contactus', 'Contact Us', 'Gulbarga', 'info@gmail.com', 1234567890, '2022-07-06 02:09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
