-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS dept_emp
(
    emp_no VARCHAR(30) NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    dept_managed VARCHAR(30),
    man_id VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(man_id)
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no VARCHAR(30) NOT NULL UNIQUE,
    emp_title VARCHAR(30),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(30),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no VARCHAR(30) NOT NULL UNIQUE,
    salary INTEGER,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(30) NOT NULL UNIQUE,
    title VARCHAR(30) UNIQUE,
    PRIMARY KEY(title_id)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(30) NOT NULL UNIQUE,
    dept_name VARCHAR(30) UNIQUE,
    PRIMARY KEY(dept_no)
);

--Experimental below
-- Create FKs
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_title)
    REFERENCES titles(title_id)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES salaries(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    

-- Create Indexes

