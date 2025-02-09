CREATE TABLE `bookings` (
  `BookingID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `BookingDate` date DEFAULT NULL,
  `FeePrepaid` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`BookingID`, `CustomerID`, `SessionID`, `BookingDate`, `FeePrepaid`) VALUES
(1, 1, 1, '2024-07-22', NULL),
(2, 2, 1, '2024-07-22', 'N'),
(3, 3, 1, '2024-07-22', 'Y'),
(4, 4, 1, '2024-08-25', 'N'),
(5, 5, 2, '2024-07-22', 'N'),
(6, 6, 4, '2024-07-05', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `consolegames`
--

CREATE TABLE `consolegames` (
  `ConsoleGameID` int(11) NOT NULL,
  `ConsoleID` int(11) DEFAULT NULL,
  `GameID` int(11) DEFAULT NULL,
  `PegiRating` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consolegames`
--

INSERT INTO `consolegames` (`ConsoleGameID`, `ConsoleID`, `GameID`, `PegiRating`) VALUES
(1, 1, 1, 'PG'),
(2, 2, 2, 'PG'),
(3, 3, 3, 'PG'),
(4, 2, 4, 'PG'),
(5, 4, 5, 'PG'),
(6, 5, 6, '15');

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `ConsoleID` int(11) NOT NULL,
  `ConsoleName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`ConsoleID`, `ConsoleName`) VALUES
(1, 'XBOX 360'),
(2, 'PS3'),
(3, 'PS2'),
(4, 'NINTENDO 64'),
(5, 'NINTENDO SWITCH');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `MembershipTypeID` int(11) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Member` varchar(255) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `MembershipTypeID`, `FirstName`, `Surname`, `Address`, `Member`, `JoinDate`, `DateOfBirth`) VALUES
(1, 1, 'SAANVI', 'BHATTA', 'BANESHWOR, KATHMANDU', NULL, '2024-01-01', '2015-03-01'),
(2, 2, 'BILL', 'GATES', 'MAITIDEVI, KATHMANDU', 'N', '2024-07-06', '2001-10-12'),
(3, 2, 'ELON', 'MUSK', 'PUTALISADAK, KATHMANDU', 'Y', '2024-03-28', '2003-07-20'),
(4, 1, 'KAMALA', 'HARRIS', 'KAPAN, KATHMANDU', 'Y', '2024-01-05', '1973-05-01'),
(5, NULL, 'JACK', 'MA', NULL, 'N', NULL, '0000-00-00'),
(6, NULL, 'RISHI', 'SUNAK', NULL, 'Y', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `GameID` int(11) NOT NULL,
  `GameName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`GameID`, `GameName`) VALUES
(1, 'ELDEN RING: SHADOW OF THE ERDTREE'),
(2, 'FINAL FANTASY VII REBIRTH'),
(3, 'DESTINY 2: THE FINAL SHAPE'),
(4, 'TEKKEN 8'),
(5, 'PERSONA 3 RELOAD'),
(6, 'CAVERN OF DREAMS');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `MachineID` int(11) NOT NULL,
  `MachineName` varchar(255) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`MachineID`, `MachineName`, `Floor`) VALUES
(23, 'COC', 1),
(45, 'SPIDERMAN', 2),
(1234, 'PUBG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `membershiptypes`
--

CREATE TABLE `membershiptypes` (
  `MembershipTypeID` int(11) NOT NULL,
  `MembershipTypeName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membershiptypes`
--

INSERT INTO `membershiptypes` (`MembershipTypeID`, `MembershipTypeName`) VALUES
(1, 'STANDARD'),
(2, 'PREMIUM');

-- --------------------------------------------------------

--
-- Table structure for table `sessionconsoles`
--

CREATE TABLE `sessionconsoles` (
  `SessionConsoleID` int(11) NOT NULL,
  `Qty` int(11) DEFAULT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `ConsoleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionconsoles`
--

INSERT INTO `sessionconsoles` (`SessionConsoleID`, `Qty`, `SessionID`, `ConsoleID`) VALUES
(1, 2, 1, 3),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SessionID` int(11) NOT NULL,
  `SessionTypeID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `StartTime` time(5) DEFAULT NULL,
  `EndTime` time(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SessionID`, `SessionTypeID`, `Date`, `StartTime`, `EndTime`) VALUES
(1, 1, '2024-07-22', '09:00:00.00000', '21:00:00.00000'),
(2, 1, '2024-07-22', '09:00:00.00000', '21:00:00.00000'),
(3, 1, '2024-07-21', '09:00:00.00000', '21:00:00.00000'),
(4, 2, '2024-07-20', '18:00:00.00000', '22:00:00.00000');

-- --------------------------------------------------------

--
-- Table structure for table `sessionstaff`
--

CREATE TABLE `sessionstaff` (
  `SessionStaffID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionstaff`
--

INSERT INTO `sessionstaff` (`SessionStaffID`, `SessionID`, `StaffID`, `Role`) VALUES
(1, 1, 1, 'CAFE'),
(2, 1, 2, 'MAINTENANCE'),
(3, 1, 3, 'COUNTER'),
(4, 2, 4, 'COUNTER'),
(5, 2, 5, 'MAINTENANCE'),
(6, 2, 6, 'CAFE');

-- --------------------------------------------------------

--
-- Table structure for table `sessiontype`
--

CREATE TABLE `sessiontype` (
  `SessionTypeID` int(11) NOT NULL,
  `SessionTypeName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessiontype`
--

INSERT INTO `sessiontype` (`SessionTypeID`, `SessionTypeName`) VALUES
(1, 'FREE'),
(2, 'SPECIAL');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `FirstName`, `Surname`, `Role`) VALUES
(1, 'SAGAR', 'ARYAL', 'CAFE'),
(2, 'BIKESH', 'KHAGDI', 'MAINTENANCE'),
(3, 'SAROJ', 'SAPKOTA', 'COUNTER'),
(4, 'JONATHAN', 'SHRESTHA', 'COUNTER'),
(5, 'ROHAN', 'CHAUDHARY', 'MAINTENANCE'),
(6, 'RAJEEV', 'KARMACHARYA', 'CAFE');

--