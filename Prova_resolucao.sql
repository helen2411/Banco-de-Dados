create database Loja_online;
Use Loja_online;

create table clientes(
	id_cliente int primary key auto_increment,
    nome Varchar(110) not null,
    email Varchar (220) not null unique,
    telefone Varchar (20),
    endereco Varchar (220)
);

create table pedidos(
	id_pedido int primary key auto_increment,
    id_cliente int not null,
    foreign key (id_cliente) references clientes(id_cliente),
    data_pedido date,
    total int(3), 
    status Varchar (100)
);

create table fornecedores(
	id_fornecedores int primary key auto_increment,
    nome_fornecedor Varchar(110) not null,
    contato Varchar (20),
    endereco Varchar (220)
);

create table produtos(
	id_produto int primary key auto_increment,
    nome_produto Varchar (110),
    preco decimal(6.6), 
    id_fornecedores int not null,
    foreign key (id_fornecedores) references fornecedores(id_fornecedores),
    endereco Varchar (220)
);

create table pagamentos(
	id_pagamento int primary key auto_increment,
    id_pedido int not null,
	foreign key (id_pedido) references pedidos(id_pedido),
    metodo_pagamento varchar(100),
    status Varchar(100),
    valor_pago decimal (6.6)
);







