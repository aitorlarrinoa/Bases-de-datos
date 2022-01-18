use moviebig

-- ejercicio 1

select id, title, concat("Más detalles en:", ifnull(homepage, "www.google.com")) detalles
from moviebig;

-- ejercicio 2

use airplanecrashes

select DateCrash, Location, Operator, Route, ifnull(route, concat("X -", location, "- X")) nuevaruta
from crash;

-- ejercicio 3

use airports

select country, iatacode, icaocode, coalesce(nomeen, namefr, name) nombre
from osmairport
order by asc;

-- ejercicio 4

select name, country, geopoint, coalesce(country, geopoint, "Sin información") Ubicacion
from osmairport;

-- ejercicio 5

select name, operator, country,website, iatacode
from osmairport
where upper(country) like "%JAMAICA%" or upper(operator) like "%JAMAICA%";

-- ejercicio 6

select name, operator, country, phone, website 
from osmairport
where upper(country) like "%UNITED STATES%"
and (website is not null or phone is not null);

-- ejercicio 7

select operator, name, country, geopoint, website 
from osmairport
where country is NULL; 

-- ejercicio 8

create table osmairport_eeuu AS
select country, name, iatacode, icaocode, operator
from osmairport
where upper(country) like "%ESTADOS UNIDOS%"
and operator is not NULL; 

-- ejercicio 9

create table osmairport_mx_cn as
select country, name, iatacpde, icaocode, operator
from osmairport
where operator is not null 
and upper(country) in (MEXICO, CANADA);

-- ejercicio 10

insert into osmairport_mx_cn
select * 
from osmairport_eeuu
where operator <> "Department of Aviation";

-- ejercicio 11

alter table osmairport_mx_cn rename to osmairport_north_america;
drop table osmairport_eeuu;

