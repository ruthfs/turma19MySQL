-- criando banco de dados de curso
create database db_cursoDaMinhaVida 

-- criando tabela de categoria
use db_cursoDaMinhaVida; 

create table tb_categoria (
id int auto_increment,
curso varchar (20) not null,
descricao varchar (100) not null,
primary key (id)
);

-- preenchendo tabela categoria

insert into tb_categoria (curso,descricao) values ("Técnologia", "Cursos voltado para desenvolvimeto web");
insert into tb_categoria (curso,descricao) values ("Profissionalisante", "Cursos voltado as necessidades empresariais");
insert into tb_categoria (curso,descricao) values ("Música","Cursos voltado para área da música");
insert into tb_categoria (curso,descricao) values ("Literatura", "Cursos voltados para área das letras");

-- criando a tabela produto
create table tb_produto(
id int auto_increment,
nome varchar(35) not null,
idade_minima varchar (15) not null,
valor decimal (5,2) not null,
categoria int (2) not null,
primary key (id),
foreign key (categoria) references tb_categoria(id)
);

-- preenchendo a tabela de produtos

insert into tb_produto (nome,idade_minima,valor,categoria) values ("Design","15 anos", 150,1);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("Escrita Criativa","18 anos",250,4);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("Word 2016", "15 anos", 39.99,2);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("Teoria Músical", "10 anos", 69.99,3);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("Excel 2016","15 anos", 39.99,2);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("Java", "15 anos",79.99,1);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("Piano", "10 anos", 45.90,3);
insert into tb_produto (nome,idade_minima,valor,categoria) values ("JavaScript","17 anos", 79.99,1);

-- consulta de valor maior que 50 reais
select * from tb_produto where valor > 50

-- consulta de valor entre 3 e 60 reais
select * from tb_produto where valor between 3 and 60

-- consulta de produto que se inicia com a letra J
select * from tb_produto where nome like "J%"

-- consulta de tabela inner join
select tb_produto.nome, tb_produto.idade_minima, tb_produto.valor, tb_produto.categoria, tb_categoria.curso, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_produto.categoria = tb_categoria.id

-- consulta de tabela inner join especifica
select tb_produto.nome, tb_produto.idade_minima, tb_produto.valor, tb_produto.categoria, tb_categoria.curso, tb_categoria.descricao
from tb_produto inner join tb_categoria on tb_produto.categoria = tb_categoria.id where curso like "%Pr%"
