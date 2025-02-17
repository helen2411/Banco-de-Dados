create database CoresDoBrasil;
use CoresDoBrasil;

create table clientes(
	nome Varchar (100), 
    email Varchar(255) Unique, 
    telefone Varchar(18)
);

Insert into clientes(nome,email,telefone) values ("Helen", "helen22@gmail.com","(61) 1234-5678" );
Insert into clientes(nome,email,telefone) values ("Laís", "","" );

alter table clientes modify column email Varchar(255) unique not null;

select * from clientes;

#produtos

create table produtos(
	id Int Unique not null,
    nome Varchar(255) not null,
    peso Decimal(6,2) not null,
    cor Varchar(100)
);

insert into produtos values(1,"Creme hidratante",500,"branco");
insert into produtos values(2,"Perfume Maracujá",50,"amarelo");
select * from produtos;

#Pedidos

Create Table pedidos (
	id Int primary key not null auto_increment,
    pagamento Varchar (80),
    valor Decimal (6,2),
    produto_id int not null,
    Foreign key (produto_id) references produtos(id)
);

insert into pedidos(pagamento,valor,produto_id) values("Pix", 10, 1);
select * from pedidos;
select * from produtos where id = 1



