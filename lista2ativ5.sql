-- criação de banco de dados de loka de construção
create database db_construindo_a_nossa_vida

-- criação de tabela de categoria
use db_construindo_a_nossa_vida;

create table tb_categoria (
id int auto_increment,
tipo varchar (20) not null,
descricao varchar (100) not null,
primary key (id)
)

-- preenchendo tabela de categoria

insert into tb_categoria (tipo,descricao) values ("Pintura", "Tintas para pintura");
insert into tb_categoria (tipo,descricao) values ("Telhas", "Telhadas e telhados pré prontos");
insert into tb_categoria (tipo,descricao) values ("Madeiras", "Madeiras confecionadas");
insert into tb_categoria (tipo,descricao) values ("Ferramentas", "Ferramentos em geral para construção");

-- criação de tabela de produtos

create table tb_produtos (
id int auto_increment,
nome varchar (20) not null,
quantidade int (3) not null,
valor decimal (5,2) not null,
categoria int (2),
primary key (id),
foreign key (categoria) references tb_categoria(id)
);

-- preenchimentos tabela de produtos

insert into tb_produtos (nome,quantidade,valor,categoria) values ("Suvinil",50,299.99,1);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Pínus",100,50,3);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Terracota",100,45.90,2);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Martelo",45,15.99,4);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Coral",100,150,1);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Serra",50,199.90,4);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Alicate",55,29.99,4);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Barrobello",100, 29.99,2);

-- consulta valor maior que 50 reais
select * from tb_produtos where valor > 50

-- consulta valor entre 3 e 60
select * from tb_produtos where valor between 3 and 60

-- consulta nomes que se iniciam com C
select * from tb_produtos where nome like "C%"

-- consulta entre tabelas inner join
select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.valor, tb_produtos.categoria, tb_categoria.tipo, tb_categoria.descricao
from tb_produtos inner join tb_categoria on tb_produtos.categoria = tb_categoria.id

-- consulta entre tabelas inner join especifica
select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.valor, tb_produtos.categoria, tb_categoria.tipo, tb_categoria.descricao
from tb_produtos inner join tb_categoria on tb_produtos.categoria = tb_categoria.id where tipo like "%Fe%"