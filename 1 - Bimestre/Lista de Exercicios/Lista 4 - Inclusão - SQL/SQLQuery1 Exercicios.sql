create database Exerc01
use Exerc01

create table pet 
(
	NumRegistro int,
	Nome varchar(80), 
	Especie varchar(25),
	Raca varchar (30), 
	Cor varchar (40), 
	Nascimento date, 
	Sexo varchar(9) 
);

select * from pet
Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (1, 'Kaizer', 'Gato', 'Vira-lata', 'Preto', '08/03/2020','Masculino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (2, 'Rex', 'Cachorro', 'Vira-lata', 'Azul e Branco', '02/05/2021','Masculino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (3, 'Barbie', 'Gata', 'Yorkshire', 'Branco', '12/06/2022',' Feminino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (4, 'Elisa', 'Gata', 'Pinscher', 'Preta', '12/01/2019',' Feminino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (5, 'Chicken Little', 'Cachorro', 'Bulldog', 'Marrom', '14/03/2023','Masculino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (6, 'Bob', 'Cachorro', 'Spitz alemão', 'Laranja', '12/06/22','Masculino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (7, 'Mal', 'Cachorra', 'Shih-Tzu', 'Branco', '12/06/2005',' Feminino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (8, 'Theo', 'Papagaio', 'Papagaio Verdadeiro', 'Verde', '31/08/2022','Masculino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (9, 'Smurf', 'Cachorro', 'Chow-chow', 'Laranja', '30/03/2014','Masculino');

Insert Into pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo)
values (10, 'Pernalonga', 'Coelho', 'Holland Lop.', 'Branco', '01/01/2023','Masculino');

create database Exerc02
use Exerc02

create table Departamento
(
	IDNU int primary key identity, 
	NomeDP varchar(30) not null, 
	NumFu int  not null,
	FunDP varchar (40) not null, 
	MatCF varchar (10) not null , 
	Locali  varchar (40)  not null, 
	Turno varchar(10) not null, 
	Email varchar(50) not null 
);

select * from Departamento

Insert Into Departamento (NomeDP, NumFu, FunDP, MatCF, Locali, Turno, Email)
values ('Administração', '30', 'Administra o dinheiro da empresa', '98124-2122', 'Centro de São Paulo','Manhã', 'Administraempresa@gmail.com');

Insert Into Departamento ( NomeDP, NumFu, FunDP, MatCF, Locali, Turno, Email)
values ('Recursos Humanos', '15', 'Recurta pessoas para empresa', '92124-2112', 'Centro de São Paulo','Tarde', 'Recursosempresa@gmail.com');

Insert Into Departamento ( NomeDP, NumFu, FunDP, MatCF, Locali, Turno, Email)
values ('Desenvolvimento de Sistemas', '25', 'Desenvolvimento de software', '99424-1112', 'Centro de São Paulo','Manhã', 'Desenvolvesis@gmail.com');

Insert Into Departamento ( NomeDP, NumFu, FunDP, MatCF, Locali, Turno, Email)
values ('Logistica', '20', 'Controla o armazenamento', '91994-2499', 'Centro de São Paulo','Tarde', 'Logiticaempresa@gmail.com');

Insert Into Departamento ( NomeDP, NumFu, FunDP, MatCF, Locali, Turno, Email)
values ('Contabilidade', '10', 'O é os estudos dos patrimônios', '99924-1992', 'Centro de São Paulo','Noite', 'Contabilidadeempresa@gmail.com');

create table Funcionarios
(
	IDNF int primary key identity, 
	Nome varchar(40) not null, 
	DataNa date,
	RG varchar (40) not null, 
	CPF varchar (40) not null , 
	Telef  varchar (20), 
	Email varchar(50) not null, 
	Sexo varchar(10) not null, 
	Turno varchar(10) not null,
	Endere  varchar(50) not null,
	Atucao varchar(40) not null
);

select * from Funcionarios

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('João Pedro', '20/01/2000', '241.552.452-55', '881.255.242-24', '92142-2142', 'joaopedro@gmail.com', 'Masculino', 'Manhã','Centro de São Paulo', 'Administração');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Pedro', '21/05/1992', '551.552.452-55', '851.777.242-24', '97142-9921', 'pedrozão@gmail.com', 'Masculino', 'Manhã', 'Centro de São Paulo', 'Administração');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Sarach', '10/10/2001', '999.552.452-55', '111.255.242-24', '90992-2142', 'sarachsilva@gmail.com', 'Feminino', 'Tarde','Centro de São Paulo', 'Recursos Humanos');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Bia', '19/03/2002', '321.995.452-55', '214.721.242-24', '97212-9221', 'bialeesa@gmail.com', 'Feminino', 'Tarde', 'Centro de São Paulo', 'Recursos Humanos');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Maria', '15/02/1999', '124.552.662-55', '521.255.242-24', '92192-2142', 'mariasilva@gmail.com', 'Feminino', 'Manhã','Centro de São Paulo', 'Desenvolvimento de Sistemas');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Edurado', '31/01/1995', '666.995.452-55', '284.721.192-24', '91242-2121', 'eduradpedro@gmail.com', 'Masculino', 'Manhã', 'Centro de São Paulo', 'Desenvolvimento de Sistemas');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Fernada', '02/06/2000', '192.125.221-55', '124.721.192-24', '92152-9231', 'fernada@gmail.com', 'Feminino', 'Tarde', 'Centro de São Paulo', 'Logistica');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Mara', '21/04/1998', '341.995.452-55', '304.221.792-24', '91246-4221', 'marasilva@gmail.com', 'Feminino', 'Tarde', 'Centro de São Paulo', 'Logistica');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Isabelle', '14/08/1998', '452.425.221-55', '112.341.452-24', '91999-9231', 'fernada@gmail.com', 'Feminino', 'Noite', 'Centro de São Paulo', 'Contabilidade');

