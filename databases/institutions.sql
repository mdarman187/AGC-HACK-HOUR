-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 01:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `institutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `school_id`, `name`, `explanation`, `student_id`, `date_of_register`) VALUES
(10, 21, 'Submit Assignment', 'Submit it before 12th October 2020', 45, '2020-10-10 13:37:16'),
(11, 21, 'Bring homework on time.', 'Bring the python homework.', 45, '2020-10-10 13:43:03'),
(12, 22, 'Lab File', 'Complete all the lab files', 46, '2020-10-10 14:24:34'),
(13, 22, 'Projects', 'Complete all projects', 46, '2020-10-10 14:24:54'),
(14, 22, 'Lab File', 'Complete all the lab files', 47, '2020-10-10 14:25:06'),
(15, 22, 'Projects', 'Complete all projects', 47, '2020-10-10 14:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `children_feedback`
--

CREATE TABLE `children_feedback` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `teacher_name` text DEFAULT NULL,
  `date_of_feedback` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `children_feedback`
--

INSERT INTO `children_feedback` (`id`, `school_id`, `subject`, `feedback`, `teacher_name`, `date_of_feedback`, `student_id`) VALUES
(10, 21, 'Python', 'Creating Nuisance in Class', 'Teacher1', '2020-10-10 13:38:02', 45),
(11, 22, 'Python', 'Good at Python', 'Neha', '2020-10-10 14:26:34', 46),
(12, 22, 'Data Structures', 'Excellent knowledge', 'Vinod Sharma', '2020-10-10 14:27:04', 47);

-- --------------------------------------------------------

--
-- Table structure for table `complants`
--

CREATE TABLE `complants` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `date_of_complant` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `control_groups`
--

CREATE TABLE `control_groups` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `control_groups`
--

INSERT INTO `control_groups` (`id`, `school_id`, `date_of_register`, `student_id`, `group_id`) VALUES
(21, 21, '2020-10-10 13:36:22', 45, 7),
(22, 22, '2020-10-10 14:21:20', 46, 9),
(23, 22, '2020-10-10 14:21:30', 47, 9),
(24, 22, '2020-10-10 14:21:55', 46, 10),
(25, 22, '2020-10-10 14:22:02', 47, 10);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `fees_amount` float DEFAULT NULL,
  `date_of_pay` timestamp NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `school_id`, `fees_amount`, `date_of_pay`, `student_id`) VALUES
(16, 22, 10000, '2020-10-10 14:31:45', 46),
(17, 22, 10000, '2020-10-10 14:31:55', 47);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `time_of_room` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `school_id`, `name`, `subject`, `time_of_room`, `date_of_register`, `teacher_id`) VALUES
(5, 16, 'G52', 'Science', '1 AM', '2020-01-05 20:55:38', 3),
(6, 16, 'G55', 'Math', '6 AM', '2020-01-06 23:31:19', 3),
(7, 21, 'CSE 7', 'Python', '10:00 AM', '2020-10-10 13:35:31', 5),
(9, 22, 'CSE A1', 'Python', '10:00 AM', '2020-10-10 14:20:05', 7),
(10, 22, 'CSE A2', 'Data Structures', '11:00 AM', '2020-10-10 14:20:35', 8);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `school_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `username`, `password`, `name`, `email`, `address`, `number`, `date_of_register`, `school_id`, `student_id`) VALUES
(172, 'Nitin_Parent', '$2y$10$xv351fNeDeoHZuUFoud94uCtOO05zxDdAtRPJvaydDhzTKXwx8E..', 'Naveen Bhopatkar', 'parent@email.com', 'Gwalior', '1234567890', '2020-10-10 13:31:50', 21, 45),
(173, 'Arman_Parent', '$2y$10$XCtIxQGfE.Ce/vlOqtLJp.x/MsP3YU/8jsnhR4PMvv7QiwMxKPjIK', 'Mazharun Nabi', 'armanparent@email.com', 'Patna', '1234567890', '2020-10-10 14:09:25', 22, 46),
(174, 'rajat_parent', '$2y$10$rRu0upaHPa.TfUwOkb4z3.TURnFo8AeLY8qa1wgp8sfl0P2HDqB/O', 'Mr. Bhatti', 'rajatparent@email.com', 'Jammu', '1234567890', '2020-10-10 14:12:50', 22, 47);

-- --------------------------------------------------------

--
-- Table structure for table `people_emergency`
--

