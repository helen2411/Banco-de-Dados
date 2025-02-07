create database Loja_de_Roupas;

use Loja_de_Roupas;

create table Roupas (nome_da_peca  VARCHAR(100), tamanho VARCHAR(3), cor VARCHAR(11), preco INT(3));

insert into Roupas (nome_da_peca, tamanho , cor , preco) values ("Vestido","P","Nude",50);
insert into Roupas (nome_da_peca, tamanho , cor , preco) values ("Calça","G","Preta",60);
insert into Roupas (nome_da_peca, tamanho , cor , preco) values ("Saia","M","Jeans Azul",45);
insert into Roupas (nome_da_peca, tamanho , cor , preco) values ("Jaqueta","PP","Marrom",55);
insert into Roupas (nome_da_peca, tamanho , cor , preco) values ("Blusa","GG","Branca",30);
insert into Roupas (nome_da_peca, tamanho , cor , preco) values ("Camiseta","M","Caqui",40);

select * from Roupas;

SELECT * FROM Roupas where cor="Preta";


