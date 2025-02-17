-- Iner Join
use employees;

Select employees.first_name, employees.last_name,salaries.salary From employees 
inner join salaries on employees.emp_no = salaries.emp_no ;


