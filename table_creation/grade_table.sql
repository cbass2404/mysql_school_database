CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `grade_grade` int NOT NULL,
  `grade_studentid` int NOT NULL,
  `grade_professorid` int NOT NULL,
  `grade_courseid` int NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_id_UNIQUE` (`grade_id`),
  KEY `fk_grades_1_idx` (`grade_studentid`),
  KEY `fk_grades_1_idx1` (`grade_professorid`),
  KEY `fk_grades_courseid_idx` (`grade_courseid`),
  CONSTRAINT `fk_grades_courseid` FOREIGN KEY (`grade_courseid`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `fk_grades_professorsid` FOREIGN KEY (`grade_professorid`) REFERENCES `professors` (`professors_id`),
  CONSTRAINT `fk_grades_studentid` FOREIGN KEY (`grade_studentid`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
