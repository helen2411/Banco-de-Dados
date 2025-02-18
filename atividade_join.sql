Create Database Dados_Loja ;
Use Dados_Loja;

Create Table Clientes (
	id_cliente int primary key auto_increment ,
    nome Varchar (100)
);

Create Table Pedidos(
	id_pedido int primary key auto_increment,
    data_pedido Varchar (100),
    id_cliente  Int not null ,
    foreign key (id_cliente) references Clientes(id_cliente)   
);

insert into Clientes(nome) Values ("Carlos");
insert into Clientes(nome) Values ("Ana");
insert into Clientes(nome) Values ("Bruna");
insert into Clientes(nome) Values ("Jessica");
insert into Clientes(nome) Values ("Victor");
insert into Clientes(nome) Values ("Fernanda");

Select * from Clientes;

insert into Pedidos(data_pedido, id_cliente) Values ("24/01/2025", 1) , ("13/02/2025",1), ("18/03/2025",1);
insert into Pedidos(data_pedido, id_cliente) Values ("01/01/2025", 2);
insert into Pedidos(data_pedido, id_cliente) Values ("04/01/2025", 5);
insert into Pedidos(data_pedido, id_cliente) Values ("12/02/2025", 6) , ("25/03/2025",6);

Select * from Pedidos;

Select Pedidos.id_pedido, Clientes.nome from Pedidos join  Clientes
on  Pedidos.id_cliente = Clientes.id_cliente;

Select Pedidos.id_pedido, Clientes.nome from Clientes left join  Pedidos
on  Pedidos.id_cliente = Clientes.id_cliente;











