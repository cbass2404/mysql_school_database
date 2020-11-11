use capstone_school_schema;

SELECT c.course_name AS "Course", s.student_name AS "Student"
FROM grades g, students s, courses c
WHERE g.grade_studentid = s.student_id
AND g.grade_courseid = c.course_id
ORDER BY c.course_name;