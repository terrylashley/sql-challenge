-- Create a Query consisting of Employee #, last name, first name, gender, and salary
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
FULL OUTER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY 1 ;


-- Create a Query consisting of the Manager of each department with department number, department name, the managers employee number
-- last name, first name, alon with their start and end employment dates

select *   --department number, department name
FROM departments;

select *   --managers employee number, from date, to date
FROM dept_manager;

select *   -- employees last name, first name
FROM employees;