CREATE TABLE `people_emergency` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `relation` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_emergency`
--

INSERT INTO `people_emergency` (`id`, `school_id`, `name`, `number`, `relation`, `email`, `address`, `date_of_register`, `student_id`) VALUES
(14, 21, 'Naveen Bhopatkar', '1234567890', 'father', 'parent@email.com', 'Gwalior', '2020-10-10 13:39:10', 45),
(15, 22, 'Mazharun Nabi', '1234567890', 'Father', 'armanparent@email.com', 'Patna', '2020-10-10 14:30:31', 46),
(16, 22, 'Mr. Bhatti', '1234567890', 'Father', 'rajatparent@email.com', 'Jammu', '2020-10-10 14:31:10', 47);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `appointment1` text DEFAULT NULL,
  `appointment2` text DEFAULT NULL,
  `appointment3` text DEFAULT NULL,
  `appointment4` text DEFAULT NULL,
  `appointment5` text DEFAULT NULL,
  `appointment6` text DEFAULT NULL,
  `appointment7` text DEFAULT NULL,
  `appointment8` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `grade` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `school_id`, `appointment1`, `appointment2`, `appointment3`, `appointment4`, `appointment5`, `appointment6`, `appointment7`, `appointment8`, `date_of_register`, `grade`) VALUES
(13, 22, 'Python', 'Java', 'Data Structures', 'C++', 'HTML', 'Javascript', 'ML', 'MAD', '2020-10-10 14:28:47', 'CSE A1'),
(14, 22, 'Python', 'Java', 'Data Structures', 'C++', 'HTML', 'Javascript', 'ML', 'MAD', '2020-10-10 14:29:33', 'CSE A2');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `username`, `password`, `name`, `email`, `address`, `number`, `date_of_register`) VALUES
(21, 'mdarman187', '$2y$10$/LaPlVA05v0iTxdvk79ve.YnZaamZZcTWi4yEsBD25Z9s/Dk3l5eu', 'Arman', 'muhammadarman187@gmail.com', 'Patna, India', '8539856333', '2020-10-10 13:20:43'),
(22, 'hod@cse', '$2y$10$QFqnaZlxbP.4kIrfUacRjOD1YWNtmOkObKclU1cRTCYtAMOq0NQTO', 'CSE', 'cse@email.com', 'Amritsar', '1234567890', '2020-10-10 14:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `grade` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_id`, `username`, `password`, `name`, `grade`, `date_of_birth`, `address`, `date_of_register`) VALUES
(45, 21, 'Nitin_13', '$2y$10$JPwyrHQmoHM5H2LE5jq2cu.obfIqSbZ10nbZdhGzrj5iaLXniuO8G', 'Nitin Bhopatkar', 'MCA', '13/10/1994', 'Pune', '2020-10-10 13:29:42'),
(46, 22, 'arman187', '$2y$10$JPOEU9sv2CA0V70zm1Fciuqkg64aWpf/Qv1AhGK997GUWUjoiwZg.', 'Md Arman', 'CSE A1', '18/07/1998', 'Hostel', '2020-10-10 14:05:48'),
(47, 22, 'rajat16', '$2y$10$TO2/hDFFYHaw3.FKt5KpGuF.6H7u0eE4PGbFMMHc/26ukkFDFoen2', 'Rajat Bhatti', 'CSE A2', '16/10/1999', 'Hostel', '2020-10-10 14:10:40'),
(48, 22, 'Sample1', '$2y$10$ERlwcyQWRO41wJXaDGKptuG6I3B0EpxLAU5x03p0YtkGGjIRuSzcW', 'Sample Student', 'CSE A1', '10/10/2020', 'Virtual', '2020-10-10 17:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `task` text DEFAULT NULL,
  `date_of_task` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `school_id`, `username`, `password`, `name`, `subject`, `number`, `email`, `address`, `date_of_register`) VALUES
(5, 21, 'Teacher_1', '$2y$10$5Wy5GV9cqgVOhQQ2VZz3aeuFse5MzW1jWXJ7Z5sMUySQrpIa3HfIe', 'Teacher1', 'Python', '1234567890', 'teacher1@email.com', 'Amritsar', '2020-10-10 13:33:34'),
(6, 21, 'Teacher_2', '$2y$10$4XYYgifjJrJ1fDQHQlMKge2.r6cGntr7W3EVzuRJkrXcDqiOOQzO2', 'Teacher2', 'Java', '1234567890', 'teacher2@email.com', 'Amritsar', '2020-10-10 13:56:27'),
(7, 22, 'neha_mam', '$2y$10$r86CyJwOjCZ5lE3x0liCpOykkSR.NtLJXjPD.l1TmfWtnZwgBPhwy', 'Neha', 'Python', '1234567890', 'neha@email.com', 'Amritsar', '2020-10-10 14:14:37'),
(8, 22, 'Vinod_Sir', '$2y$10$SYVQAONUYHwcycndjaUDXuR1KJ90UR/oBfrhHnU9YtIz5qdyiOz2q', 'Vinod Sharma', 'Data Structures', '1234567890', 'vinod@email.com', 'Amritsar', '2020-10-10 14:15:44'),
(9, 22, 'Sakshi_Mam', '$2y$10$gJWintjOgJryqTKp8DM60.kO8LMZIlCay2HXlEnRJaPcTakPikHAu', 'Sakshi Mahajan', 'Java', '1234567890', 'sakshi@email.com', 'Amritsar', '2020-10-10 14:16:49'),
(10, 22, 'Param_Sir', '$2y$10$1zXq7CbLRnOvDd4tqbwv9uQOnjWstBxRPnbzGBtlXjqkYq02hPZiq', 'Parambir Singh', 'Cyber Security', '1234567890', 'parambir@email.com', 'Amritsar', '2020-10-10 17:09:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `children_feedback`
--
ALTER TABLE `children_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `complants`
--
ALTER TABLE `complants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `control_groups`
--
ALTER TABLE `control_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `people_emergency`
--
ALTER TABLE `people_emergency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `children_feedback`
--
ALTER TABLE `children_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `complants`
--
ALTER TABLE `complants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `control_groups`
--
ALTER TABLE `control_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `people_emergency`
--
ALTER TABLE `people_emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `children_feedback`
--
ALTER TABLE `children_feedback`
  ADD CONSTRAINT `children_feedback_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `children_feedback_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complants`
--
ALTER TABLE `complants`
  ADD CONSTRAINT `complants_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `control_groups`
--
ALTER TABLE `control_groups`
  ADD CONSTRAINT `control_groups_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `control_groups_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `control_groups_ibfk_4` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `parents_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `people_emergency`
--
ALTER TABLE `people_emergency`
  ADD CONSTRAINT `people_emergency_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `people_emergency_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
