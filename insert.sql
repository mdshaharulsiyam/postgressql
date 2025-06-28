INSERT INTO "Departments" (department_name) VALUES
('Computer Science'),
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('English Literature'),
('Economics'),
('History'),
('Engineering'),
('Philosophy');

INSERT INTO "Employee" (first_name, last_name, about, department_id) VALUES
('Alice', 'Smith', 'Senior HR Manager', 1),
('Bob', 'Johnson', 'IT Technician', 1),
('Charlie', 'Brown', 'Accountant', 2),
('Diana', 'Taylor', 'Lab Technician', 3),
('Evan', 'White', 'Clerk', 4),
('Fiona', 'Green', 'Receptionist', 5),
('George', 'Martin', 'Research Assistant', 6),
('Hannah', 'Adams', 'Janitor', 7),
('Ian', 'Walker', 'Project Manager', 8),
('Julia', 'Hall', 'Admin Assistant', 9);

INSERT INTO "Courses" (course_name, credits) VALUES
('Data Structures', 4),
('Linear Algebra', 3),
('Organic Chemistry', 4),
('Quantum Mechanics', 4),
('Microbiology', 3),
('British Poetry', 2),
('Macroeconomics', 3),
('Modern History', 3),
('Thermodynamics', 4),
('Ethics and Morality', 2);


INSERT INTO "Students" (student_name, roll, fees, about, date_of_birth, email, department_id) VALUES
('Arif Hossain', 101, 15000, 'Loves algorithms', '2000-05-10', 'arif101@example.com', 1),
('Salma Khatun', 102, 14000, 'Interested in math', '1999-12-20', 'salma102@example.com', 2),
('Biplob Das', 103, 15500, 'Aspiring chemist', '2001-03-15', 'biplob103@example.com', 4),
('Nazmul Islam', 104, 16000, 'Physics enthusiast', '2000-08-22', 'nazmul104@example.com', 3),
('Faria Ahmed', 105, 14500, 'Bio lover', '2002-06-01', 'faria105@example.com', 5),
('Tamim Khan', 106, 17000, 'Poet and writer', '1998-11-30', 'tamim106@example.com', 6),
('Sadia Rahman', 107, 13500, 'Economics student', '2001-09-10', 'sadia107@example.com', 7),
('Jamil Chowdhury', 108, 14200, 'History buff', '1999-07-25', 'jamil108@example.com', 8),
('Nadia Hasan', 109, 18000, 'Engineer in making', '2000-04-18', 'nadia109@example.com', 9),
('Rafiq Karim', 110, 13000, 'Philosopher at heart', '2002-02-14', 'rafiq110@example.com', 10);


INSERT INTO "Instructors" (instructor_name, department_id) VALUES
('Dr. Anwar Hossain', 1),
('Prof. Shirin Akter', 2),
('Dr. Kamal Uddin', 3),
('Dr. Lubna Ahmed', 4),
('Prof. Mahmud Hasan', 5),
('Dr. Nusrat Jahan', 6),
('Prof. Ahsan Karim', 7),
('Dr. Tanvir Rahman', 8),
('Prof. Rehana Siddiqui', 9),
('Dr. Omar Faruq', 10);


INSERT INTO "Enrollments" (student_id, course_id, grade, enrollment_date) VALUES
(1, 1, 85.50, '2024-01-15'),
(2, 2, 78.00, '2024-01-20'),
(3, 3, 92.30, '2024-01-25'),
(4, 4, 88.75, '2024-01-28'),
(5, 5, 80.00, '2024-02-01'),
(6, 6, 95.00, '2024-02-05'),
(7, 7, 82.50, '2024-02-10'),
(8, 8, 75.00, '2024-02-12'),
(9, 9, 89.60, '2024-02-14'),
(10, 10, 91.10, '2024-02-16');


INSERT INTO "CourseAssignments" (course_id, instructor_id, semester, year) VALUES
(1, 1, 'Spring', 2024),
(2, 2, 'Spring', 2024),
(3, 4, 'Fall', 2024),
(4, 3, 'Fall', 2024),
(5, 5, 'Summer', 2024),
(6, 6, 'Spring', 2025),
(7, 7, 'Fall', 2025),
(8, 8, 'Summer', 2025),
(9, 9, 'Spring', 2025),
(10, 10, 'Fall', 2025);
