-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 07:27 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Mind of Mine', 1, 4, 'assets/images/artwork/mindofmine.png'),
(2, 'Nine Track Mind', 2, 10, 'assets/images/artwork/ninetrackmind.png'),
(3, 'Closer', 3, 1, 'assets/images/artwork/closer.png'),
(4, 'Illuminate', 4, 9, 'assets/images/artwork/illuminate.png'),
(5, 'Freaky Friday', 5, 3, 'assets/images/artwork/freakyfriday.png'),
(6, 'Up All Night', 1, 6, 'assets/images/artwork/upallnight.jpg'),
(7, 'Voice Notes', 2, 7, 'assets/images/artwork/voicenotes.png');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Zayn Malik'),
(2, 'Charlie Puth'),
(3, 'ChainSmokers'),
(4, 'Shawn Mendes'),
(5, 'Chris Brown');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(5, 'playlist1', 'rehan2599', '2019-10-22 00:00:00'),
(6, 'rehan', 'rehan2599', '2019-10-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(3, 1, 5, 1),
(4, 7, 5, 2),
(5, 14, 5, 3),
(7, 6, 5, 5),
(8, 3, 5, 6),
(9, 13, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Attention', 2, 2, 1, '03:51', 'assets/music/attention.mp3', 2, 18),
(2, 'Ayo', 5, 5, 2, '03:47', 'assets/music/ayo.mp3', 5, 11),
(3, 'Closer', 3, 3, 3, '04:21', 'assets/music/closer.mp3', 3, 12),
(4, 'Done For Me', 2, 2, 4, '02:56', 'assets/music/done_for_me.mp3', 2, 10),
(5, 'Don\'t Let Me Down', 3, 3, 5, '03:37', 'assets/music/dont_let_me_down.mp3', 3, 17),
(6, 'Dusk till Dawn', 1, 1, 6, '5:37', 'assets/music/dusk_till_dwan.mp3', 1, 9),
(7, 'Freaky Friday', 5, 5, 7, '3:35', 'assets/music/freaky_friday.mp3', 5, 25),
(8, 'How Long', 2, 2, 8, '3:30', 'assets/music/how_long.mp3', 2, 15),
(9, 'I can\'t have you', 4, 4, 9, '3:11', 'assets/music/i_cant_have_you.mp3', 4, 8),
(10, 'In my Blood', 4, 4, 10, '3:37', 'assets/music/in_my_blood.mp3', 4, 5),
(11, 'Let Me', 1, 1, 1, '4:09', 'assets/music/let_me.mp3', 1, 15),
(12, 'Loyal', 5, 5, 2, '4:30', 'assets/music/loyal.mp3', 5, 8),
(13, 'One call away', 2, 7, 3, '4:01', 'assets/music/one_call_away.mp3', 7, 8),
(14, 'Pillow Talk', 1, 1, 4, '3:26', 'assets/music/pillow_talk.mp3', 2, 24),
(15, 'Senorita', 4, 4, 5, '3:25', 'assets/music/senorita.mp3', 4, 7),
(16, 'SHE', 1, 6, 6, '3:11', 'assets/music/sHE.mp3', 6, 15),
(17, 'Something Just Like This', 3, 3, 7, '4:07', 'assets/music/something_just_like_this.mp3', 3, 9),
(18, 'Take Away', 3, 3, 8, '4:07', 'assets/music/take_away.mp3', 3, 15),
(19, 'There\'s Nothing Holding me back', 4, 4, 9, '3:57', 'assets/music/theres_nothing_holding_me_back.mp3', 4, 9),
(20, 'Take it Off', 1, 6, 10, '3:31', 'assets/music/tio.mp3', 6, 14),
(21, 'Treat you better', 4, 4, 1, '4:16', 'assets/music/treat_you_better.mp3', 4, 6),
(22, 'Undecided', 5, 5, 2, '4:55', 'assets/music/undecided.mp3', 2, 14),
(23, 'We dont talk anymore', 2, 7, 1, '3:50', 'assets/music/we_dont_talk_anymore.mp3', 7, 7),
(24, 'Who do you love', 3, 3, 2, '3:46', 'assets/music/who_do_you_love.mp3', 3, 9),
(25, 'ZERO', 5, 5, 3, '3:38', 'assets/music/zero.mp3', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'rehan', 'Rehan', 'Khan', 'Abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-10-06 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'rehan2599', 'Rehan', 'Khan', 'Abc123@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-10-06 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'rehan123', 'Rehan', 'Khan', 'Abc123@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-10-06 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(4, 'anas123', 'Anas', 'Chomu', 'Anaschomu@gmail.com', '9c93e455ae4b76f0cf638d575e1bad3d', '2019-10-10 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'zishan2599', 'Zishan', 'Khan', 'Zishan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-10-13 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
