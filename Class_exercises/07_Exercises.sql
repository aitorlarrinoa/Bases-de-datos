use moviebig

-- ejercicio 1

select max(budget)
from moviebig;

select movie_id, title, release_date, budget, vote_average
from moviebig
where budget = max(budget)

-- ejercicio 2

select count(title), avg(budget), avg(revenue), sum(revenue)-sum(budget) as BeneficiosTotales
from moviebig;

-- ejercicio 3

use earthqueake

select count(id), max(impactmagnitude), min(impactmagnitude), max(timefull), min(impactsignificance)
from earthquake; 

-- ejercicio 4

use airplanecrashes

select count(DateCrash), max(fatalities), date_format(min(DateCrash), "%d/%m/%Y"), date_format(max(DateCrash), "%d/%m/%Y")
from crash;

-- ejercicio 5

use airports

select country, count(name)
from osmairport
group by country
order by country ASC; 

-- ejercicio 6

use earthquake

select locationname, count(locationname), max(impactmagnitude)
from earthqueake
group by locationname
order by locationname ASC; 

-- ejercicio 7

select timemonth, count(*), max(impactmagnitude)
from earthquake
where upper(locationname) like "%CALIFORNIA%"
group by timemonth
order by timemonth ASC; 

-- ejercicio 8

use moviebig

select round(vote_average), count(title), revenue, budget
from moviebig
group by round(vote_average, 0)
order by asc


