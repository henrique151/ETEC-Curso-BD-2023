CREATE DATABASE clinicaveterinaria;
use clinicaveterinaria;

CREATE TABLE Cliente 
(
	Cod_cliente int identity,
	Nome_cliente varchar(100) NOT NULL,
	Tel_cliente varchar(14) NOT NULL,
	Endereco_cliente varchar(200) NOT NULL,
	CPF_cliente varchar(14) NOT NULL,
	primary key (Cod_cliente)
);

CREATE TABLE Animais
(
	Cod_animal int identity,
	Cod_cliente int,
	Nome_animal varchar(100) NOT NULL,
	DataNasc_animal varchar(14) NOT NULL,
	Peso_animal float NOT NULL,
	Cor_animal varchar(100) NOT NULL,
	Sexo_animal varchar(10) NOT NULL,
	Cod_raca int,
	primary key (Cod_animal),
	foreign key (Cod_cliente) references Cliente,
	foreign key (Cod_raca) references Raca
);


CREATE TABLE Raca
(
	Cod_raca int identity,
	Raca varchar(50) NOT NULL,
	Cod_tipo int,
	primary key (Cod_raca),
	foreign key (Cod_tipo) references Tipo
);

CREATE TABLE Tipo
(
	Cod_tipo int identity,
	Descricao_tipo varchar(200) NOT NULL,
	primary key (Cod_tipo)
);

CREATE TABLE Consulta
(
	Cod_consulta int identity,
	DataHora_consulta varchar(14) NOT NULL,
	Cod_animal int,
	Cod_func int,
	Descricao_consulta varchar(200) NOT NULL,
	Receita varchar(200) NOT NULL,
	primary key (Cod_consulta),
	foreign key (Cod_animal) references Animais,
	foreign key (Cod_func) references Funcionario
);

CREATE TABLE Funcionario
(
	Cod_func int identity,
	Cod_cargo int,
	Nome_func varchar(200) NOT NULL,
	CPF_func varchar(14) NOT NULL,
	Turno_func varchar(30) NOT NULL,
	DataNasc_func varchar(14) NOT NULL,
	Sexo_func varchar(35) NOT NULL,
	Endereco_func varchar(200) NOT NULL,
	Tel_func varchar(14) NOT NULL,
	primary key (Cod_func),
	foreign key (Cod_cargo) references Cargo,
);


CREATE TABLE Cargo
(
	Cod_cargo int identity,
	Descricao_cargo varchar(200) NOT NULL,
	primary key (Cod_cargo)
);

Create Table Cadastro
(
	Usuario varchar(255) Not Null,
	Senha varchar(255) Not Null
);

