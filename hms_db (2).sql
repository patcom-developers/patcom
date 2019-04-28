-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2019 at 01:47 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounthead_master`
--

CREATE TABLE `accounthead_master` (
  `accountheadid` int(11) NOT NULL,
  `schedule` varchar(200) NOT NULL,
  `subschedule` varchar(200) NOT NULL,
  `accountheadname` varchar(200) NOT NULL,
  `openingbalances` varchar(200) NOT NULL,
  `closingbalances` varchar(200) NOT NULL,
  `costcentet` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounthead_master`
--

INSERT INTO `accounthead_master` (`accountheadid`, `schedule`, `subschedule`, `accountheadname`, `openingbalances`, `closingbalances`, `costcentet`) VALUES
(1, 'Item 1', 'BALANCES PAYABLE ON DEMAND', 'dental ', '', '', 'LABORATORY'),
(2, 'CURRENT ASSET', 'BALANCES PAYABLE ON DEMAND', 'dental income', '', '', 'LABORATORY'),
(3, 'CURRENT ASSET', 'BALANCES PAYABLE ON DEMAND', 'PHARMACY INCOME', '', '', 'LABORATORY');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `productgroup` varchar(200) NOT NULL,
  `displayorder` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`categoryid`, `catname`, `productgroup`, `displayorder`) VALUES
(1, 'MEDICAL ITEMS', 'LAB', '');

-- --------------------------------------------------------

--
-- Table structure for table `classification_master`
--

