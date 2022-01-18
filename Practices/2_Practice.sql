drop database viajes_espaciales

create database viajes_espaciales

use viajes_espaciales



create table astronautas(
idastronauta int,
nombre varchar(50),
paisnacimiento varchar(20),
constraint pk_astronauta primary key(idastronauta)
);

create table estrellas(
id int,
nombre varchar(20),
diametro double,
constraint pk_origen primary key(id)
);

select * from estrellas

create table vuelos (
idvuelo int,
nombremision varchar(100),
fechainicio date,
idlugardestino int,
idlugarorigen int,
constraint pk_vuelo primary key(idvuelo),
constraint fk_origen foreign key (idlugarorigen) references estrellas(id),
constraint fk_destino foreign key (idlugardestino) references estrellas(id)
);


create table equipo (
idequipo int,
idvuelo int,
idastronauta int,
constraint pk_equipo primary key (idastronauta),
constraint fk_vuelo foreign key (idvuelo) references vuelos(idvuelo),
constraint fk_astronauta foreign key (idastronauta) references astronautas(idastronauta)
);




insert into astronautas values (1, 'Neil Amstrong', 'EEUU');

insert into astronautas values (2, 'Buzz Aldrin', 'EEUU');

insert into astronautas values (3, 'Michael Collins', 'Italia');

insert into estrellas values (1, 'Tierra', 12742);

insert into estrellas values (2, 'Luna', 3474.8);

insert into vuelos values (1, 'Apolo 11', '1969-07-16', 2, 1);

insert into equipo values (1, 1, 1);

insert into equipo values (2, 1, 2);

insert into equipo values (3, 1, 3);



-- consulta para mostrar nombres, origen, destino, fechalanzamiento

select ast.nombre, es2.nombre nombredestino, es1.nombre nombreorigen, vu.fechainicio fechalanzamiento from vuelos vu 
inner join estrellas es1 on (vu.idlugarorigen = es1.id)
inner join estrellas es2 on (vu.idlugardestino = es2.id)
inner join equipo e on (vu.idvuelo = e.idvuelo)
inner join astronautas ast on (e.idastronauta = ast.idastronauta);


