-- Create a Query consisting of Employee #, last name, first name, gender, and salary
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
FULL OUTER JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY 1 ;

--List employees who were hired in 1986.
select last_name, first_name, hire_date
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31'
order by hire_date ASC;


-- Manager of each department with (department number, department name, the managers employee number
-- last name, first name, along with their start and end employment dates)
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d
LEFT JOIN dept_manager m ON d.dept_no = m.dept_no
LEFT JOIN employees e ON e.emp_no = m.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B"
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from employees e    
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON d.dept_no = de.dept_no
WHERE dept_name LIKE 'Sales'
ORDER BY emp_no ASC;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from employees e      
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON d.dept_no = de.dept_no
WHERE dept_name LIKE 'Sales' or dept_name LIKE 'Development'
ORDER BY dept_name desc;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by last_name desc;