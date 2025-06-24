INSERT INTO "Department"(name) VALUES ('Engineering');

INSERT INTO "Employee"(first_name, last_name, about, department_id) VALUES ('John', 'Doe', 'A software developer', 1), ('Jane', 'Doe', 'A software developer', 1), ('Bob', 'Doe', 'A software developer', 1), ('Alice', 'Doe', 'A software developer', 1);

SELECT * FROM "Department";
SELECT * FROM "Employee";
UPDATE "Employee" SET about = 'A manager updated about text' WHERE employee_id = 1;
DELETE FROM "Employee" WHERE employee_id = 3;