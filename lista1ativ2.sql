-- criar banco de dados para um ecommerce

create database ecommerce

-- criando a tabela de produtos
use ecommerce;

create table produto (
codigo int (5) auto_increment,
nome varchar (20) not null,
marca varchar (20) not null,
quantidade int (5) not null,
preco decimal (6,2) not null,
primary key (codigo)
);

-- inserindo os produtos dentro da tabela
INSERT INTO produto (nome, marca, quantidade, preco) VALUES ("Playstation 5", "Sony", 5, 5000,00);
insert into produto (nome, marca, quantidade, preco) values ("Ps Vita", "Sony", 10, 1500.00);
insert into produto (nome, marca, quantidade, preco) values ("DualShok 4", "Sony", 6, 250.00);
insert into produto (nome, marca, quantidade, preco) values ("The Last Of Us 2", "Naughty Dog", 2, 300.00);
insert into produto (nome, marca, quantidade, preco) values ("XBox 360", "Microsoft", 5, 2000.00);
insert into produto (nome, marca, quantidade, preco) values ("Forza Horizon 4", "Microsoft", 12, 250.00);
insert into produto (nome, marca, quantidade, preco) values ("RDR 2", "Rockstar", 15, 200.00);
insert into produto (nome, marca, quantidade, preco) values ("The Sims 4", "EA", 5, 160.00);

-- selecionar os produtos menores que 500
select * from produto where preco < 500

-- selecionar os produtos maiores que 500
select * from produto where preco > 500

-- atualização de dado
update produto set preco = 350.00 where codigo = 3