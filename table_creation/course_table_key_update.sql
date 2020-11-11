CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  `course_professorid` int NOT NULL,
  `course_studentid` int NOT NULL,
  `course_gradeid` int NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`),
  KEY `fk_courses_studentid_idx` (`course_studentid`),
  KEY `fk_courses_professorid_idx` (`course_professorid`),
  KEY `fk_courses_gradeid_idx` (`course_gradeid`),
  CONSTRAINT `fk_courses_gradeid` FOREIGN KEY (`course_gradeid`) REFERENCES `grades` (`grade_id`),
  CONSTRAINT `fk_courses_professorid` FOREIGN KEY (`course_professorid`) REFERENCES `professors` (`professors_id`),
  CONSTRAINT `fk_courses_studentid` FOREIGN KEY (`course_studentid`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
