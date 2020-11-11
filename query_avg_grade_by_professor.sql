USE capstone_school_schema;

SELECT p.professors_name AS "Professor", AVG(g.grade_grade) AS "Average"
FROM professors p, grades g
WHERE p.professors_id = g.grade_professorid
GROUP BY g.grade_professorid;