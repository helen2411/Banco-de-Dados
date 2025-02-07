use employees;
SELECT * FROM employees where first_name= "Helen";
insert into employees(birth_date,first_name,last_name,gender,hire_date) values ("2002-11-24","Helen","Laís","F","2024-09-01");
Set SQL_SAFE_UPDATES =0;
update employees set last_name="Laís Gomes" where last_name="Laís";
