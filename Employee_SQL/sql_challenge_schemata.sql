employees
-
emp_no INT PK FK >- titles.emp_no
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
gender VARCHAR(10)
hire_date DATE

titles
-
emp_no INT FK
title VARCHAR(30)
from_date DATE
to_date DATE

salaries
-
emp_no INT PK FK >- employees.emp_no
salary INT
from_date DATE
to_date DATE

dept_manager
-
dept_no VARCHAR(30) FK
emp_no INT PK FK >- employees.emp_no
from_date DATE
to_date DATE

dept_emp
-
emp_no INT PK FK >- employees.emp_no
dept_no VARCHAR(30) FK >- departments.dept_no
from_date DATE
to_date DATE

departments
-
dept_no VARCHAR(30) PK FK >- dept_manager.dept_no
dept_name VARCHAR(30)
