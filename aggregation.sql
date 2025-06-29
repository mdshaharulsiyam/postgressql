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


