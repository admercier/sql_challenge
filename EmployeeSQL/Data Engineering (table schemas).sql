 
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

select * from departments

CREATE TABLE titles (
    emp_title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
	PRIMARY KEY (emp_title_id)
);

select * from titles

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR not null,
    birth_date date NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    SEX VARCHAR NOT NULL,
    hire_date date NOT NULL,
	PRIMARY KEY (emp_no),
	foreign key (emp_title_id) references titles(emp_title_id)
);

select * from employees

CREATE TABLE department_employees (
    emp_no INT   NOT NULL,
	dept_no VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from department_employees

CREATE TABLE department_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from department_manager

CREATE TABLE salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,   
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries
