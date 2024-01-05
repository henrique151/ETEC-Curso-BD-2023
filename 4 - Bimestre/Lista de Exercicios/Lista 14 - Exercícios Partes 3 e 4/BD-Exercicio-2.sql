create database ex2_imobiliaria;
use ex2_imobiliaria;


CREATE TABLE Locatario (
	ID_Locatario int identity,
	Nome_Loc varchar(100) NOT NULL,
	Endereco_Loc varchar(100) NOT NULL,
	Telefone_Loc varchar(20) NOT NULL,
	Data_Horario_Loc datetime NOT NULL, 
	Valor_Alugel float NOT NULL,
	primary key (ID_Locatario)
);

CREATE TABLE Condominio 
(
	ID_Dominio int identity, 
	Nome_Dominio varchar(100) NOT NULL,
	Endereco_Dominio varchar(20) NOT NULL,
	Qtde_Dominio int NOT NULL,
	primary key (ID_Dominio)
);

CREATE TABLE Propriedade (
	ID_Prop int identity,
	ID_Locatario int,
	ID_Dominio int,
	Endereco_Prop varchar(100) NOT NULL,
	Descricao_Prop varchar(100) NOT NULL,
	NumQuarto_Prop int NOT NULL,
	Valor_Prop float NOT NULL,
	primary key (ID_Prop),
	foreign key (ID_Dominio) references Condominio, 
	foreign key (ID_Locatario) references Locatario
);

CREATE TABLE Proprietario 
(
	ID_Propriet int identity,
	Nome_Propriet varchar(100) NOT NULL,
	Telefone_Propriet varchar(20) NOT NULL,
	Email_Propriet varchar(100) NOT NULL,
	Nasc_Propriet date NOT NULL,
	primary key (ID_Propriet)
);
 

CREATE TABLE Propriedade_Proprietario 
(
	ID_Propriet int, 
	ID_Prop int,
	Escritura varchar(15) NOT NULL,
	foreign key (ID_Propriet) references Proprietario,
	foreign key (ID_Prop) references Propriedade
);


