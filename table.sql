CREATE TABLE "Department" (
  department_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
)

CREATE TABLE "Employee" (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  about TEXT,
  department_id INT,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES "Department"(department_id) ON DELETE CASCADE
);










































CREATE TABLE IF NOT EXISTS "Courses" (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(100) NOT NULL,
  credits INT CHECK (credits BETWEEN 1 AND 10)
);

CREATE TABLE IF NOT EXISTS "Departments"(
  department_id SERIAL PRIMARY KEY,
  department_name VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS "Students" (
  student_id SERIAL PRIMARY KEY,
  student_name VARCHAR(30) NOT NULL,
  roll INT NOT NULL,
  fees INT NOT NULL,
  about TEXT,
  date_of_birth DATE CHECK (
        date_of_birth BETWEEN '1900-01-01' AND CURRENT_DATE
  ),
  email VARCHAR(60),
  department_id INT,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES "Department"(department_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS "Instructors"(
  instructor_id SERIAL PRIMARY KEY,
  instructor_name VARCHAR(100) NOT NULL,
  department_id INT REFERENCES "Departments"(department_id) ON DELETE CASCADE
);