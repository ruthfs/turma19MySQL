-- criando o banco de dados da farmacia
create database db_farmacia_do_bem

-- criando a tabela de categoria
use db_farmacia_do_bem;

create table tb_categoria(
id int auto_increment,
tipo varchar (25) not null,
descricao varchar (100) not null,
primary key (id)
)

-- preenchendo a tabela de categoria

insert into tb_categoria (tipo,descricao) values ("Comprimidos", "Medicamentos compreensados em cartelas");
insert into tb_categoria (tipo,descricao) values ("Xaropes", "Medicamentos liquidos");
insert into tb_categoria (tipo,descricao) values ("Colírios", "Medicamentos Oftamologicos");
insert into tb_categoria (tipo,descricao) values ("Pomadas", "Pomadas de relaxamento muscular e assaduras");
insert into tb_categoria (tipo,descricao) values ("Cremes", "Cremes para ressecamento e alergias");

-- criando tabelas de produtos

create table tb_produtos (
id int auto_increment,
nome varchar (20) not null,
quantidade int (2) not null,
valor decimal (5,2) not null,
categoria int (2) not null,
primary key(id),
foreign key (categoria) references tb_categoria(id)
)

-- preenchendo a tabelas de produtos

insert into tb_produtos (nome,quantidade,valor,categoria) values ("Decongex", 50, 19.99,2);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Vitamina-C",25,11.99,1);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Neutrogena", 20, 75.50,5);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Hylo Comod", 10, 59.90,3);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Hipogloss", 50, 14.99,4);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Nivea", 15, 10.99, 5);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Paracetamol", 25, 4.99,1);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Vick Mel", 10, 31.99,2);

-- consulta de produtos de valor maior que 50
select * from tb_produtos where valor >50

-- consulta de produtos de valor esta entre 3 e 60 reais
select * from tb_produtos where valor between 3 and 60

-- consulta de produtos com a letra H
select * from tb_produtos where nome like "H%"

-- consulta de tabelas especificas com inner join
select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.valor, tb_categoria.tipo, tb_categoria.descricao 
from tb_produtos inner join tb_categoria on tb_produtos.categoria = tb_categoria.id where tipo = "Cremes"