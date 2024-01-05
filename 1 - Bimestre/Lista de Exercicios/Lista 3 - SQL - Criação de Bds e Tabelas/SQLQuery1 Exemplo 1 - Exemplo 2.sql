-- !!!!! Iniciando o primeiro exercicio 1 !!!!!!
-- Comando para crair banco de dados.

create database ExercBD01 -- Bancos de dados 1.

use ExercBD01
-- Criando tabela
create table pet -- Exemplo 1
(
	NumRegistro int, -- criando campo para a inser��o do resgistro
	Nome varchar(80), -- cria��o do campo Nome
	Especie varchar(25), -- cria��o do campo Especie
	Raca varchar (30), -- cria��o do campo Ra�a
	Cor varchar (40), -- cria��o do campo Cor
	Nascimento date, -- Cria��o do campo Nascimento
	Sexo varchar(9) -- Cria��o do campo Sexo
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


