--Checking that csvs are imported

SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_managed, departments.dept_name, dept_manager.man_id, employees.last_name, employees.first_name
FROM 
dept_manager JOIN departments 
ON dept_manager.dept_managed=departments.dept_no
JOIN employees
ON dept_manager.man_id=employees.emp_no;

