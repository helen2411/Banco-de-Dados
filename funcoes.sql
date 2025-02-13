USE employees; 
SELECT * FROM employees.salaries;

-- min
SELECT MIN(salary) as menor_salario FROM salaries;
-- min raiz
SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;
-- max
SELECT MAX(salary) as maior_salario FROM salaries;
-- max raiz
SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;  

-- count
SELECT COUNT(*) FROM salaries;
SELECT COUNT(*) FROM employees WHERE  gender = "F";
SELECT COUNT(*) FROM employees WHERE  first_name = "Georgi";


