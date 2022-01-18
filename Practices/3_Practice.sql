-- práctica 3

-- ejercicio 1

use airports

select * from osmairport o 


create table osmairport_mx_cn as
select Country, Name, IATAcode, ICAOcode, Operator from osmairport where Operator is not null and (upper(country) like '%MEXICO%' or upper(country) like '%CANADA%');

select * from osmairport_mx_cn

-- ejercicio 2

use videogames

select * from videogame

select count(*), sum(Metrics_Sales), Metadata_Publishers from videogame where upper(Metadata_Genres) like '%Strategy%' group by Metadata_Publishers;

-- ejercicio 3

use moviesmall

select * from actor

select * from role

select  count(*), act.id, act.first_name, act.last_name from actor act
inner join `role` r on (act.id = r.actor_id)
group by act.id, act.first_name, act.last_name
order by act.first_name, act.last_name;

-- ejercicio 4

create database banco

use banco

create table saldo (
id_cuenta int,
num_cuenta varchar(100),
saldo_cuenta int
)

insert into saldo values (1, "6370 0466 04 3693600089", 1000)

insert into saldo values (2, "7712 4326 10 1992210900", 560)

select * from saldo


create table movimiento (
id_movimiento int,
num_cuenta varchar(100),
concepto varchar (200),
importe double
)

create trigger movimiento_saldo after insert on movimiento
for each ROW 
BEGIN 
	update saldo 
	set saldo_cuenta = saldo_cuenta + new.importe
	WHERE 
	num_cuenta = new.num_cuenta;
END;

insert movimiento values (1, "6370 0466 04 3693600089", "ingreso", 100)

insert movimiento values (2, "7712 4326 10 1992210900", "gasto", -50)

select * from movimiento


-- ejercicio 5

create database coches

use coches

CREATE TABLE venta (
id INTEGER AUTO_INCREMENT, 
modelo VARCHAR(100) NOT NULL, 
cliente VARCHAR(100), 
fechaventa DATE CONSTRAINT antes2010 CHECK (fechaventa >= '2010-01-01'), 
matricula VARCHAR(10) UNIQUE, 
marca VARCHAR(20) DEFAULT 'Ford', 
fechafabricacion DATE, 
preciooriginal INTEGER, 
preciosegundamano DOUBLE GENERATED ALWAYS AS ( preciooriginal - preciooriginal*(YEAR(fechaventa) - YEAR(fechafabricacion))*(10/100)), 
CONSTRAINT pkventa PRIMARY KEY (id) 
);

insert into venta(modelo, fechaventa) values ('kuga', '2009-01-01');

insert into venta(modelo, fechaventa) values ('kuga', '2007-01-01');

