use zoo

-- ejercicio 1

CREATE table ParaiZoo (
animal VARCHAR(100),
nombre VARCHAR(100),
sexo VARCHAR(10),
fecha_nacimiento DATE,
especie VARCHAR(100),
fecha_incorporacion DATE,
peso_comida DOUBLE,
jaula INTEGER,
peso_inicial DOUBLE
);

SELECT * FROM ParaiZoo

-- ejercicio 2

insert into ParaiZoo(fecha_incorporacion, fecha_nacimiento, peso_comida, peso_inicial, nombre,
animal, sexo, especie, jaula) 
values ("2019-09-13", "2019-09-20", 0.25, 1.5, "Parches", "conejo", "Macho", "hervíboro", 24)

SELECT * FROM ParaiZoo

-- ejercicio 3

insert into ParaiZoo(animal, nombre, fecha_incorporacion, fecha_nacimiento, especie, sexo, 
jaula, peso_comida, peso_inicial) values
("caballo", "Spirit", "2019-10-02", "2009-08-07", "hervíboro", "macho", 15,3,230), 
("pavo", "Perla", "2019-10-02", "2018-09-21", "hervíboro", "hembra", 23, 0.5, 42)

SELECT * FROM ParaiZoo

-- ejercicio 4

insert into ParaiZoo(animal, nombre, fecha_incorporacion, especie, sexo, 
jaula, peso_comida, peso_inicial) values
("tigre", "Fresa", "2019-11-20", "carnivoro", "hembra", 31,4,42)

SELECT * FROM ParaiZoo

-- ejercicio 8

update ParaiZoo
SET fecha_nacimiento="2016-09-20"
WHERE nombre="Fresa";

update ParaiZoo
SET fecha_nacimiento="2012-11-20"
WHERE nombre="Nilo";

-- ejercicio 9

update ParaiZoo
SET peso_comida=peso_comida*0.8
WHERE nombre="Nilo";

-- ejercicio 10

update ParaiZoo
SET jaula=29
WHERE nombre="Paqui";

-- ejercicio 11

insert into ParaiZoo(animal, nombre, fecha_incorporacion, especie, sexo, 
jaula, peso_comida, peso_inicial) values
("buho", "Nitro", "2020-02-01", "carnivoro", "macho", 21, 0.15, 0.32),
("buho", "Diva", "2020-02-01", "carnivoro", "hembra", 21, 0.15, 0.34);

alter table ParaiZoo
add cautiverio VARCHAR(20);

update ParaiZoo
SET cautiverio="Cautiverio"
WHERE nombre="Nitro";

update ParaiZoo
SET cautiverio="Cautiverio"
WHERE nombre="Diva";

update ParaiZoo
SET cautiverio="Cautiverio"
WHERE nombre="Cesar";

update ParaiZoo
SET cautiverio="Cautiverio"
WHERE nombre="Paqui";


-- ejercicio 13

alter table ParaiZoo 
ADD peligro VARCHAR(2);

update ParaiZoo
SET peligro="si"
WHERE nombre="Fresa";

update ParaiZoo
SET peligro="si"
WHERE nombre="Nilo";

-- ejercicio 14

alter table ParaiZoo
ADD fecha_salida DATE;

update ParaiZoo
SET fecha_salida="2020-04-14"
WHERE nombre="Paqui";


