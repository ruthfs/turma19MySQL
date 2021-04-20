-- criação de database de recursos humanos
create database db_rh

-- criação da tabela de funcionarios

use db_rh;

Create table tb_employees(
matricula int (5) auto_increment,
nome varchar (15),
idade int (5),
cargo varchar (15),
salario decimal (6,2),
primary key (matricula)
)

-- adicionando os funcionarios 
INSERT INTO tb_employees (nome, idade, cargo, salario) VALUES ("Marcela", 28, "Dev Senior", 9900.00);
INSERT INTO tb_employees (nome, idade, cargo, salario) VALUES ("José", 31, "Gestor", 3500.00);
INSERT INTO tb_employees (nome, idade, cargo, salario) VALUES ("Lucas", 18, "Estagiário", 1000.00);
INSERT INTO tb_employees (nome, idade, cargo, salario) VALUES ("Cintia", 26, "Coordenadora", 1800.00);
INSERT INTO tb_employees (nome, idade, cargo, salario) VALUES ("Roberta", 45, "Analista", 6500.00);

-- ordenando por salario maior que 2000
select * from tb_employees where salario > 2000

-- ordenando por salario menor que 2000
select * from tb_employees where salario <= 2000

-- atualização de dado
update tb_employees set salario = 1900 where matricula = 4
