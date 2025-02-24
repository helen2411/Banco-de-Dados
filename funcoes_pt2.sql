use employees;

Select * From employees;

-- char length (contagem de caracteres)
Select first_name , char_length(first_name) as qtd_char from employees;

-- Concat (Concatenação)
Select concat( first_name, " nasceu em ", birth_date) as data_nascimeto from employees;

-- Concat_ws (Concatena com separador)
Select concat_ws("*", first_name,last_name) from employees;

-- Case
-- U- Upper-maiusculo
-- L- Lower-Minusculo
Select first_name, Ucase(first_name) from employees;
Select first_name, Lcase(first_name) from employees;

-- Replace (termo que não quer, termo desejado)
Select replace(first_name, "Georgi", "Georginho"), last_name from employees where emp_no = "10001";

-- Left * fracionar quem até qual limite (da esquerda para direita)
Select first_name , Left (first_name,3) from employees;

-- Right * fracionar quem até qual limite (da direita para esquerda)
Select first_name , Right (first_name,3) from employees;

Select hire_date,birth_date From employees;
-- Date Diff diferença entre datas
Select DateDiff(hire_date,birth_date) From employees;

-- Filtragem de Datas no formato desejado
Select first_name , date_format( hire_date, "%d / %m /%y") from employees;

Create Table emails (
id int primary key auto_increment,
primario Varchar(255) not null
);

Insert emails (primario) Values ("helen lais @ gmail . com");

Select * From emails;
-- Remove espaços iniciais e finais que estão em branco
Select trim(primario) from emails;
