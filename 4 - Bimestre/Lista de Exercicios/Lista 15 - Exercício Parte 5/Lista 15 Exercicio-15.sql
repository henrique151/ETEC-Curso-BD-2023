create database exercicio_5; 
use exercicio_5;

CREATE TABLE Paciente ( 
    Num_Paciente int identity,
    Nome varchar(100) NOT NULL,
    Data_Nasc date NOT NULL,
    Sexo varchar(14) NOT NULL,
    Convenio varchar(40) NOT NULL, 
    Est_Civil varchar(20) NOT NULL, 
    RG varchar(40) NOT NULL,
    Telefone varchar(20) NOT NULL, 
    Endereco varchar(100) NOT NULL,
     primary key (Num_Paciente)
);

CREATE TABLE Especializacao (
    Cod_Especializacao int identity, 
    Descricao varchar(100) NOT NULL, 
    primary key (Cod_Especializacao)
);


CREATE TABLE Medico (
    Cod_Medico int identity,
    Cod_Especializacao int,
    Nome_Med varchar(100) NOT NULL, 
    Sexo_Med varchar(14) NOT NULL,
    Telefone_Med varchar(20) NOT NULL,
    Data_Nasc_Med date NOT NULL, 
    primary key (Cod_Medico),
    foreign key (Cod_Especializacao) references Especializacao,
);

CREATE TABLE Prescricao_medica ( 
    Cod_Diagnostico int identity, 
    Diagnostico varchar(100) NOT NULL,
    primary key (Cod_Diagnostico)
);

CREATE TABLE Consulta (
    Num_Consulta int identity, 
    Num_Paciente int,
    Cod_Medico int,
    Cod_Diagnostico int,
    Data_Horario datetime NOT NULL,
    foreign key (Num_Paciente) references Paciente,
    foreign key (Cod_Medico) references Medico,
    foreign key (Cod_Diagnostico) references Prescricao_medica, 
    primary key (Num_Consulta)
);


CREATE TABLE Exame (
    Num_Consulta int, Cod_Exame int identity,
    Nome_Exame varchar(100) NOT NULL,
    Data_Horario_Exame datetime NOT NULL,
    Resultado varchar(100) NOT NULL,
    foreign key (Num_Consulta) references Consulta,
     primary key (Cod_Exame)
);
