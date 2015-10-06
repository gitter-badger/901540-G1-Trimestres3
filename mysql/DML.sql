-- Sentencias DML

-- insert, update, delete, select

CREATE SCHEMA EJEMPLO3;

CREATE TABLE EJEMPLO3.ANIMAL(
ID_ANIMAL INT NOT NULL AUTO_INCREMENT,
NOMBRE_ANIMAL VARCHAR(40),
EDAD INT,
FECHA_NACIMIENTO DATE,
TIPO_ANIMAL ENUM ('PERRO', 'GATO'),
PRIMARY KEY(ID_ANIMAL)
);

-- CUANDO QUIERO LLENAR TODOS LOS CAMPOS

INSERT INTO EJEMPLO3.ANIMAL VALUES (2, 'PLILI2', 20, '2011-11-11', 'GATO');

-- CUANDO QUIERO INSERTAR DATOS ESPECIFICOS

INSERT INTO EJEMPLO3.ANIMAL (ID_ANIMAL,NOMBRE_ANIMAL, TIPO_ANIMAL) VALUES (1,'PILI','PERRO');
INSERT INTO EJEMPLO3.ANIMAL (NOMBRE_ANIMAL, TIPO_ANIMAL) VALUES ('PILI','PERRO');

-- ALTER PARA METER UN CAMPO LONBLOG PARA UNA IMAGEN

ALTER TABLE EJEMPLO3.ANIMAL ADD COLUMN FOTO longblob;

INSERT INTO EJEMPLO3.ANIMAL (NOMBRE_ANIMAL, TIPO_ANIMAL, FOTO) 
VALUES ('PILI','PERRO', load_file('C:/imagen/maxresdefault.jpg'));






