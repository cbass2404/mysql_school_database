use capstone_school_schema;

SELECT
	p.professors_name AS Professor,
    s.student_name AS Student,
    count(*) AS Shared
FROM grades g
    LEFT JOIN (
		SELECT *
        FROM professors
	) AS p
    ON g.grade_professorid = p.professors_id
    LEFT JOIN (
		SELECT *
        FROM students
	) AS s
    ON g.grade_studentid = s.student_id
GROUP BY p.professors_name, s.student_name
ORDER BY Professor, Student;