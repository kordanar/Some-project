

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `assignment` (
  `assignment_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `assignment` (`assignment_no`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '15', '8', 12, 50),
(2, '10', 'CS101', 70, 100),
(2, '13', 'CS101', 80, 100),
(2, '15', 'CS101', 60, 100);



CREATE TABLE `attendence` (
  `st_id` varchar(20) NOT NULL,
  `cs_id` varchar(20) NOT NULL,
  `lecture_no` int(20) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `presence` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `attendence` (`st_id`, `cs_id`, `lecture_no`, `date`, `duration`, `presence`) VALUES
('15', 'CS101', 6, '10/11/2019', '1:30', 'P'),
('15', 'CS101', 12, 'null', '1:30', 'A'),
('15', 'CS101', 90, '12/11/2019', '1:30', 'A');


CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `cName` varchar(21) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `cHrs` int(4) DEFAULT NULL,
  `aTeacher` varchar(11) DEFAULT NULL,
  `preReq` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `semester` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `courses` (`id`, `cName`, `code`, `cHrs`, `aTeacher`, `preReq`, `type`, `semester`) VALUES
(1, 'ITC', 'CS101', 3, 'Ahsan', '0', 'CORE', 1),
(2, 'Probably & Statistics', 'MT201', 4, 'Ahsan', 'None', 'CORE', 5),
(3, 'Calculus-I', 'MT101', 3, 'Kashif', 'None', 'CORE', 1),
(4, 'Algorithm', 'CS108', 3, 'Usman', 'CS101', 'CORE', 5),
(5, 'Web Programming', 'CS901', 3, 'Usman', 'CS108', 'ELECTIVE', 6),
(6, 'Data Structires', 'CS309', 3, 'Ahsan', 'CS108', 'CORE', 5);



CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `fee` (`id`, `amount`, `date`) VALUES
(1, 7400, '2019-12-10');


CREATE TABLE `feedetails` (
  `id` int(11) NOT NULL,
  `chalanno` int(11) DEFAULT NULL,
  `sID` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `cHrs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `final` (
  `final_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `final` (`final_no`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '15', 'cs101', 40, 50);


CREATE TABLE `project` (
  `project_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` varchar(20) NOT NULL,
  `Total_marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `quiz` (
  `Qno` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `quiz` (`Qno`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '10', 'CS101', 6, 10),
(1, '13', 'CS101', 9, 10),
(1, '15', '8', 198, 200),
(1, '15', 'CS101', 8, 10),
(2, '15', '8', 9, 10);


CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `cID` int(4) DEFAULT NULL,
  `sID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `registration` (`id`, `cID`, `sID`) VALUES
(1, 8, 15),
(2, 8, 13),
(3, 9, 13),
(4, 1, 15),
(10, 0, 13),
(11, 6, 13);


CREATE TABLE `sessional` (
  `sessional_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `sessional` (`sessional_no`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '15', '8', 41, 50),
(2, '13', '8', 70, 100);



CREATE TABLE `trans` (
  `st_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cs_id` varchar(30) NOT NULL,
  `crs_name` varchar(40) NOT NULL,
  `crd_hr` int(3) NOT NULL,
  `type` varchar(10) NOT NULL,
  `sm_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `trans` (`st_id`, `name`, `cs_id`, `crs_name`, `crd_hr`, `type`, `sm_id`) VALUES
('15', 'Ahsan', 'CS101', 'ITC', 3, 'CORE', '1'),
('15', 'Ahsan', 'MT101', 'Calculas-1', 3, 'CORE', '1'),
('15', 'Ahsan', 'CL101', 'ITC-Lab', 1, 'CORE', '1'),
('15', 'Ahsan', 'SS111', 'Islamyat', 3, 'CORE', '1');



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` (`id`, `FName`, `LName`, `username`, `password`, `type`, `address`, `dob`, `gender`) VALUES
(10, 'Qasim', 'Ali', 'qasim', '123', 'STUDENT', NULL, NULL, NULL),
(11, 'Muhammad', 'Ahsan', 'ahsan', 'asdf', 'ADMIN', NULL, NULL, NULL),
(12, 'Kashif', 'Raza', 'kashi', '123', 'FACULTY', NULL, NULL, NULL),
(13, 'Muhammad', 'Ahsan', 'ahsan', 'asd', 'STUDENT', NULL, NULL, NULL),
(14, 'Ahsan', 'Khan', 'ahsan', 'asd', 'FACULTY', NULL, NULL, NULL),
(15, 'Hammad', 'Hassan', '123', 'asadasad', 'STUDENT', NULL, NULL, NULL),
(16, 'Shoaib Khan', 'Khan', 'ahsan', 'asdfasdf', 'FACULTY', NULL, NULL, NULL),
(17, 'Usman', 'Ali', 'usmanali', 'asadasad', 'FACULTY', NULL, NULL, NULL);


ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_no`,`st_id`,`course_title`);


ALTER TABLE `attendence`
  ADD PRIMARY KEY (`st_id`,`cs_id`,`lecture_no`);


ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `feedetails`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `final`
  ADD PRIMARY KEY (`final_no`,`st_id`,`course_title`);


ALTER TABLE `project`
  ADD PRIMARY KEY (`project_no`,`st_id`,`course_title`);


ALTER TABLE `quiz`
  ADD PRIMARY KEY (`Qno`,`st_id`,`course_title`);


ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `sessional`
  ADD PRIMARY KEY (`sessional_no`,`st_id`,`course_title`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `feedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
