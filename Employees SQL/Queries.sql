--Query 1
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees"
JOIN "Salaries" ON "Employees".emp_no = "Salaries".emp_no

--Query 2
SELECT "Employees".first_name, "Employees".last_name, "Employees".hire_date
FROM "Employees"
WHERE hire_date LIKE '%1986%'
ORDER BY first_name

--Query 3
SELECT "Dept_Manager".dept_no, "Departments".dept_name, "Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Employees"
INNER JOIN "Dept_Manager" ON "Employees".emp_no = "Dept_Manager".emp_no
INNER JOIN "Departments" ON "Dept_Manager".dept_no = "Departments".dept_no
WHERE emp_title_id = 'm0001'
ORDER BY emp_no

--Query 4
SELECT  "Dept_Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Employees" ON "Employees".emp_no = "Dept_Employees".emp_no
INNER JOIN "Departments" ON "Dept_Employees".dept_no = "Departments".dept_no
ORDER BY emp_no

--Query 5
SELECT  "Employees".first_name, "Employees".last_name, "Employees".sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY emp_no

--Query 6
SELECT  "Dept_Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Employees" ON "Employees".emp_no = "Dept_Employees".emp_no
INNER JOIN "Departments" ON "Dept_Employees".dept_no = "Departments".dept_no
WHERE dept_name = 'Sales'
ORDER BY emp_no

--Query 7
SELECT  "Dept_Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Employees" ON "Employees".emp_no = "Dept_Employees".emp_no
INNER JOIN "Departments" ON "Dept_Employees".dept_no = "Departments".dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY emp_no

--Query 8
SELECT last_name, COUNT(*) AS frequency_count
FROM "Employees"
GROUP BY last_name
ORDER BY frequency_count DESC;