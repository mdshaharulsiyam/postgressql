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
   GROUP BY d.department_id ORDER BY total_student DESC LIMIT 5;

SELECT 
about,
 email, 
 student_name, fees,
   EXTRACT(YEAR FROM date_of_birth) AS birth_year
   FROM "Students"
ORDER BY fees DESC
LIMIT 3;

SELECT 
d.department_id ,
d.department_name,
AVG(s.fees) AS fees
FROM "Departments" d
INNER JOIN "Students" s 
ON s.department_id=d.department_id
 GROUP BY d.department_id 
 ORDER BY d.department_id DESC
  LIMIT 3; 

  SELECT 
e.enrollment_id,
c.course_name,
e.grade,
e.enrollment_date,
  (SELECT COUNT(*) FROM "Students" s  WHERE e.student_id =s.student_id) AS total_student 
  FROM "Enrollments" e 
  INNER JOIN "Courses" c ON c.course_id=e.course_id;
  SELECT 
  c.course_id,
  c.course_name,
  COUNT(e.student_id) AS total_enrollments
FROM "Enrollments" e
INNER JOIN "Courses" c ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY total_enrollments DESC
LIMIT 3;

-- this query bellow is not my 
SELECT 
  c.course_id,
  c.course_name,
  COUNT(e.student_id) AS total_students,
  COALESCE(
    JSON_AGG(
      JSON_BUILD_OBJECT(
        'student_id', s.student_id,
        'student_name', s.student_name,
        'email', s.email,
        'roll', s.roll,
        'fees', s.fees,
        'dob', s.date_of_birth
      )
    ) FILTER (WHERE s.student_id IS NOT NULL),
    '[]'
  ) AS students
FROM "Courses" c
LEFT JOIN "Enrollments" e ON c.course_id = e.course_id
LEFT JOIN "Students" s ON s.student_id = e.student_id
GROUP BY c.course_id, c.course_name
ORDER BY total_students DESC;
--  this query in up written by chatgpt