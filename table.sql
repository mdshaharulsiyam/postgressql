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