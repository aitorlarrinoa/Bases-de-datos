-- ejercicio 1

use world

create view vs_republicasnuevas as 
select code, name, IndepYear, GovernmentForm from country where IndepYear > 1950;

select * from vs_republicasnuevas 

-- ejercicio 2

use world

create view v2_pais_idioma as
select c.name, c.Population, cl.`Language`, c.Population*(Percentage/100) hablado from country_language cl inner join country c on (cl.CountryCode = c.code);


select * from v2_pais_idioma
