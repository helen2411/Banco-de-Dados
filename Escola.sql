Create database Escola;
Use Escola;

Create Table Aluno(
	id_aluno int primary key auto_increment, 
    nome Varchar (110) not null,
    email Varchar (200),
    data_nascimento date    
);

Create Table Professor(
	id_professor int primary key auto_increment, 
    nome Varchar (110) not null,
    email Varchar (200),
    especialidade Varchar(110)   
);

Create Table Curso(
	id_curso int primary key auto_increment, 
    nome Varchar (110) not null,
    descricao Varchar (200),
    id_professor int not null,
	foreign key (id_professor) references Professor(id_professor)
);

Create Table Matricula(
	id_matricula int primary key auto_increment, 
    id_aluno int not null,
	foreign key (id_aluno) references Aluno(id_aluno),
    id_curso int not null,
	foreign key (id_curso) references Curso(id_curso),
    data_matricula date
);

Create Table Avaliacao(
	id_avaliacao int primary key auto_increment, 
    id_matricula int not null,
	foreign key (id_matricula) references Matricula(id_matricula),
	nota decimal (2.1),
    data_avaliacao date
);

insert into Aluno (nome,email,data_nascimento) Values ("Helena", "helena@gmail.com", "2002-02-21");
insert into Aluno (nome,email,data_nascimento) Values ("Carlos", "carlos@gmail.com", "2003-05-12");
insert into Aluno (nome,email,data_nascimento) Values ("Ana", "ana@gmail.com", "2001-11-25");

insert into Professor (nome,email,especialidade) Values ("Natanael", "natanaelprofessor@gmail.com", "Banco de Dados");
insert into Professor (nome,email,especialidade) Values ("Lívia", "liviaprofessora@gmail.com", "Front-End");
insert into Professor (nome,email,especialidade) Values ("Jorge", "jorgeprofessor@gmail.com", "Back-End");

insert into Curso (nome, descricao, id_professor) Values ("Banco de Dados", "MySQL-Workbench, Xampp",1);
insert into Curso (nome, descricao, id_professor) Values ("Front-End", "Bootstrap, Visual Studio Code, HTML, CSS",2);
insert into Curso (nome, descricao, id_professor) Values ("Back-End", "Json, Visual Studio Code,Prisma",3);

insert into Matricula (id_aluno,id_curso, data_matricula) Values (1,1,"2024-06-01");
insert into Matricula (id_aluno,id_curso, data_matricula) Values (2,2,"2025-06-01");
insert into Matricula (id_aluno,id_curso, data_matricula) Values (3,3,"2025-06-01");

insert into Avaliacao (id_matricula,data_avaliacao,nota) Values (1,"2025-02-05",9);
insert into Avaliacao (id_matricula,data_avaliacao,nota) Values (2,"2025-02-05",10);
insert into Avaliacao (id_matricula,data_avaliacao,nota) Values (2,"2025-02-05");

Select* From Avaliacao;

-- Todos Alunos Cadastrados
Select * From Aluno;

-- Nomes dos Cursos e Professores

Select Curso.nome,id_prodfessor from Curso;

-- Alunos Matriculados em Banco de Dados

SELECT * FROM  Matricula WHERE id_curso = "Banco de Dados";

--  Quantidade de Alunos em cada Curso

Select Count(id_curso) from matricula Group by id_curso;

-- Média de notas dos alunos em um curso específico
-- O que quero, União da tabela 1 com 2, Id 1 = Id 2
Select Curso.nome , AVG(Avaliacao.nota) from Curso Join Matricula 
on Curso.id_curso = Matricula.id_matricula join Avaliacao
on Matricula.id_matricula= Avaliacao.id_avaliacao
-- Incompleto

-- Alunos sem nota 

Select * From Avaliacao where nota= “null”;
