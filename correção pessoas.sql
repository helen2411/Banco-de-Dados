Create database correcao_cadastro;
Use correcao_cadastro;
Create Table pessoas(nome Varchar (100), rg int(10), cpf int(12), idade int(3));
Alter table pessoas Add saldo decimal(6,2);

insert into pessoas (nome,rg,cpf,idade) values ("Elisa",1734567,09876543210,23);
insert into pessoas (nome,rg,cpf,idade) values ("Eduardo",1634567,08876543210,24);
insert into pessoas (nome,rg,cpf,idade) values ("Everton",1534567,07876543210,25);
insert into pessoas (nome,rg,cpf,idade) values ("Elaine",1434567,06876543210,26);
insert into pessoas (nome,rg,cpf,idade) values ("Eliseu",1334567,05876543210,27);
insert into pessoas (nome,rg,cpf,idade) values ("Eloise",1234567,04876543210,28);

select * from pessoas;