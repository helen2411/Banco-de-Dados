drop database pessoas;

create database pessoas;

use pessoas;

create table pessoas (nome VARCHAR(100), rg INT(7), cpf VARCHAR(11), idade INT(3));

insert into pessoas (nome, rg, cpf, idade) values ("Anderson",3667821,"2147483647",29);
insert into pessoas (nome, rg, cpf, idade) values ("Aline",3657821,"3147483647",22);
insert into pessoas (nome, rg, cpf, idade) values ("Júlia",3647821,"4147483647",24);
insert into pessoas (nome, rg, cpf, idade) values ("Carlos",3637821,"5147483647",25);
insert into pessoas (nome, rg, cpf, idade) values ("Elena",3627821,"6147483647",23);

select * from pessoas;