INSERT INTO "Courses"(course_name,credits) VALUES("web development",10);
INSERT INTO "Departments"(department_name) VALUES("Software");


SELECT * FROM "Students" WHERE fees BETWEEN 100 AND 500;

SELECT s.name s.email s.fees FROM "Students" s WHERE fees BETWEEN 100 AND 500;

SELECT s.name s.email s.fees d.department_name d.department_id AS dept_if FROM "Students" INNER JOIN "Departments" ON d d.department_id = s.student_id;

SELECT AVG(fees) AS avg_fee, COUNT(*) AS total, MAX(fees) AS max_fee FROM "Students";
