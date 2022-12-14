
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Saurav', 'saurav@gmail.com', 50000),
(2, 'suraj jha', 'surahjha@gmail.com', 20000),
(3, 'Romel', 'romel123@gmail.com', 50000),
(4, 'Sampa', 'sampa@gmail.com', 10000),
(5, 'Aman', 'aman@gmail.com', 40700),
(6, 'Puja', 'puja@gmail.com', 30000),
(7, 'Sakshi', 'sakshi@gmail.com', 50000),
(8, 'Ritik', 'ritik34@gmail.com', 40000),
(9, 'Ranbir', 'ranbir@gmail.com', 130000),
(10, 'Sweta', 'sweta87@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
