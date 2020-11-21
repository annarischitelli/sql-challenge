---Clean reset---
DROP TABLE departments, dept_emp, dept_manager, employees, salaries, titles;

--- Create tables with primary keys BEFORE other ones (departments, titles, employees)
CREATE TABLE "departments"(
	dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE "titles"(
	title_id varchar   NOT NULL,
    title varchar   NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE "employees"(
	emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex varchar NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

--- After that, create department manager, department employee, salaries
DROP TABLE dept_manager
CREATE TABLE "dept_manager"(
	dept_no varchar NOT NULL,
	emp_no int NOT NULL
-- 	PRIMARY KEY (dept_no),
-- 	FOREIGN KEY (emp_no) references employees (emp_no)
);
--- HAVING KEY ISSUES ABOVE & BELOW !!!
DROP TABLE dept_emp
CREATE TABLE "dept_emp"(
	emp_no int NOT NULL,
	dept_no varchar NOT NULL
-- 	PRIMARY KEY (dept_no),
-- 	FOREIGN KEY (dept_no) references dept_manager (dept_no),
-- 	FOREIGN KEY (emp_no) references employees (emp_no)
);

CREATE TABLE "salaries"(
	emp_no int NOT NULL,
	salary int NOT NULL,
	PRIMARY KEY (emp_no)
);

--- Check all tables and data ---
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles
