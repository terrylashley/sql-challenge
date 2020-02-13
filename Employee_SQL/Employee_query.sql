-- Create a Query consisting of Employee #, last name, first name, gender, and salary
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
FULL OUTER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY 1 ;


-- Manager of each department with (department number, department name, the managers employee number
-- last name, first name, along with their start and end employment dates)

select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d
LEFT JOIN dept_manager m ON d.dept_no = m.dept_no
LEFT JOIN employees e ON e.emp_no = m.emp_no;