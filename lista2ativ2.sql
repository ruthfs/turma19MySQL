-- criando o banco de dados da pizzaria
create database db_pizzaria_legal

-- criando a tabela de categoria
use db_pizzaria_legal;

create table tb_categoria (
id int auto_increment,
Tipo varchar (40) not null,
Descricao varchar (255) not null,
primary key (id)
)

-- preenchendo a tabela de categoria
insert into tb_categoria (Tipo,Descricao) values ("Pizza Salgada", "Todas as pizzas salgadas que contém carnes");
insert into tb_categoria (Tipo,Descricao) values ("Pizza Salgada Vegana","Pizzas que não contém nenhum derivado de animal");
insert into tb_categoria (Tipo,Descricao) values ("Pizza Doce", "Pizzas doces com derivados de animais");
insert into tb_categoria (Tipo,Descricao) values ("Pizza Doce Vegana", "Pizzas doces que não contém derivado animal")

-- criando a tabela de pizza
create table tb_pizza (
id int auto_increment not null,
Nome varchar (20) not null,
Quantidade int (2) not null,
Preco decimal (5,2) not null,
categoria int not null,
primary key (id),
foreign key (categoria) references tb_categoria(id)
)

-- preenchendo a tabela de pizza
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("4 Queijos", 10, 39.99,2);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Brigadeiro", 5, 45.99,3);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Caramelo", 15, 39.99,4);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Frango", 10, 49.99,1);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Calabresa", 10, 59.99,1);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Portuguesa", 10, 59.99,2);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Milho", 10, 39.99,2);
insert into tb_pizza (Nome,Quantidade,Preco,categoria) values ("Marguerita", 10, 45.99,1);

-- consultar pizzas com o valor acima de 45
select * from tb_pizza where Preco >= 45

-- consultar pizzas com o valor entre 29 e 60
select * from tb_pizza where Preco between 29 and 60

-- consultar pizzas que comecem com C
select * from tb_pizza where Nome like "C%"

-- consulta entre tabelas
select tb_pizza.Nome, tb_pizza.Quantidade, tb_pizza.Preco, tb_pizza.categoria, tb_categoria.Tipo, tb_categoria.Descricao 
from tb_pizza inner join  tb_categoria on tb_pizza.categoria = tb_categoria.id

-- consulta especifica entre tabelas
select tb_pizza.Nome, tb_pizza.Quantidade, tb_pizza.Preco, tb_pizza.categoria, tb_categoria.Tipo, tb_categoria.Descricao 
from tb_pizza inner join  tb_categoria on tb_pizza.categoria = tb_categoria.id where Tipo = "Pizza Salgada Vegana"