Insert Into Funcionarios(Nome, DataNa, RG, CPF ,Telef, Email, Sexo, Turno, Endere, Atucao)
values ('Udry', '30/12/1998', '163.555.882-55', '304.221.792-24', '91246-4221', 'udrylolsilva@gmail.com', 'Masculino', 'Noite', 'Centro de São Paulo', 'Contabilidade');

create database Extra1
use Extra1


create table petShop 
(
	NumRegistro int,
	NomeShop varchar(80) not null, 
	Estado varchar(80)not null,  
	Cidade varchar (30)not null, 
	Bairro varchar (40)not null, 
	Ender varchar(40)not null, 
	Telef varchar(9)not null, 
	DataMaracad datetime
);

select * from petShop 


-- Tudo foi inventado.
Insert Into  petShop (NumRegistro, NomeShop, Estado, Cidade, Bairro, Ender, Telef, DataMaracad)
values (1, 'AlimentoPet', 'São Paulo', 'São Paulo', 'Jardim Helana', 'Mogi das Cruzes, 1812 Burgo Paulista','9912-1242','28/03/23 16:30');

Insert Into  petShop (NumRegistro, NomeShop, Estado, Cidade, Bairro, Ender, Telef, DataMaracad)
values (2, 'Cachorrozio', 'São Paulo', 'São Paulo', ' Rasa', ' Pte. Rasa, 1021','9912-1242','28/03/23 18:30');

Insert Into  petShop (NumRegistro, NomeShop, Estado, Cidade, Bairro, Ender, Telef, DataMaracad)
values (3, 'Big Pet', 'São Paulo', 'São Paulo', 'Bartolomeu Soares', 'Bartolomeu Soares - Jardim Pte','9912-1242','28/03/23 12:00');

Insert Into  petShop (NumRegistro, NomeShop, Estado, Cidade, Bairro, Ender, Telef, DataMaracad)
values (4, 'Pet Shop Lobinha', 'São Paulo', 'São Paulo', 'Jardim Soraia', 'Ras','9912-1242','28/03/23 11:30');

Insert Into  petShop (NumRegistro, NomeShop, Estado, Cidade, Bairro, Ender, Telef, DataMaracad)
values (5, 'Pet Shop São Franciscot', 'São Paulo', 'São Paulo', 'Vila Sao Francismo', 'Antônio Olímpio, N°968','9912-1242','28/03/23 10:50');
