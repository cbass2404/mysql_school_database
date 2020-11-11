USE capstone_school_schema;

SELECT s.student_name AS "Student", MAX(g.grade_grade) AS 'Highest grade'
FROM students s, grades g
WHERE s.student_id = g.grade_studentid
GROUP BY student_id;