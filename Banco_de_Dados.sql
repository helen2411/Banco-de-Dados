create database Banco_de_Dados;
use Banco_de_Dados ;

create table Clientes(
     id_cliente Int(6) Unique, 
     nome_cliente Varchar(50),
     estado Varchar(3)
);

insert into Clientes ( id_cliente , nome_cliente , estado ) values ("098760","Pablo","SP");
insert into Clientes ( id_cliente , nome_cliente , estado) values ("087654","Lúcia","RJ");
insert into Clientes ( id_cliente , nome_cliente , estado) values ("087674","Carlos","MG");

select * from Clientes;

SELECT * FROM Clientes WHERE estado  in ("SP", "RJ", "MG");