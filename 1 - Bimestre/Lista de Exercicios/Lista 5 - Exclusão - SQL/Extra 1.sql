CREATE DATABASE Extra;

use Extra

CREATE TABLE Paises


(
NumCod int,
NomePais varchar (15) NOT NULL,
Destaque varchar(25) NULL,
Ranking varchar(20) NOT NULL,
PRIMARY KEY (NumCod)
 );

INSERT into Paises (NumCod, NomePais,Destaque, Ranking) 
VALUES (1,'Brasil','Natureza', '3');

INSERT into Paises (NumCod, NomePais,Destaque, Ranking) 
VALUES (2,'Argentina','Copa Do Mundo', '4');

INSERT into Paises (NumCod, NomePais,Destaque, Ranking) 
VALUES (3,'Estados Unidos','Rico', '1');

INSERT into Paises (NumCod, NomePais,Destaque, Ranking) 
VALUES (4,'Alemanha','Tecnologia', '2');

INSERT into Paises (NumCod, NomePais,Destaque, Ranking) 
VALUES (5,'Russia','Guerra', '6');

INSERT into Paises (NumCod, NomePais,Destaque, Ranking) 
VALUES (6,'Inglaterra','Rainha e Rei', '5');

select * from Paises;

delete from Paises where NomePais like '%a'
delete from Paises 



