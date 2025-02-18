create database JoinAula;
Use JoinAula;

Create Table pessoa(
	id Int primary key auto_increment,
    nome Varchar(100) not null,
    nacionalidade Varchar(5)
);

Create Table endereco (
id Int primary key auto_increment,
rua Varchar(255),
numero Varchar (100),
pessoa_id Int not Null,
Foreign key (pessoa_id) references pessoa(id)
);

Insert Into pessoa(nome,nacionalidade) Values("Helen Laís","BR");
Insert Into pessoa(nome,nacionalidade) Values("Maria José","BR");

Select * from pessoa;

Insert Into endereco(rua,numero,pessoa_id) Values ("Qr 208 Conj 17", "Casa 5",1);

Select * from endereco;

-- inner seleciona a  interseção ou o que há em comum nas duas colunas
Select pessoa.nome, endereco.rua from pessoa join  endereco
on  pessoa.id = endereco.id;
--  inner join
Select pessoa.nome, endereco.rua from pessoa inner join  endereco
on  pessoa.id = endereco.id;
-- right join= Junta as duas,priorizando a tabela da direita
Select pessoa.nome, endereco.rua from pessoa right join  pessoa
on  pessoa.id = endereco.id;
-- left join = Junta as duas priorizando a tabela da esquerda
Select pessoa.nome, endereco.rua from pessoa left join  endereco
on  pessoa.id = endereco.id;

-- Mudança de Banco de Dados

Use employees;
Select * from employees;
Select * from dept_emp;

-- O que quero, de onde, agrupar quem?
Select gender as genero, Count(gender) as qtd_por_genero from employees Group by gender;
Select dept_no, Count(dept_no) from dept_emp Group By dept_no;




