-- 1. Retrieve employee no, last name, first name, gender, and salary of all employees
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM Employees e
LEFT JOIN Salaries s ON e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT emp_no, last_name, first_name
FROM Employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM Department_Managers dm
LEFT JOIN Departments d ON dm.dept_no = d.dept_no
LEFT JOIN Employees e ON dm.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Department_Employees de
LEFT JOIN Employees e ON de.emp_no = e.emp_no
LEFT JOIN Departments d ON de.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT emp_no, last_name, first_name
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Department_Employees de
LEFT JOIN Employees e ON e.emp_no = de.emp_no
LEFT JOIN Departments d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Department_Employees de
LEFT JOIN Employees e ON e.emp_no = de.emp_no
LEFT JOIN Departments d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM Employees
ORDER BY column_name DESC
GROUP BY last_name;
