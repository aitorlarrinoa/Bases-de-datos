-- PRÁCTICA PARA ENTREGAR EL DOMINGO


-- EJERCICIO 3 (preguntas 02)
select * from ParaiZooHuesped

insert into ParaiZooHuesped (animal, nombre, fechaincorporacion, fechanacimiento, especie, sexo, jaula, comidakgdiario, pesoinicial) values('caballo', 'Spirit', '2019-10-02', '2009-08-07', 'Macho', 15, 3, 230);

insert into ParaiZooHuesped (animal, nombre, fechaincorporacion, fechanacimiento, especie, sexo, jaula, comidakgdiario, pesoinicial) values('pavo', 'Perla', '2019-10-02', '2018-09-21', 'Hembra', 23, 0.5, 42);

-- EJERCICIO 7 (preguntas 02)
select * from ParaiZooHuesped

insert into ParaiZooHuesped (animal, nombre, fechaincorporacion, fechanacimiento, ,especie, sexo, jaula, comidakgdiario, pesoinicial) values('jirafa', 'Paqui', '2019-12-22', '2018-02-15', 'Hembra', 26, 60, 520);

insert into ParaiZooHuesped (animal, nombre, fechaincorporacion, fechanacimiento, especie, sexo, jaula, comidakgdiario, pesoinicial) values('mono', 'Cesar', '2019-12-22', '2002-10-02', 'Macho', 27, 4, 120);

-- EJERCICIO 16 (preguntas 03/04)
use airplanecrashes

select * FROM crash

select DateCrash, `Time` , Location, Ground, Route from crash where Ground >= 1;

-- EJERCICIO 17 (preguntas 03/04)
use airplanecrashes

select * from crash 

select DateCrash, `Time` , Operator, Location, Ground, Route, Fatalities from crash where UPPER(Operator) like '%AMERICAN AIRLINES%' AND Ground >= Aboard;

-- EJERCICIO 18 (preguntas 03/04)

select DateCrash, Operator, Location, Route, aboard, fatalities from crash where realdate >= '2005-01-01' and upper(operator) like '%MILITARY -%';

-- EJERCICIO 5 (preguntas 05)
use earthquake

select * from earthquake 

select DISTINCT locationname from earthquake  where impactmagnitude > 7;

-- EJERCICIO 6 (preguntas 05)

select id, impactmagnitude, impactsignificance, locationfull, locationname, timefull from earthquake where timehour between 8 and 19 and UPPER(locationname) like '%PERU%';
