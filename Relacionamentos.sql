Create Database relacionamentos;

use relacionamentos;

-- one to  one (um para um)
Create table alunos (
	id int primary key auto_increment,
    nome Varchar(100) not null,
    turma Varchar(5)
);

Create table contato (
	id int primary key auto_increment,
    telefone Varchar(20),
    aluno_id int not null,
    foreign key (aluno_id) References alunos(id)
);

Insert into alunos(nome,turma) values ("Helen", "002M");
Insert into alunos(nome,turma) values ("Juan", "003M");
Insert into alunos(nome,turma) values ("Milena", "002M");

Insert into contato (telefone,aluno_id) values("(61)985467898",1);
Insert into contato (telefone,aluno_id) values("(61)995467898",1);
Insert into contato (telefone,aluno_id) values("(61)982467898",2);
Insert into contato (telefone,aluno_id) values("(61)996467898",2);
Insert into contato (telefone,aluno_id) values("(61)987467898",3);
Insert into contato (telefone,aluno_id) values("(61)996867898",3);

Select * from alunos;
Select * from contato;

Select* from contato where aluno_id=1;
Select * , alunos.nome, alunos.turma, contato.telefone from alunos join contato on contato.aluno_id;

-- one to many(um com vários)

Create Table clientes(
		id int primary key auto_increment,
        nome Varchar (100)
);

-- Quem é o estrangeiro e de onde vem
Create Table pedidos(
		id int primary key auto_increment,
        valorTotal Float,
        cliente_id Int not null,
        Foreign key (cliente_id) references clientes(id)
);

Insert Into clientes(nome) values ("Samuel");
Insert Into pedidos(valorTotal,cliente_id) Values (95,1);
Insert Into pedidos(valorTotal,cliente_id) Values (80,1);
Insert Into pedidos(valorTotal,cliente_id) Values (150,1);







