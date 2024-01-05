create database ExercBD03

Use ExercBD03
-- !!!!!!!! Iniciando o Exercicio 3 A !!!!!!!
create table Produtos 
(
	IDNU int primary key identity, 
	NomePro varchar(30) not null,
	PrePro float,
	Cor varchar(10),
	Marca varchar (20) not null,
	Locali varchar (10) not null,
	Embal varchar(10),
	Quanti int not null,
);


-- !!!!!!!! Iniciando o Exercicio 3 B !!!!!!!

create table Funcionarios 
(
	IDNF int primary key identity, 
	Nome varchar(50) not null,
	DataNa date not null,
	RG varchar(20) not null,
	CPF varchar (20) not null,
	Telef varchar (18),
	Email varchar(60) not null,
	Sexo varchar(9) not null,
	Turno varchar(9) not null,
	Endere Varchar(50) not null,
	Atuacao Varchar(20) not null
);

-- !!!!!!!! Iniciando o Exercicio 3 C !!!!!!!

create table Fornecedores 
(
	IDFRN int primary key identity, 
	NomeCT varchar (30) not null,
	Estado varchar (25) not null,
	Cidade varchar (30) not null,
	Bairro varchar (30) not null,
	Endere varchar (50) not null,
	CEP varchar(15) not null,
	Telef varchar(10),
	Email varchar(50) not null,
);

-- !!!!!!!! Iniciando o Exercicio 3 D !!!!!!!

create table Departamentos 
(
	IDDP int primary key identity, 
	NomeDP varchar(30) not null,
	NumFU int not null,
	FunDP varchar(30) not null,
	MatCF varchar(10) not null,
	Locali varchar(50) not null,
	Turno varchar(9) not null,
	Email varchar(50) not null,
	Telef varchar(15)
);

-- !!!!!!!! Iniciando o Extra 1  !!!!!!!

create table ExtraProfessor 

(
    IDMAT int primary key identity, 
	Nome varchar(30) not null,
	NomeIN varchar(30) not null,
	DataNa date not null,
	Discip varchar(30) not null,
	Telef varchar(20),
	Email varchar(60) not null,
	RG varchar(25) not null,
	CPF varchar(25) not null,
	Endere varchar(50) not null,
	Turno varchar(9) not null,
	Sexo char(1) not null

);

-- !!!!!!!! Iniciando o Extra 2  !!!!!!!

create table ExtraPecasdeComputador 

(
  IDPE int primary key identity, 
  PlaMae varchar(30) not null,
  Ram varchar(15) not null,
  CPU varchar(15) not null,
  FonAli varchar(15) not null,
  Aircooler varchar(15) not null,
  Gabiente varchar(15) not null,
  GPU varchar(20),
  HDD varchar(15) not null,
  SDD varchar(15) ,
  Sistema varchar(15)not null ,
)
