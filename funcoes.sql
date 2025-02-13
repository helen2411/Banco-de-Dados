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

-- like(* pesquisar)
-- termo% -> desconsidera final
SELECT * FROM employees WHERE first_name LIKE "Geo%" ;
-- %termo -> desconsidera começo
SELECT * FROM employees WHERE first_name LIKE "%or" ;
-- termo% -> desconsidera começo e final
SELECT * FROM employees WHERE first_name LIKE "%ni%" ;

-- IN
-- Para pesquisar apenas 1 nome use = , caso vá fazer múltiplas pesquisas utilize IN
SELECT * FROM  employees WHERE last_name in ("Kalloufi", "Genin");

-- Between
SELECT * FROM salaries where salary BETWEEN 40000 AND 50000;

-- SUM
SELECT SUM(salary) FROM salaries;
