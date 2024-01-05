create database ExercicioFinal;
use ExercicioFinal;

CREATE TABLE Classe (
    Cod_Classe INT identity,
    Nome_Classe VARCHAR(100),
    Descricao_Classe VARCHAR(100),
    primary key (Cod_Classe)
);
CREATE TABLE Ala (
    Cod_Ala INT identity,
    Nome_Ala VARCHAR(100),
    primary key (Cod_Ala)
);
CREATE TABLE Container (
    Cod_Container INT identity,
    Tipo_Container VARCHAR(100),
    Localizacao_Container VARCHAR(100),
    Cod_Ala INT,
    FOREIGN KEY (Cod_Ala) REFERENCES Ala,
    primary key (Cod_Container)
);
CREATE TABLE Animal (
    Cod_Animal INT identity,
    Nome_Animal VARCHAR(100),
    Especie_Animal VARCHAR(100),
    Cor_Animal VARCHAR(30),
    Altura_Animal Float,
    Cod_Container INT,
    Cod_Classe INT,
    primary key (Cod_Animal),
    FOREIGN KEY (Cod_Container) REFERENCES Container,
    FOREIGN KEY (Cod_Classe) REFERENCES Classe,
);
CREATE TABLE Cargo (
    ID_Cargo INT identity,
    Nome_Cargo VARCHAR(100),
    primary key (ID_Cargo)
);
CREATE TABLE Funcionario (
    Cod_Funcionario INT identity,
    Nome_Funcionario VARCHAR(100),
    Data_Nasc DATE,
    CPF_Funcionario VARCHAR(14),
    RG_Funcionario VARCHAR(20),
    Endereco_Funcionario VARCHAR(100),
    Telefone_Funcionario VARCHAR(30),
    ID_Cargo INT,
    FOREIGN KEY (ID_Cargo) REFERENCES Cargo,
    primary key (Cod_Funcionario)
);
CREATE TABLE Veterinario (
    Cod_Veterinario INT identity,
    Cod_Funcionario INT,
    CRMV varchar (20),
    FOREIGN KEY (Cod_Funcionario) REFERENCES Funcionario,
    primary key (Cod_Veterinario)
);
CREATE TABLE AgendaVeterinario (
    Cod_Agenda_Veteri INT identity,
    Cod_Animal INT,
    Cod_Veterinario INT,
    DataHoraConsulta DATETIME,
    FOREIGN KEY (Cod_Animal) REFERENCES Animal,
    FOREIGN KEY (Cod_Veterinario) REFERENCES Veterinario,
    primary key (Cod_Agenda_Veteri)
);
CREATE TABLE FuncionarioLimpeza (
    Cod_Agenda_Limpeza INT identity,
    Cod_Container INT,
	Cod_Funcionario INT,
    Data_Hora_Limpeza DATETIME,
    FOREIGN KEY (Cod_Container) REFERENCES Container,
	FOREIGN KEY (Cod_Funcionario) REFERENCES Funcionario,
    primary key (Cod_Agenda_Limpeza)
);