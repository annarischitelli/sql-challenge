--- DATA ANALYSIS ---
-- 1. List employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE EXTRACT(year from hire_date) = 1986;

--3. List the manager of each department and include: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments, employees, dept_emp
WHERE departments.dept_no = dept_emp.dept_no AND employees.emp_no = dept_emp.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, dept_emp, departments
WHERE employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no;

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, dept_emp, departments
WHERE employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no
AND (departments.dept_name = 'Sales' OR departments.dept_name = 'Development');