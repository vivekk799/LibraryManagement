
CREATE database test;
USE test;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `callno` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `issued` int(10) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `callno`, `name`, `author`, `publisher`, `quantity`, `issued`, `added_date`) VALUES
(1, '1', 'Java14', 'JBR', 'JBR Publisher', 4, 0, '2021-04-01 15:31:56'),
(2, '2', 'JavaLib', 'A', 'JBR Pbt', 34, 0, '2021-04-01 15:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `issuebooks`
--

CREATE TABLE `issuebooks` (
  `id` int(11) NOT NULL,
  `bookcallno` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `studentcontact` varchar(20) NOT NULL,
  `issueddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `name`, `password`, `email`, `address`, `city`, `contact`) VALUES
(1, 'Lib1', '123456', 'lib1@gmail.com', 'address of Hyd', 'Hyd', '9879879870'),
(2, 'lib2', '123456', 'lib2@gmail.com', 'adress', 'hyd', '9879879870');

-- --------------------------------------------------------


--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `callno` (`callno`),
  ADD UNIQUE KEY `callno_2` (`callno`);

--
-- Indexes for table `issuebooks`
--
ALTER TABLE `issuebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`);



--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issuebooks`
--
ALTER TABLE `issuebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--

