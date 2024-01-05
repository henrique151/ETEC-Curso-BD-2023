create database ex_cinema; 
use ex_cinema;


CREATE TABLE Salas 
(
	ID_Salas int identity, 
	Capacidade varchar(50) NOT NULL,
	Localizacao varchar(100) NOT NULL,
	primary key (ID_Salas)
);


CREATE TABLE Filme (
	ID_Filme int identity,
	Titulo varchar(100) NOT NULL, 
	Genero varchar(20) NOT NULL,
	Duracao varchar(14) NOT NULL,
	primary key (ID_Filme)
);

CREATE TABLE Projeta 
(
	ID_Salas int, 
	ID_Filme int,
	Data_Horario datetime NOT NULL,
	foreign key (ID_Salas) references Salas, 
	foreign key (ID_Filme) references Filme
);
