-- ejercicio 1

use moviebig

select * from moviebig 

create index idx_title on moviebig(title);

select * from moviebig where title = 'El orfanato'

-- ejercicio 2

use world

select * from country

create index idx_code_continent on country(Code, Continent);

select * from country 

-- ejercicio 3 (no se puede pq no tenemos la tabla movie crew)

use moviebig

-- ejercicio 4 (me falta)

use world

-- ejrcicio 5


create table llamada (
id int,
destino int,
duracion int
)

create table historicollamada(
id int,
destino int,
duracion int,
costo int,
fechallamada int
)

select * from llamada

select * from historicollamada

create trigger trig_historicollamada after insert on llamada for each row 
BEGIN 
	insert into historicollamada values 
	(new.id, 
	new.destino, 
	new.duracion, 
	new.duracion*0.05,
	sysdate());
END;

-- sysdate() es para que nos coja la fecha del sistema !