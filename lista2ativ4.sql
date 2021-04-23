-- criando banco de dados para feira virtual [atividade 4]
create database db_cidade_das_verduras

-- criando tabela de categoria
use db_cidade_das_verduras;

create table tb_categoria(
id int auto_increment,
tipo varchar (20) not null,
descricao varchar (100) not null,
primary key (id)
)

-- preenchendo tabela de categoria

insert into tb_categoria (tipo,descricao) values ("Verduras", "Verduras orgânicas frecas");
insert into tb_categoria (tipo,descricao) values ("Legumes", "Legumes orgânicos frescos");
insert into tb_categoria (tipo,descricao) values ("Frutas", "Frutas orgânicas frescas");
insert into tb_categoria (tipo,descricao) values ("Tubérculo","Plantas com caule arredondado");

-- criando tabela de produtos
use db_cidade_das_verduras;

create table tb_produtos(
id int auto_increment,
nome varchar(20) not null,
quantidade int (2) not null,
valor decimal (5,2) not null,
categoria int (2),
primary key (id),
foreign key (categoria) references tb_categoria(id)
)

-- preenchendo tabela de produtos

insert into tb_produtos (nome,quantidade,valor,categoria) values ("Abacate",20,15.99,3);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Batata Doce",30,25.90,4);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Pitaya",10,50.99,3);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Alho-Poró",15,51.90,1);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Abóbora",30,39.99,2);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Coentro",35,18.90,1);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Nabo",10,29.99,2);
insert into tb_produtos (nome,quantidade,valor,categoria) values ("Beterraba",15,15.90,2);

-- consulta valor maior que 50
select * from tb_produtos where valor > 50

-- consulta valor entre 3 e 60 reais
select * from tb_produtos where valor between 3 and 60

-- consulta produtos que iniciam com C
select * from tb_produtos where nome like "C%"

-- consulta com inner join
select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.valor, tb_produtos.categoria, tb_categoria.tipo, tb_categoria.descricao 
from tb_produtos inner join tb_categoria on tb_produtos.categoria = tb_categoria.id

-- consulta com inner join especifica
select tb_produtos.nome, tb_produtos.quantidade, tb_produtos.valor, tb_produtos.categoria, tb_categoria.tipo, tb_categoria.descricao 
from tb_produtos inner join tb_categoria on tb_produtos.categoria = tb_categoria.id where tipo = "Legumes"

