use capstone_school_schema;

SELECT c.course_name AS Course, AVG(g.grade_grade) AS Average
FROM courses c, grades g
WHERE c.course_id = g.grade_courseid
GROUP BY g.grade_courseid
ORDER BY Average DESC;