create database LivrariaDB;
use  LivrariaDB;

create table Autores (
	id_autor int primary key auto_increment,
    nome Varchar (100) not null,
    nacionalidade Varchar(50)
);

create table Livros (
	id_livro int primary key auto_increment ,
    titulo Varchar (100) not null,
    ano_publicacao Int(4),
    id_autor int not null,
	Foreign key (id_livro) references Autores(id_autor)
);

Insert into Autores(nome,nacionalidade) values ("John Bunyan", "Britânico");
Insert into Autores(nome,nacionalidade) values ("George Orwell", "Britânico");
Insert into Autores(nome,nacionalidade) values ("Clarisse Lispector", "Brasileira");

Select * from Autores;
Select * from Livros;

Insert into Livros(titulo,ano_publicacao, id_autor) values ("O peregrino ", 1678, 1);
Insert into Autores(nome,nacionalidade, id_autor) values ("A revolução dos Bichos", 1945,2 );
Insert into Autores(nome,nacionalidade, id_autor) values ("1984", 1949,2);
Insert into Autores(nome,nacionalidade, id_autor) values ("A política e a língua inglesa", 1946,2);
Insert into Autores(nome,nacionalidade, id_autor) values ("Àgua Viva", 1973,3);

drop table Livros;

Select * from Autores;
