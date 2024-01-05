-- !!!!! Iniciando o primeiro exercicio 1 !!!!!!
-- Comando para crair banco de dados.

create database ExercBD01 -- Bancos de dados 1.

use ExercBD01
-- Criando tabela
create table pet -- Exemplo 1
(
	NumRegistro int, -- criando campo para a inserção do resgistro
	Nome varchar(80), -- criação do campo Nome
	Especie varchar(25), -- criação do campo Especie
	Raca varchar (30), -- criação do campo Raça
	Cor varchar (40), -- criação do campo Cor
	Nascimento date, -- Criação do campo Nascimento
	Sexo varchar(9) -- Criação do campo Sexo
);

-- !!!!! Iniciando o segundo exercicio 2 !!!!!!!

create database ExercBD02 -- Bancos de dados 2.

use ExercBD02

create table Departamento -- Exercicio 2
(
	CodFunc int, -- Criando campo CodFunc
	NomeDepto varchar(50) -- Criando campo NomeDepto
);

create table Funcionario -- Exemplo 2 Criando tabela funcionario
(
   CodFunc int, -- Criando campo codfun
   NomeFunc varchar(50), -- Craindo campo nomefunc
   CodDepto int, -- Criando campo coddepto
   Ramal int NULL, -- Criando campo ramal
   Salario float, 
   DataAdmissao datetime, -- Criando campo dataadmissao
   DataCadastro datetime, -- Criando campo datacadastro
   Sexo char(1)
);

use ExercBD02


