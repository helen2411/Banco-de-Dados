create database Loja_Xiaomi;
use Loja_Xiaomi;

create table Produtos(
     id_produto int(6) Unique, 
     nome_produto Varchar(50),
     preco decimal(6,2),
	 estoque int(3)
);

insert into Produtos ( id_produto , nome_produto , preco, estoque ) values ("098760","Smartphone",1500.99,50);
insert into Produtos ( id_produto , nome_produto , preco, estoque) values ("087654","Smartwatch",150.99,50);

select * from Produtos;

SELECT id_produto, nome_produto FROM Produtos WHERE nome_produto  LIKE "Smart%";