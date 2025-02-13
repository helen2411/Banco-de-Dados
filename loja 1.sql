create database Loja;
use Loja;

create table Vendas(
	 id_venda Varchar(6) Unique, 
     id_produto int(6) Unique, 
	 quantidade int(5),
     preco_unitario decimal(6,2),
     id_categoria Varchar(50)
);

insert into Vendas (id_venda, id_produto , quantidade , preco_unitario, id_categoria ) values ("2e3r4t","000001",3,50.33,"Utensílios");
insert into Vendas (id_venda, id_produto , quantidade , preco_unitario, id_categoria) values ("4e9r8t","000002",2,25.99,"Limpeza");
insert into Vendas (id_venda, id_produto , quantidade , preco_unitario, id_categoria) values ("1e6r7t","000003",1,150.00,"Tecnologia");

select * from Vendas;

SELECT SUM(quantidade * preco_unitario) FROM Vendas where id_categoria = "Utensílios";