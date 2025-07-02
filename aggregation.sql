SELECT COUNT(*) AS total, MAX(fees) AS max_fee, MIN(fees) AS min_fee, AVG(fees) AS avg_fee FROM "Students";

SELECT 
  COUNT(*) AS student_per_dept,
  AVG(fees) AS avg_fee_per_dept,
  MAX(fees) AS max_fee_per_dept,
  MIN(fees) AS min_fee_per_dept,
  SUM(fees) AS total_fee_per_dept ,
    d.department_name AS department
FROM 
  "Students" s
LEFT JOIN 
  "Departments" d ON d.department_id = s.department_id
GROUP BY 
  d.department_name;

SELECT EXTRACT(YEAR FROM AGE(date_of_birth)) AS age_in_years ,student_name,date_of_birth FROM "Students" WHERE date_of_birth BETWEEN '1990-01-01' AND '1999-12-31';

SELECT COUNT(*) AS total_student , EXTRACT(YEAR FROM date_of_birth) AS years FROM "Students" GROUP BY years;

SELECT
 c.course_name ,
 c.course_id ,
  (SELECT AVG(e.grade) FROM "Enrollments" e WHERE e.course_id = c.course_id) 
  AS average_grade
   FROM "Courses" c 
   ORDER BY average_grade DESC LIMIT 5;

   SELECT 
   COUNT(*) AS total_student,
   d.department_name,
   d.department_id
   FROM "Departments" d
   INNER JOIN "Students" s ON d.department_id = s.department_id 
   GROUP BY department_id
