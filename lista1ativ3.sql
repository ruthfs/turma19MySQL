-- criar banco de dados de uma escola
create database db_escola

-- criando a tabela de alunos

use db_escola;
create table alunos(
matricula int (5) auto_increment not null,
nome varchar (20) not null,
idade int (5) not null,
classe char (2) not null,
nota decimal (3,2) not null,
primary key (matricula)
)

-- inserindo os dados dentro da tabela
insert into alunos (nome, idade, classe, nota) values ("Marcos", 15, '1E', 7.5);
insert into alunos (nome, idade, classe, nota) values ("João", 17, '3A', 9);
insert into alunos (nome, idade, classe, nota) values ("Clara", 16, '2B', 9.9);
insert into alunos (nome, idade, classe, nota) values ("Aline", 17, '3B', 8.5);
insert into alunos (nome, idade, classe, nota) values ("Carlos", 16, '2D', 4.5);
insert into alunos (nome, idade, classe, nota) values ("Saulo", 17, '2A', 7);
insert into alunos (nome, idade, classe, nota) values ("Melissa", 15, '1C', 5);
insert into alunos (nome, idade, classe, nota) values ("Leonardo", 18, '3C', 8);

-- alunos com notas menores  a 7
select * from alunos where nota < 7

-- alunos com notas maiores a 7
select * from alunos where nota >= 7

-- atualização de dado
update alunos set nota = 9 where matricula = 8; 