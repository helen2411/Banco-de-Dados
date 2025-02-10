create database Banco;
use Banco;

create table contas(
	id Int primary key not null auto_increment,
    nome Varchar(255) not null,
	sobrenome Varchar(255) not null,
    saldo Decimal(8,2) not null,
    data Varchar(11)
);

insert into contas values(1,"Helen","Laís",200000,"10/02/2025");
insert into contas values(2,"Maria","Gomes",100000,"10/02/2025");
insert into contas values(3,"Samuel","Cunha",60000,"10/02/2025");
select * from contas;