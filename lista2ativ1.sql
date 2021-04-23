--criando a database
create database db_generation_game_online

-- criando tabela de classes
use db_generation_game_online;

create table tb_classe (
id int auto_increment,
localizacao varchar (20) not null,
descricao varchar (100),
primary key (id) 
);

-- populando a tabela classe
insert into tb_classe (localizacao, descricao) values ("Willow Creek", "Personagem orginal da região basem familiar"); 
insert into tb_classe (localizacao, descricao) values ("Oasis Spring", "Personagem orginal da região desértica"); 
insert into tb_classe (localizacao, descricao) values ("Evergreen Harbor","Personagem orginal da região Eco Lifestyle"); 
insert into tb_classe (localizacao, descricao) values ("San Myshuno", "Personagem orginal da região metropolitana"); 
insert into tb_classe (localizacao, descricao) values ("Del Sol Valey", "Personagem orginal da região de celebridades"); 

-- criando a tabela personagens
use db_generation_game_online;

create table tb_personagem(
id int auto_increment,
nome varchar(20) not null,
ataque int (4) not null,
defesa int (4) not null,
classe int (2) not null,
primary key (id),
foreign key (classe) references tb_classe(id)
);

-- populando a tabela personagens
insert into tb_personagem (nome,ataque,defesa,classe) values ("Laura Caixão",1200,3000,1);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Don Lotário", 2600,900,2);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Caique Verdevalle", 5000,830,3);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Bob Pancakes", 1000,3800,1);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Claudia Menescal", 8600,1400,5);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Bela Jang", 980,2000,4);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Familia Landgrab", 9000,8500,2);
insert into tb_personagem (nome,ataque,defesa,classe) values ("Reginaldo Falcão", 6300,500,5);

-- consulta de personagem com ataque maior que 2000
select nome, ataque from tb_personagem where ataque >= 2000

-- consulta de personagem com defesa entre 1000 e 2000
select nome, defesa from tb_personagem where defesa between 1000 and 2000

-- consulta de personagem que começa com a letra C
select * from tb_personagem where nome LIKE "C%"

-- consulta entre tabelas inner join
select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.classe, tb_classe.localizacao, tb_classe.descricao from tb_personagem 
inner join tb_classe on tb_personagem.classe = tb_classe.id

-- consulta inner join especifica
select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.classe, tb_classe.localizacao, tb_classe.descricao 
from tb_personagem inner join tb_classe on tb_personagem.classe = tb_classe.id where localizacao = "Oasis Spring"