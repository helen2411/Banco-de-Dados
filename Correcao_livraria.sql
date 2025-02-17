create database Correcaolivraria;
use Correcaolivraria;

create table Autores(
	id_autor Int primary key auto_increment,
    nome Varchar(100) not null,
    nacionalidade Varchar(50)
);

create table Livros(
	id_livro Int primary key auto_increment,
    titulo Varchar(255) not null,
    ano_publicacao Year,
    id_autor_livro Int not Null,
    foreign key (id_autor_livro) references Autores(id_autor)    
);

Insert into Autores(nome,nacionalidade) Values ("Augusto Cuya","Brasileiro");
Insert into Autores(nome,nacionalidade) Values ("J. R. R. Tolkien","Britânico");

Insert into Livros(titulo,ano_publicacao,id_autor_livro) Values ("O vendedor de Sonhos","2008",1);
Insert into Livros(titulo,ano_publicacao,id_autor_livro) Values ("O Senhor dos Anéis","1937",2);
Insert into Livros(titulo,ano_publicacao,id_autor_livro) Values ("O Hobbit","1937",2);
Insert into Livros(titulo,ano_publicacao,id_autor_livro) Values ("Sociedade dos Anéis","1938",2);

Select* from Autores;
Select* from Livros;

Create Table livros_autores(
	id_autor Int not null,
    id_livro Int not null,
    Foreign key (id_autor) references Autores(id_autor),
    Foreign key (id_livro) references Livros(id_livro)
);

Select* from livros_autores;

Insert Into livros_autores(id_autor, id_livro) values (1,1);
Insert Into livros_autores(id_autor, id_livro) values (2,2);
Insert Into livros_autores(id_autor, id_livro) values (2,3);
Insert Into livros_autores(id_autor, id_livro) values (2,4);

Drop table livros_autores;

Select Livros.titulo, Autores.nome from Livros Join livros_autores 
on Livros.id_livro = Livros_autores.id_livro
Join Autores on livros_autores.id_autor = Autores.id_autor;

