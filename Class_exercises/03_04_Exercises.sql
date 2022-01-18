use moviebig

-- ejercicio 1

select title, budget, revenue 
FROM moviebig
WHERE budget >= revenue
AND movie_status="Released";

-- ejercicio 2

SELECT title, release_date 
FROM moviebig
WHERE UPPER(title) LIKE "%TERMINATOR%";

-- ejercicio 3

select title, runtime, vote_average
from moviebig
where runtime>120;

-- ejercicio 4

select title, movie_status, budget 
from moviebig
where movie_status <> "Released";

-- ejercicio 5

select title, vote_average, overview
from moviebig
where vote_average > 7
AND UPPER(overview) LIKE "%GOD%";

-- ejercicio 6

select title, vote_count, vote_average, release_date 
from moviebig
where vote_count > 1000
and vote_average <= 5;

-- ejercicio 7

select title, popularity, release_date, vote_average 
from moviebig
where popularity > 100
and UPPER(overview) LIKE "%ALIEN%";

-- ejercicio 8

select title, vote_average, realease_date
from moviebig
where release_date < "1980-01-01";

-- ejercicio 9

select title, LENGTH(tagline), popularity, tagline
FROM moviebig
WHERE LENGTH(tagline)>100;

-- ejercicio 10

select title, release_date, runtime, vote_average
from moviebig
where runtime <= 60
and runtime > 0;

-- ejercicio 11

select title, release_date, runtime, homepage, vote_average
from moviebig
where SUBSTR(homepage, 8, 17) = "movies.disney.com";

-- ejercicio 12

use airplanecrashes

select datecrash, location, route, operator
from crash
where upper(operator) like "%LUFTHANSA%"
and upper(route) like "%BERLIN-%";

-- ejercicio 13

select DateCrash, Location, route, aboard, operator
where upper(operator) like "%AIR FRANCE%"
and date_add(SYSDATE(), interval "-20" YEAR) < realdate;

-- ejercicio 14

select datecrash, location, route, operator, aboard, fatalities
from crash 
where upper(route) like "%BARCELONA -%";

-- ejercicio 15

select datecrash, location, route, operator, aboard, fatalities
from crash 
where fatalities < aboard;

-- ejercicio 16

select datecrash, Time, Location, ground, route 
from crash
where ground >=1;

-- ejercicio 17

select datecrash, Time, operator, location, ground, route, fatalitites
from crash 
where fatalities < ground
and upper(operator) like "%AMERICAN AIRLINES%";

-- ejercicio 22

select datecrash, location, concat("operador", operator, ".Personas a bordo", aboard, ".Muertes", fatalities) Resumen
from crash