CREATE TABLE `classification_master` (
  `classficationid` int(11) NOT NULL,
  `classificationname` varchar(200) NOT NULL,
  `groupitem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `costcenter`
--

CREATE TABLE `costcenter` (
  `costcenter_id` int(11) NOT NULL,
  `cost_center` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costcenter`
--

INSERT INTO `costcenter` (`costcenter_id`, `cost_center`) VALUES
(1, 'PHARMACY'),
(2, 'LAB'),
(3, 'OPERATION THEATRE'),
(4, 'OUTPATIENT'),
(5, 'INPATIENT'),
(6, 'SALARIES AND WAGES');

-- --------------------------------------------------------

--
-- Table structure for table `doctorselection`
--

CREATE TABLE `doctorselection` (
  `seleid` int(11) NOT NULL,
  `doctorname` varchar(200) NOT NULL,
  `opnumber` varchar(200) NOT NULL,
  `visitdate` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `secondname` varchar(200) NOT NULL,
  `phistory` varchar(1000) NOT NULL,
  `pcomplains` varchar(1000) NOT NULL,
  `findings` varchar(200) NOT NULL,
  `servicename` varchar(200) NOT NULL,
  `serviceprice` varchar(200) NOT NULL,
  `outlet` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `Setlement_status` varchar(200) NOT NULL,
  `timestarted` varchar(200) NOT NULL,
  `timefinished` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosage_master`
--

CREATE TABLE `dosage_master` (
  `dosageid` int(11) NOT NULL,
  `dosagename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosage_master`
--

INSERT INTO `dosage_master` (`dosageid`, `dosagename`) VALUES
(1, 're'),
(2, 'tyy'),
(3, 'sdg'),
(4, 'after meal');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `thirdname` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `logid` varchar(200) NOT NULL,
  `gurdian` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `nationalid` varchar(200) NOT NULL,
  `maritalstatus` varchar(200) NOT NULL,
  `spousename` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `postcode` varchar(200) NOT NULL,
  `dofjoining` varchar(200) NOT NULL,
  `terminated` varchar(200) NOT NULL,
  `terminateddate` varchar(200) NOT NULL,
  `currentbranch` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `doctorlist` varchar(200) NOT NULL,
  `salaryacount` varchar(200) NOT NULL,
  `automaticduty` varchar(200) NOT NULL,
  `dutylocation` varchar(200) NOT NULL,
  `saturdayshift` varchar(200) NOT NULL,
  `offdutyday` varchar(200) NOT NULL,
  `bankname` varchar(200) NOT NULL,
  `bankaccountname` varchar(200) NOT NULL,
  `accountnumber` varchar(200) NOT NULL,
  `nhifnumber` varchar(200) NOT NULL,
  `nssfnumber` varchar(200) NOT NULL,
  `salarygloss` varchar(200) NOT NULL,
  `netsalary` varchar(200) NOT NULL,
  `paye` varchar(200) NOT NULL,
  `nhifamount` varchar(200) NOT NULL,
  `nssfamount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `fname`, `sname`, `thirdname`, `image`, `logid`, `gurdian`, `gender`, `nationalid`, `maritalstatus`, `spousename`, `dob`, `address`, `location`, `postcode`, `dofjoining`, `terminated`, `terminateddate`, `currentbranch`, `category`, `department`, `designation`, `doctorlist`, `salaryacount`, `automaticduty`, `dutylocation`, `saturdayshift`, `offdutyday`, `bankname`, `bankaccountname`, `accountnumber`, `nhifnumber`, `nssfnumber`, `salarygloss`, `netsalary`, `paye`, `nhifamount`, `nssfamount`) VALUES
(11, 'Patrick', 'Nyoike', 'Ngumi', '', 'ngumi', '', 'Male', '', 'Single', '', '', '', '', '', '', 'null', '', '', 'null', 'null', 'null', 'YES', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', ''),
(12, 'serah ', 'wanjiru', 'none', '', 'sarah', '', 'Female', '', 'Married', '', '', '', '', '', '', 'No', '', '', 'null', 'null', 'null', 'YES', 'null', 'yes', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', ''),
(13, 'james', 'njoroge', 'kamau', '', 'kamau', '', 'Male', '', 'Single', '', '', '', '', '', '', 'null', '', '', 'null', 'null', 'null', 'YES', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gl_chart`
--

CREATE TABLE `gl_chart` (
  `glid` int(11) NOT NULL,
  `GL_number` varchar(200) NOT NULL,
  `GL_name` varchar(200) NOT NULL,
  `GL_description` varchar(200) NOT NULL,
  `GL_type` varchar(200) NOT NULL,
  `GL_use` varchar(200) NOT NULL,
  `GL_balancetype` varchar(200) NOT NULL,
  `is_subaccount` varchar(200) NOT NULL,
  `GL_parent_account` varchar(200) NOT NULL,
  `subaccount_interval` varchar(200) NOT NULL,
  `GL_account_level` varchar(200) NOT NULL,
  `Currency` varchar(200) NOT NULL,
  `Currency_exchange_rate` varchar(200) NOT NULL,
  `GL_account_balance` varchar(200) NOT NULL,
  `opening_balance` varchar(200) NOT NULL,
  `asofdate` varchar(200) NOT NULL,
  `GL_notes` varchar(200) NOT NULL,
  `GL_equity_account` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gl_chart`
--

INSERT INTO `gl_chart` (`glid`, `GL_number`, `GL_name`, `GL_description`, `GL_type`, `GL_use`, `GL_balancetype`, `is_subaccount`, `GL_parent_account`, `subaccount_interval`, `GL_account_level`, `Currency`, `Currency_exchange_rate`, `GL_account_balance`, `opening_balance`, `asofdate`, `GL_notes`, `GL_equity_account`) VALUES
(1, '1000-20001', 'adjustment', '', 'Account payables', '', '', 'Not sub account', 'Item 1', '', '', '', '0.00', '0.00', '0.00', '', '', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE `group_master` (
  `groupid` int(11) NOT NULL,
  `grouptype` varchar(200) NOT NULL,
  `groupname` varchar(200) NOT NULL,
  `groupitem` varchar(200) NOT NULL,
  `outlet` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`groupid`, `grouptype`, `groupname`, `groupitem`, `outlet`) VALUES
(27, 'Service', 'MINOR PROCEDURE', 'NURSING', 'Item 1'),
(28, 'Service', 'DENTAL PROCEDURE', 'DENTAL', 'Item 1'),
(29, 'Service', 'LAB', 'LABORATORY', 'Item 1'),
(30, 'Service', 'CT-SCAN', '', 'Item 1'),
(31, 'Service', 'MRI-SCAN', '', 'Item 1'),
(32, 'Service', 'ULTRASOUND', '', 'Item 1'),
(33, 'Service', 'OPG', '', 'Item 1'),
(34, 'Service', 'PHYSIOTHERAPY', 'PHYSIOTHERAPY', 'Item 1'),
(35, 'Service', 'MINOR PROCEDURE', 'MINOR PROCEDURE', 'Item 1'),
(36, 'Service', 'HAEMODIALYSIS', 'HAEMODIALYSIS', 'Item 1'),
(37, 'Service', 'X-RAY', 'X RAY', 'Item 1'),
(38, 'Item', 'MEDICINE', '', 'Item 1');

-- --------------------------------------------------------

--
-- Table structure for table `itemmaster`
--

CREATE TABLE `itemmaster` (
  `itemid` int(11) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `productgroup` varchar(200) NOT NULL,
  `groupitem` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `classification` varchar(200) NOT NULL,
  `servicetype` varchar(200) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `consumable` varchar(200) NOT NULL,
  `billable` varchar(200) NOT NULL,
  `productblocked` varchar(200) NOT NULL,
  `cashrate` varchar(200) NOT NULL,
  `insurance` varchar(200) NOT NULL,
  `reasonblocking` varchar(200) NOT NULL,
  `packing` varchar(200) DEFAULT NULL,
  `uom` varchar(200) DEFAULT NULL,
  `conversionfactor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemmaster`
--

INSERT INTO `itemmaster` (`itemid`, `productname`, `productgroup`, `groupitem`, `category`, `classification`, `servicetype`, `dosage`, `consumable`, `billable`, `productblocked`, `cashrate`, `insurance`, `reasonblocking`, `packing`, `uom`, `conversionfactor`) VALUES
(66, 'root canal removal', 'DENTAL PROCEDURE', 'DENTAL', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '', '', '', '', '', ''),
(67, 'papsmear', 'LAB', 'LABORATORY', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '', '', '', '', '', ''),
(68, 'abdominal', 'ULTRASOUND', '', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '500', '1000', '', '', '', ''),
(69, 'citiolo', 'CT-SCAN', '', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '900', '1000', '', '', '', ''),
(70, 'citi', 'CT-SCAN', '', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '800', '500', '', '', '', ''),
(71, 'opg', 'OPG', '', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '600', '3300', '', '', '', ''),
(72, 'mri', 'MRI-SCAN', '', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '800', '5000', '', '', '', ''),
(73, 'physio', 'PHYSIOTHERAPY', 'PHYSIOTHERAPY', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '500', '1000', '', '', '', ''),
(74, 'haemo', 'HAEMODIALYSIS', '', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '900', '7000', '', '', '', ''),
(75, 'xray', 'X-RAY', 'X RAY', 'null', 'null', 'null', 'null', '', 'null', 'Item 1', '966', '855', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `productname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`productname`) VALUES
('uiuiui'),
('uiuiui'),
('klklk'),
('llll'),
('pppp');

-- --------------------------------------------------------

--
-- Table structure for table `logintb`
--

CREATE TABLE `logintb` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintb`
--

INSERT INTO `logintb` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `markup`
--

CREATE TABLE `markup` (
  `markupid` int(11) NOT NULL,
  `markupprice` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markup`
--

INSERT INTO `markup` (`markupid`, `markupprice`) VALUES
(1, '1.33');

-- --------------------------------------------------------

--
-- Table structure for table `master_doctor`
--

CREATE TABLE `master_doctor` (
  `master_doctorid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `registrationfee` varchar(200) NOT NULL,
  `private_patientconsultation` varchar(200) NOT NULL,
  `consultationfee` varchar(200) NOT NULL,
  `admisionallowed` varchar(200) NOT NULL,
  `display_inregistration` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_doctor`
--

INSERT INTO `master_doctor` (`master_doctorid`, `name`, `department`, `registrationfee`, `private_patientconsultation`, `consultationfee`, `admisionallowed`, `display_inregistration`) VALUES
(1, 'Patrick Nyoike Ngumi', 'null', '50', '600', '300', 'Yes', 'Yes'),
(2, 'serah  wanjiru none', 'null', '50', '1000', '30', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `opbilling`
--

CREATE TABLE `opbilling` (
  `opdbilledid` int(200) NOT NULL,
  `opnumber` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `billeditem` varchar(200) NOT NULL,
  `outlet` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `billid` varchar(200) NOT NULL,
  `billdate` varchar(200) NOT NULL,
  `glosamount` varchar(200) NOT NULL,
  `netamount` varchar(200) NOT NULL,
  `avoidedamount` text NOT NULL,
  `discount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opbilling`
--

INSERT INTO `opbilling` (`opdbilledid`, `opnumber`, `name`, `doctor`, `billeditem`, `outlet`, `amount`, `billid`, `billdate`, `glosamount`, `netamount`, `avoidedamount`, `discount`) VALUES
(1, 'STMMH-L/OP/90', 'kanyi johnson', 'Item 1', 'OPERATION', 'MAJOR PROCEDURE', '500', '39', 'Aug 1, 2018', '1390', '1390', '0', ''),
(2, 'STMMH-L/OP/90', 'kanyi johnson', 'Item 1', 'ghghgfhghg', 'OPG-SCAN', '890', '40', 'Aug 1, 2018', '1390', '1390', '0', ''),
(3, 'STMMH-L/OP/90', 'kanyi johnson', 'Item 1', 'stitching', 'NURSING PROCEDURE', '322', '56', 'Aug 1, 2018', '322', '322', '0', ''),
(4, 'STMMH-L/OP/89', 'ka,jprp mesadg', 'Item 1', 'molar  removal', 'DENTAL SERVICE PROCEDURE', '20', '57', 'Jul 28, 2018', '20', '20', '0', ''),
(5, 'STMMH-L/OP/90', 'kanyi johnson', 'Item 1', 'stitching', 'NURSING PROCEDURE', '322', '56', 'Aug 1, 2018', '1154', '1154', '0', ''),
(6, 'STMMH-L/OP/90', 'kanyi johnson', 'Item 1', 'hpyrori', 'LAB', '800', '58', 'Aug 1, 2018', '1154', '1154', '0', ''),
(7, 'STMMH-L/OP/90', 'kanyi johnson', 'Item 1', 'hpiroly', 'LAB', '32', '59', 'Aug 1, 2018', '1154', '1154', '0', ''),
(8, 'STMMH-L/OP/82', 'patrick  nyoike', 'Item 1', 'hpyrori', 'LAB', '800', '60', 'Jul 5, 2018', '800', '800', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `opipformart`
--

CREATE TABLE `opipformart` (
  `opipid` int(11) NOT NULL,
  `opidformat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opipformart`
--

INSERT INTO `opipformart` (`opipid`, `opidformat`) VALUES
(4, 'STMMH/');

-- --------------------------------------------------------

--
-- Table structure for table `outlet_master`
--

CREATE TABLE `outlet_master` (
  `outletid` int(11) NOT NULL,
  `outletname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet_master`
--

INSERT INTO `outlet_master` (`outletid`, `outletname`) VALUES
(1, 'pharmacy'),
(2, 'PHARMACY'),
(3, 'RADIOLOGY'),
(4, 'OPD');

-- --------------------------------------------------------

--
-- Table structure for table `packing_master`
--

CREATE TABLE `packing_master` (
  `packingid` int(11) NOT NULL,
  `packing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packing_master`
--

INSERT INTO `packing_master` (`packingid`, `packing`) VALUES
(1, 'bottles'),
(2, 'tablets'),
(3, 'capsules');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` varchar(50) NOT NULL,
  `Patientname` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gen` text NOT NULL,
  `BG` text NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `Patientname`, `Fathername`, `Address`, `ContactNo`, `Email`, `Age`, `Gen`, `BG`, `Remarks`) VALUES
('P-1', 'Rahul', 'Ajay', 'Indore', '8765654567', 'rahul@gmail.com', 23, 'M', 'A+', '');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmode`
--

CREATE TABLE `paymentmode` (
  `paymentid` int(11) NOT NULL,
  `paymentmode` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentmode`
--

INSERT INTO `paymentmode` (`paymentid`, `paymentmode`) VALUES
(1, 'cash'),
(2, 'cash'),
(3, ''),
(4, 'M-PESA'),
(5, 'CHEQUE');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacyrequests`
--

CREATE TABLE `pharmacyrequests` (
  `pharmacybillid` int(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `visit_p` varchar(200) NOT NULL,
  `p_age` varchar(200) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `opnumber` varchar(200) NOT NULL,
  `visit_date` varchar(200) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `uom` varchar(200) NOT NULL,
  `frequency` varchar(200) NOT NULL,
  `numdays` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `routeadmin` varchar(200) NOT NULL,
  `remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacyrequests`
--

INSERT INTO `pharmacyrequests` (`pharmacybillid`, `f_name`, `s_name`, `visit_p`, `p_age`, `doctor`, `opnumber`, `visit_date`, `p_name`, `dosage`, `uom`, `frequency`, `numdays`, `qty`, `routeadmin`, `remarks`) VALUES
(1, 'ka,jprp', 'mesadg', 'CONSULTANT CLINIC', 'Jul 26, 2018 Age:', 'Item 1', 'STMMH-L/OP/89', 'Jul 28, 2018', 'ACETAZOLAMIDE TABLETS 250MG', '1', 'tablets', '', '4', '23', 'tablets', 're'),
(2, 'ka,jprp', 'mesadg', 'CONSULTANT CLINIC', 'Jul 26, 2018 Age:', 'Item 1', 'STMMH-L/OP/89', 'Jul 28, 2018', 'BENZHEXOL HYDROCHLORIDE TABLETS 5MG', '1', 'tablets', '', '5', '23', 'tablets', 're'),
(3, 'john', 'kamau', 'CONSULTANT CLINIC', 'Sep 4, 1987 Age:63', 'Item 1', 'STMMH-L/OP/91', '12 / 09 / 2018', 'ACETAZOLAMIDE TABLETS 250MG', '1', 'tablets', '', '3', '', 'tablets', 're'),
(4, 'john', 'kamau', 'CONSULTANT CLINIC', 'Sep 4, 1987 Age:63', 'Item 1', 'STMMH-L/OP/91', '12 / 09 / 2018', 'BUFFER TABLETS PH 7.0', '2', 'tablets', '', '5', '', 'tablets', 're'),
(5, 'alice', 'wangari', 'ANC CLINIC', 'Sep 8, 2006 Age:', 'serah  wanjiru none', 'STMMH-L/OP/94', '21 / 09 / 2018', 'ACETAZOLAMIDE TABLETS 250MG', '', 'tablets', '', '', '', 'tablets', 're');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_category_master`
--

CREATE TABLE `purchase_category_master` (
  `purchase_category_masterid` int(11) NOT NULL,
  `Purchase_category` varchar(200) NOT NULL,
  `cost_center` varchar(200) NOT NULL,
  `Warehouse` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_category_master`
--

INSERT INTO `purchase_category_master` (`purchase_category_masterid`, `Purchase_category`, `cost_center`, `Warehouse`) VALUES
(4, 'Medicines', 'PHARMACY', '');

-- --------------------------------------------------------

--
-- Table structure for table `p_registration`
--

CREATE TABLE `p_registration` (
  `regid` int(11) NOT NULL,
  `customertype` varchar(200) NOT NULL,
  `opdcardnum` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `secondname` varchar(200) NOT NULL,
  `thirdname` varchar(200) NOT NULL,
  `nationalid` varchar(200) NOT NULL,
  `staffid` varchar(200) NOT NULL,
  `customerid` varchar(200) NOT NULL,
  `opnumber` varchar(200) NOT NULL,
  `scheme` varchar(200) NOT NULL,
  `policynumber` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `mobilenum` varchar(200) NOT NULL,
  `dateofbirth` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `maritalstatus` varchar(200) NOT NULL,
  `mlc` varchar(200) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `reffered` varchar(200) NOT NULL,
  `visitpurpose` varchar(200) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `regfee` varchar(200) NOT NULL,
  `consultationfee` varchar(200) NOT NULL,
  `copay` varchar(200) NOT NULL,
  `reservedpayment` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `datevisited` varchar(200) NOT NULL,
  `cashcollected` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_registration`
--

INSERT INTO `p_registration` (`regid`, `customertype`, `opdcardnum`, `firstname`, `secondname`, `thirdname`, `nationalid`, `staffid`, `customerid`, `opnumber`, `scheme`, `policynumber`, `address`, `location`, `mobilenum`, `dateofbirth`, `age`, `maritalstatus`, `mlc`, `occupation`, `reffered`, `visitpurpose`, `doctor`, `regfee`, `consultationfee`, `copay`, `reservedpayment`, `time`, `datevisited`, `cashcollected`) VALUES
(126, 'General', '677', 'john', 'kama', '', '', '', '', 'STMMH/4', '', '', '', '', '', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(127, 'General', '', '', '', '', '', '', '', 'STMMH/2', '', '', '', '', '', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(128, 'General', '522', 'john', 'kamojo', 'kahiu', '', '', '', 'STMMH/3', '', '', '', '', '0717594932', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(129, 'General', '', '', '', '', '', '', '', 'STMMH/4', '', '', '', '', '', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(130, 'General', '567', 'patrick', 'nyoike', 'ngumi', '28420272', '1145', '', 'STMMH/5', '', '', '360', 'sagana', '0763594932', 'Dec 6, 1982', '26', 'Single', 'burnin', 'lalyer', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(131, 'General', '', '', '', '', '', '', '', 'STMMH/6', '', '', '', '', '', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(132, 'General', '', '', '', '', '', '', '', 'STMMH/7', '', '', '', '', '', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(133, 'General', '678', 'kamanu', 'njoroge', '', '', '', '', 'STMMH/8', '', '', '456', '', '', '', '', 'Single', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', ''),
(134, 'General', '455', 'EVANLS', 'KIMEDERO', 'GAKUYO', '989', '9898', '', 'STMMH/9', '', '', '6777', 'KIDII', '123456', 'Dec 7, 2001', '56', 'Married', '', '', 'Self', 'ANC CLINIC', 'Item 1', '', '', '', '', '11:02:55  AM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `receive_purchases`
--

CREATE TABLE `receive_purchases` (
  `purchase_id` int(11) NOT NULL,
  `Purchase_category` varchar(200) NOT NULL,
  `vendor` varchar(200) NOT NULL,
  `invoicenumber` varchar(200) NOT NULL,
  `invoicedat` varchar(200) NOT NULL,
  `paymentmode` varchar(200) NOT NULL,
  `entrydate` varchar(200) NOT NULL,
  `supplieraddress` varchar(200) NOT NULL,
  `duedate` varchar(200) NOT NULL,
  `purchase_order` varchar(200) NOT NULL,
  `contactperson` varchar(200) NOT NULL,
  `contactperson_phone` varchar(200) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `batchno` varchar(200) NOT NULL,
  `packing` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `free` varchar(200) NOT NULL,
  `expiry` varchar(200) NOT NULL,
  `sellingprice` varchar(200) NOT NULL,
  `invoicedamount` varchar(200) NOT NULL,
  `nettaxableamount` varchar(200) NOT NULL,
  `taxableamount` varchar(200) NOT NULL,
  `cess` varchar(200) NOT NULL,
  `local tax` varchar(200) NOT NULL,
  `others` varchar(200) NOT NULL,
  `totalamount` varchar(200) NOT NULL,
  `taxonfreeitem` varchar(200) NOT NULL,
  `totaldiscount` varchar(200) NOT NULL,
  `netinvoiceamount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receive_purchases`
--

INSERT INTO `receive_purchases` (`purchase_id`, `Purchase_category`, `vendor`, `invoicenumber`, `invoicedat`, `paymentmode`, `entrydate`, `supplieraddress`, `duedate`, `purchase_order`, `contactperson`, `contactperson_phone`, `productname`, `batchno`, `packing`, `qty`, `free`, `expiry`, `sellingprice`, `invoicedamount`, `nettaxableamount`, `taxableamount`, `cess`, `local tax`, `others`, `totalamount`, `taxonfreeitem`, `totaldiscount`, `netinvoiceamount`) VALUES
(49, 'Medicines', 'meds pharmacuticals', '785', 'Sep 10, 2018', 'CHEQUE', '10 / 09 / 2018', '3455', '10 / 09 / 2018', '', '', '', 'ACECLOFENAC + PARACETAMOL+CHLORZOXAZONE 100/500/500MG', '9', '30', '240.0', '', 'Sep 10, 2021', '16.625002', '3000', '', '', '', '', '', '4000.0', '', '', ''),
(50, 'Medicines', 'meds pharmacuticals', '785', 'Sep 10, 2018', 'CHEQUE', '10 / 09 / 2018', '3455', '10 / 09 / 2018', '', '', '', 'ACETAZOLAMIDE TABLETS 250MG', '89', '20', '180.0', '', 'Sep 10, 2019', '7.388889', '1000', '', '', '', '', '', '4000.0', '', '', ''),
(51, 'Medicines', 'dgd', '', '', 'cash', '10 / 09 / 2018', 'hhs', '10 / 09 / 2018', '', '', '', 'ACECLOFENAC + PARACETAMOL+CHLORZOXAZONE 100/500/500MG', '96', '30', '180.0', '', 'Sep 10, 2019', '41.04528', '5555', '', '', '', '', '', '47550.0', '', '', ''),
(52, 'Medicines', 'dgd', '', '', 'cash', '10 / 09 / 2018', 'hhs', '10 / 09 / 2018', '', '', '', 'ACETAZOLAMIDE TABLETS 250MG', '5', '20', '1100.0', '', 'Sep 10, 2021', '6.7165003', '5555', '', '', '', '', '', '47550.0', '', '', ''),
(53, 'Medicines', 'dgd', '', '', 'cash', '10 / 09 / 2018', 'hhs', '10 / 09 / 2018', '', '', '', 'asprin', '55', '43', '2365.0', '', 'Sep 21, 2018', '2.561586', '4555', '', '', '', '', '', '47550.0', '', '', ''),
(54, 'Medicines', 'dgd', '', '', 'cash', '10 / 09 / 2018', 'hhs', '10 / 09 / 2018', '', '', '', 'BENZHEXOL HYDROCHLORIDE TABLETS 5MG', '78', '100', '2200.0', '', 'Sep 10, 2021', '13.43421', '22222', '', '', '', '', '', '47550.0', '', '', ''),
(55, 'Medicines', 'dgd', '', '', 'cash', '10 / 09 / 2018', 'hhs', '10 / 09 / 2018', '', '', '', 'BUFFER TABLETS PH 7.0', '45', '1000', '5000.0', '', 'Sep 10, 2020', '2.570358', '9663', '', '', '', '', '', '47550.0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NameOfUser` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `NameOfUser`, `ContactNo`, `Email`) VALUES
('admin', '12345', 'Raj Sharma', '9827858191', 'raj20505@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` varchar(50) NOT NULL,
  `RoomType` varchar(100) NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
('101', 'General', 1200, 'Vacant'),
('102', 'Deluxe', 2200, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` int(11) NOT NULL,
  `ServiceName` varchar(250) NOT NULL,
  `ServiceDate` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `ServiceCharges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceID`, `ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`) VALUES
(1, 'X-ray Test', '23/10/2015', 'P-1', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `servicetype_master`
--

CREATE TABLE `servicetype_master` (
  `servicetypeid` int(11) NOT NULL,
  `servicetypename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicetype_master`
--

INSERT INTO `servicetype_master` (`servicetypeid`, `servicetypename`) VALUES
(1, 'RADIOLOGY'),
(2, 'minor procedure'),
(3, 'theatre'),
(4, 'MEDICAL'),
(5, 'DIAGNOSTICS');

-- --------------------------------------------------------

--
-- Table structure for table `stockonhand`
--

CREATE TABLE `stockonhand` (
  `stockorder_id` int(11) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `purchase_category` varchar(200) NOT NULL,
  `invoicenumber` varchar(200) NOT NULL,
  `batchnumber` varchar(200) NOT NULL,
  `packing` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `expirydate` varchar(200) NOT NULL,
  `sellingprice` varchar(200) NOT NULL,
  `costprice` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockonhand`
--

INSERT INTO `stockonhand` (`stockorder_id`, `productname`, `purchase_category`, `invoicenumber`, `batchnumber`, `packing`, `qty`, `expirydate`, `sellingprice`, `costprice`) VALUES
(48, 'ACECLOFENAC + PARACETAMOL+CHLORZOXAZONE 100/500/500MG', 'Medicines', '785', '9', '30', '4500', 'Sep 10, 2021', '16.625002', '3000'),
(49, 'ACETAZOLAMIDE TABLETS 250MG', 'Medicines', '785', '89', '20', '12060', 'Sep 10, 2019', '7.388889', '1000'),
(50, 'asprin', 'Medicines', '', '55', '43', '18921', 'Sep 21, 2018', '2.561586', '4555'),
(51, 'BENZHEXOL HYDROCHLORIDE TABLETS 5MG', 'Medicines', '', '78', '100', '19800', 'Sep 10, 2021', '13.43421', '22222'),
(52, 'BUFFER TABLETS PH 7.0', 'Medicines', '', '45', '1000', '45000', 'Sep 10, 2020', '2.570358', '9663');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(11) NOT NULL,
  `supplier_category` varchar(200) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` varchar(200) NOT NULL,
  `supplier_city` varchar(200) NOT NULL,
  `supplier_state` varchar(200) NOT NULL,
  `supplier_pincode` varchar(200) NOT NULL,
  `supplier_krapin` varchar(200) NOT NULL,
  `supplier_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierid`, `supplier_category`, `supplier_name`, `supplier_address`, `supplier_city`, `supplier_state`, `supplier_pincode`, `supplier_krapin`, `supplier_status`) VALUES
(1, 'Supplier', 'dgd', 'hhs', 'dh', 'dh', 'dhs', 'dsh', NULL),
(2, 'Supplier', 'meds pharmacuticals', '3455', 'nairobi', 'ww', 'nairobi', 'r45565344', NULL),
(3, 'Supplier', '', '', '', '', '', '', NULL),
(4, 'Manufacture', 'dinlas pharma', '456', 'dinlsa town', '34555', 'sagana', 'h4545433', NULL),
(5, 'Manufacture', 'meds', '522', 'nairobi', 'nairobi', '52655255', '444444', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `triage`
--

CREATE TABLE `triage` (
  `triageid` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `pcontact` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `opnum` varchar(200) NOT NULL,
  `doc` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `patienttype` varchar(200) NOT NULL,
  `paymentmode` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `consroom` varchar(200) NOT NULL,
  `systolic` varchar(200) NOT NULL,
  `diastolic` varchar(200) NOT NULL,
  `height` varchar(200) NOT NULL,
  `pulse` varchar(200) NOT NULL,
  `respira` varchar(200) NOT NULL,
  `spo2` varchar(200) NOT NULL,
  `temp` varchar(200) NOT NULL,
  `wei` varchar(200) NOT NULL,
  `systolicstatus` varchar(200) NOT NULL,
  `diastolicstatus` varchar(200) NOT NULL,
  `heightstatus` varchar(200) NOT NULL,
  `pursestatus` varchar(200) NOT NULL,
  `respiratorystatus` varchar(200) NOT NULL,
  `spo2status` varchar(200) NOT NULL,
  `tempstatus` varchar(200) NOT NULL,
  `weightstatus` varchar(200) NOT NULL,
  `attended` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `triage`
--

INSERT INTO `triage` (`triageid`, `name`, `pcontact`, `location`, `opnum`, `doc`, `age`, `patienttype`, `paymentmode`, `time`, `consroom`, `systolic`, `diastolic`, `height`, `pulse`, `respira`, `spo2`, `temp`, `wei`, `systolicstatus`, `diastolicstatus`, `heightstatus`, `pursestatus`, `respiratorystatus`, `spo2status`, `tempstatus`, `weightstatus`, `attended`) VALUES
(1, '', 'Jun 13, 2018', 'patrick', 'nyoike', '', 'ANC CLINIC', 'Item 1', '34', '55', '33', '55', '33', '33', '32', '254', '', '', '', '', '', '', '', '', '', '', '', '0'),
(2, 'STMMH-L/OP/80', 'Jun 14, 2018', 'ddfg', 'dg', '', 'ANC CLINIC', 'Item 1', '34', '55', '33', '55', '33', '33', '32', '254', '', '', '', '', '', '', '', '', '', '', '', '0'),
(3, '', 'Jun 13, 2018', 'patrick', 'nyoike', '', 'ANC CLINIC', 'Item 1', '3', '5', '33', '55', '33', '334', '34', '45', '', '', '', '', '', '', '', '', '', '', '', '0'),
(4, 'STMMH-L/OP/001', '', '', '', '', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0'),
(5, 'STMMH-L/OP/81', 'Jul 20, 2018', 'sarah', 'wanjiru', '', 'ANC CLINIC', 'Item 1', '345', '66', '356', '33', '35', '33', '36', '36', '', '', '', '', '', '', '', '', '', '', '', '0'),
(6, 'STMMH-L/OP/82', 'Jul 5, 2018', 'patrick ', 'nyoike', '', 'CONSULTANT CLINIC', 'Item 1', '50', '74', '55', '64', '33', '63', '55', '665', '', '', '', '', '', '', '', '', '', '', '', '0'),
(7, 'STMMH-L/OP/83', 'Jul 5, 2018', 'john', 'kamau', '', 'DIAGONISTIC AND PHARMACY', 'Item 1', '25', '52', '55', '5', '857', '4', '443', '46', '', '', '', '', '', '', '', '', '', '', '', '0'),
(8, 'STMMH-L/OP/001', '', '', '', '', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0'),
(9, 'STMMH-L/OP/84', 'Jul 5, 2018', 'jackson', 'murimi', '', 'DIAGONISTIC AND PHARMACY', 'Item 1', '90', '80', '63', '56', '45', '55', '33', '12', '', '', '', '', '', '', '', '', '', '', '', '0'),
(10, 'STMMH-L/OP/85', '', 'julius', 'muriigi', '', 'ANC CLINIC', 'Item 1', '45', '66', '6', '46', '46', '44', '46', '4', '', '', '', '', '', '', '', '', '', '', '', '0'),
(11, 'STMMH-L/OP/86', '', 'ggg', 'ss', '', 'ANC CLINIC', 'Item 1', '45', '66', '55', '23', '5', '66', '3', '34', '', '', '', '', '', '', '', '', '', '', '', '0'),
(12, 'STMMH-L/OP/87', 'Jul 28, 2018', 'joel', 'austine', '', 'CONSULTANT CLINIC', 'Item 1', '45', '33', '443', '54', '54', '32', '45', '55', '', '', '', '', '', '', '', '', '', '', '', '0'),
(13, 'STMMH-L/OP/89', 'Jul 28, 2018', 'ka,jprp', 'mesadg', '', 'CONSULTANT CLINIC', 'Item 1', '45', '45', '44444', '3', '43', '43', '43', '43', '', '', '', '', '', '', '', '', '', '', '', '0'),
(14, 'STMMH-L/OP/90', 'Aug 1, 2018', 'kanyi', 'johnson', '', 'DIALYSIS', 'Item 1', '45', '55', '53', '55', '23', '55', '5', '6', '', '', '', '', '', '', '', '', '', '', '', '0'),
(15, 'STMMH-L/OP/91', '12 / 09 / 2018', 'john', 'kamau', '', 'CONSULTANT CLINIC', 'Item 2', '34', '32', '23', '34', '44', '233', '45', '445', '', '', '', '', '', '', '', '', '', '', '', '0'),
(16, 'STMMH-L/OP/92', '19 / 09 / 2018', 'ojamjg', 'kamau', '', 'DIAGONISTIC AND PHARMACY', 'Item 1', '56', '55', '33', '56', '66', '68', '33', '33', '', '', '', '', '', '', '', '', '', '', '', '0'),
(17, 'STMMH-L/OP/94', '21 / 09 / 2018', 'alice', 'ANC CLINIC', 'wangari', 'Item 1', '89', '55', '52', '12', '55', '5', '22', '25', 'Corporate', '', '', '', '', '', '', '', '', '', '', '', '0'),
(18, 'STMMH-L/OP/95', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'wangari', 'Item 1', '96', '88', '25', '45', '14', '74', '22', '74', 'Corporate', '', '', '', '', '', '', '', '', '', '', '', '0'),
(19, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '', '', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(20, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '96', '55', '', '6', '22', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(21, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '45', '12', '', '78', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(22, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '23', '12', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(23, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '85', '96', '', '4', '45', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(24, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '45', '5', '', '6', '63', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(25, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '63', '22', '', '11', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(26, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '6', '5', '', '7', '8', '9', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(27, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '3', '6', '', '78', '88', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(28, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '4', '1', '', '01', '1', '12', '2', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(29, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '', '', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(30, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '', '', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(31, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '', '', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(32, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '', '', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(33, 'STMMH-L/OP/96', '24 / 09 / 2018', 'joyce', 'DIAGONISTIC AND PHARMACY', 'kamau', 'Item 1', '', '', '', '', '', '', '', '', 'Corporate', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(34, 'STMMH-L/OP/', '', '', 'ANC CLINIC', '', 'Item 1', '', '', '', '', '', '', '', '', 'General', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(35, 'STMMH-L/OP/98', '', 'pngumi', 'ANC CLINIC', 'smuel', 'Item 1', '', '', '', '', '', '', '', '', 'General', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(36, 'STMMH-L/OP/99', '', 'tytyrertr', 'ANC CLINIC', 'dfghhhhh', 'Item 1', '', '', '', '', '', '', '', '', 'General', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(37, 'STMMH-L/OP/100', '25 / 09 / 2018  13:32:36', 'oklol', 'ANC CLINIC', 'poii', 'Item 1', '', '', '', '', '', '', '', '', 'General', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(38, 'STMMH-L/OP/101', '25 / 09 / 2018  13:46:02', 'silba', 'ANC CLINIC', 'ertr', 'Item 1', '', '', '', '', '', '', '', '', 'General', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(39, 'STMMH-L/OP/102', '25 / 09 / 2018  13:52:19', 'iopkkk', 'ANC CLINIC', 'mmjhhh', 'Item 1', '', '', '', '', '', '', '', '', 'General', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(40, 'STMMH-L/OP/103', '25 / 09 / 2018  14:37:11', 'julius', 'kamau', 'General', 'ANC CLINIC', 'Item 1', '', '', '', '', '', '', '', '', '', '', '', 'seen', '', '', '', '', '', '', '', '0'),
(41, 'kamanu njoroge ', '', 'Triage', 'STMMH/8', '', '', 'General', 'Cash', '10:50:57  AM', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0'),
(42, 'EVANLS KIMEDERO GAKUYO', '123456', 'Triage', 'STMMH/9', '', '56', 'General', 'Cash', '10:57:35  AM', 'null', '2', '85', '22', '85', '44', '52', '55', '55', 'LOW', 'NORMAL', '', '', '', '', '', '', '0'),
(43, 'EVANLS KIMEDERO GAKUYO', '123456', 'Triage', 'STMMH/9', 'Item 1', '56', 'General', 'Cash', '11:03:50  AM', 'null', '23', '5', '23', '56', '23', '67', '45', '56', 'LOW', 'LOW', '', '', '', '', '', '', 'attended'),
(44, 'EVANLS KIMEDERO GAKUYO', '123456', 'Triage', 'STMMH/9', 'Item 1', '56', 'General', 'Cash', '11:53:52  AM', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attended'),
(45, 'kamanu njoroge ', '', 'Triage', 'STMMH/8', 'Item 1', '', 'General', 'Cash', '04:19:57  PM', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attended'),
(46, 'EVANLS KIMEDERO GAKUYO', '123456', 'Triage', 'STMMH/9', 'Item 1', '56', 'General', 'Cash', '04:20:29  PM', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attended'),
(47, 'EVANLS KIMEDERO GAKUYO', '123456', 'Triage', 'STMMH/9', 'Item 1', '56', 'General', 'Cash', '01:22:46  PM', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attended');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `user_password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-17 08:35:05', '2018-11-17 08:35:05', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/hms', 'yes'),
(2, 'home', 'http://localhost/hms', 'yes'),
(3, 'blogname', 'hmis', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'patnyoike@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:123:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:43:\"tbuilder-layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"tbuilder-layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"tbuilder-layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"tbuilder-layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"tbuilder-layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"tbuilder-layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"tbuilder-layout/([^/]+)/embed/?$\";s:48:\"index.php?tbuilder_layout=$matches[1]&embed=true\";s:36:\"tbuilder-layout/([^/]+)/trackback/?$\";s:42:\"index.php?tbuilder_layout=$matches[1]&tb=1\";s:44:\"tbuilder-layout/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?tbuilder_layout=$matches[1]&paged=$matches[2]\";s:51:\"tbuilder-layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?tbuilder_layout=$matches[1]&cpage=$matches[2]\";s:40:\"tbuilder-layout/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?tbuilder_layout=$matches[1]&page=$matches[2]\";s:32:\"tbuilder-layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"tbuilder-layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"tbuilder-layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"tbuilder-layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"tbuilder-layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"tbuilder-layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"tbuilder-layout-part/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"tbuilder-layout-part/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"tbuilder-layout-part/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"tbuilder-layout-part/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"tbuilder-layout-part/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"tbuilder-layout-part/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"tbuilder-layout-part/([^/]+)/embed/?$\";s:53:\"index.php?tbuilder_layout_part=$matches[1]&embed=true\";s:41:\"tbuilder-layout-part/([^/]+)/trackback/?$\";s:47:\"index.php?tbuilder_layout_part=$matches[1]&tb=1\";s:49:\"tbuilder-layout-part/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?tbuilder_layout_part=$matches[1]&paged=$matches[2]\";s:56:\"tbuilder-layout-part/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?tbuilder_layout_part=$matches[1]&cpage=$matches[2]\";s:45:\"tbuilder-layout-part/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?tbuilder_layout_part=$matches[1]&page=$matches[2]\";s:37:\"tbuilder-layout-part/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"tbuilder-layout-part/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"tbuilder-layout-part/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"tbuilder-layout-part/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"tbuilder-layout-part/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"tbuilder-layout-part/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'themify-ultra', 'yes'),
(41, 'stylesheet', 'themify-ultra', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"sidebar-alt\";a:0:{}s:13:\"social-widget\";a:0:{}s:20:\"footer-social-widget\";a:0:{}s:15:\"header-widget-1\";a:0:{}s:15:\"header-widget-2\";a:0:{}s:15:\"header-widget-3\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:15:\"footer-widget-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1542447308;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542486908;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542530125;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542443744;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"last_checked\";i:1542443719;}', 'no'),
(117, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1542443720;}', 'no'),
(118, '_site_transient_timeout_theme_roots', '1542445520', 'no'),
(119, '_site_transient_theme_roots', 'a:4:{s:13:\"themify-ultra\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1542443747;}', 'no'),
(122, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1542486928', 'no'),
(123, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(125, 'current_theme', 'Themify Ultra', 'yes'),
(126, 'theme_mods_themify-ultra', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(128, 'themify_migrate_settings_name', '1', 'yes'),
(129, 'themify_clear_legacy', '1', 'yes'),
(130, 'builder_cpt', 'a:0:{}', 'yes'),
(131, 'widget_themify-feature-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(132, 'widget_themify-list-pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(133, 'widget_themify-list-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(134, 'widget_themify-recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(135, 'widget_themify-social-links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(136, 'widget_themify-twitter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(137, 'widget_themify-flickr', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(138, 'widget_themify-most-commented', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(139, 'themify_flush_rewrite_rules_after_manual_update', '1', 'yes'),
(140, 'themify_builder_cleanup_builtin_layouts', 'yes', 'yes'),
(141, 'builder_154_update_done', 'yes', 'yes'),
(142, 'themify-ultra_themify_import_notice', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-17 08:35:05', '2018-11-17 08:35:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-11-17 08:35:05', '2018-11-17 08:35:05', '', 0, 'http://localhost/hms/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-17 08:35:05', '2018-11-17 08:35:05', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/hms/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-11-17 08:35:05', '2018-11-17 08:35:05', '', 0, 'http://localhost/hms/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-17 08:35:05', '2018-11-17 08:35:05', '<h2>Who we are</h2><p>Our website address is: http://localhost/hms.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-11-17 08:35:05', '2018-11-17 08:35:05', '', 0, 'http://localhost/hms/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-17 08:35:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-17 08:35:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/hms/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4a6b3009c901b05ec4392890b28ebb7a513c99d0ffe408c67c8f25d9ca615321\";a:4:{s:10:\"expiration\";i:1542616524;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1542443724;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BOWC49O.fJJl4R6j8N40GTr5TeAd9S0', 'root', 'patnyoike@gmail.com', '', '2018-11-17 08:35:03', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounthead_master`
--
ALTER TABLE `accounthead_master`
  ADD PRIMARY KEY (`accountheadid`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `classification_master`
--
ALTER TABLE `classification_master`
  ADD PRIMARY KEY (`classficationid`);

--
-- Indexes for table `costcenter`
--
ALTER TABLE `costcenter`
  ADD PRIMARY KEY (`costcenter_id`);

--
-- Indexes for table `doctorselection`
--
ALTER TABLE `doctorselection`
  ADD PRIMARY KEY (`seleid`),
  ADD UNIQUE KEY `seleid` (`seleid`),
  ADD UNIQUE KEY `seleid_2` (`seleid`);

--
-- Indexes for table `dosage_master`
--
ALTER TABLE `dosage_master`
  ADD PRIMARY KEY (`dosageid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `gl_chart`
--
ALTER TABLE `gl_chart`
  ADD PRIMARY KEY (`glid`);

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `itemmaster`
--
ALTER TABLE `itemmaster`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `markup`
--
ALTER TABLE `markup`
  ADD PRIMARY KEY (`markupid`);

--
-- Indexes for table `master_doctor`
--
ALTER TABLE `master_doctor`
  ADD PRIMARY KEY (`master_doctorid`);

--
-- Indexes for table `opbilling`
--
ALTER TABLE `opbilling`
  ADD PRIMARY KEY (`opdbilledid`);

--
-- Indexes for table `opipformart`
--
ALTER TABLE `opipformart`
  ADD PRIMARY KEY (`opipid`);

--
-- Indexes for table `outlet_master`
--
ALTER TABLE `outlet_master`
  ADD PRIMARY KEY (`outletid`);

--
-- Indexes for table `packing_master`
--
ALTER TABLE `packing_master`
  ADD PRIMARY KEY (`packingid`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `paymentmode`
--
ALTER TABLE `paymentmode`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `pharmacyrequests`
--
ALTER TABLE `pharmacyrequests`
  ADD PRIMARY KEY (`pharmacybillid`);

--
-- Indexes for table `purchase_category_master`
--
ALTER TABLE `purchase_category_master`
  ADD PRIMARY KEY (`purchase_category_masterid`);

--
-- Indexes for table `p_registration`
--
ALTER TABLE `p_registration`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `receive_purchases`
--
ALTER TABLE `receive_purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `servicetype_master`
--
ALTER TABLE `servicetype_master`
  ADD PRIMARY KEY (`servicetypeid`);

--
-- Indexes for table `stockonhand`
--
ALTER TABLE `stockonhand`
  ADD PRIMARY KEY (`stockorder_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierid`);

--
-- Indexes for table `triage`
--
ALTER TABLE `triage`
  ADD PRIMARY KEY (`triageid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounthead_master`
--
ALTER TABLE `accounthead_master`
  MODIFY `accountheadid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classification_master`
--
ALTER TABLE `classification_master`
  MODIFY `classficationid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `costcenter`
--
ALTER TABLE `costcenter`
  MODIFY `costcenter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctorselection`
--
ALTER TABLE `doctorselection`
  MODIFY `seleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dosage_master`
--
ALTER TABLE `dosage_master`
  MODIFY `dosageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gl_chart`
--
ALTER TABLE `gl_chart`
  MODIFY `glid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `itemmaster`
--
ALTER TABLE `itemmaster`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `markup`
--
ALTER TABLE `markup`
  MODIFY `markupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_doctor`
--
ALTER TABLE `master_doctor`
  MODIFY `master_doctorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opbilling`
--
ALTER TABLE `opbilling`
  MODIFY `opdbilledid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `opipformart`
--
ALTER TABLE `opipformart`
  MODIFY `opipid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `outlet_master`
--
ALTER TABLE `outlet_master`
  MODIFY `outletid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packing_master`
--
ALTER TABLE `packing_master`
  MODIFY `packingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymentmode`
--
ALTER TABLE `paymentmode`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pharmacyrequests`
--
ALTER TABLE `pharmacyrequests`
  MODIFY `pharmacybillid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_category_master`
--
ALTER TABLE `purchase_category_master`
  MODIFY `purchase_category_masterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `p_registration`
--
ALTER TABLE `p_registration`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `receive_purchases`
--
ALTER TABLE `receive_purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servicetype_master`
--
ALTER TABLE `servicetype_master`
  MODIFY `servicetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stockonhand`
--
ALTER TABLE `stockonhand`
  MODIFY `stockorder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `triage`
--
ALTER TABLE `triage`
  MODIFY `triageid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
