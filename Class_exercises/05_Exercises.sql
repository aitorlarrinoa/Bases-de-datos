use earthquakes

-- ejercicio 1

select id, impactsignificance, impactmagnitude, locationfull, locationname, timeyear
from earthquake
where upper(locationname)="CHILE" ORDER BY impactmagnitude desc;

-- ejercicio 2

select id, impactsignificance, impactmagnitude, locationdistance, locationname, locationfull
from earthquake
where upper(locationname)="CHINA" ORDER BY locationdistance desc;

-- ejercicio 3

select id, locationdepth, impactsignificance, locationname, locationfull
from earthquake
ORDER BY locationdepth asc;

-- ejercicio 4

select id, locationdepth, impactmagnitude, locationdistance, impactsignificance, locationname, locationfull
from earthquake
ORDER BY locationdepth asc, locationdistance asc;

-- ejercicio 5

select distinct locationname 
from earthqueake
where impactmagnitude > 7;

-- ejercicio 6

select id, impactmagnitude, impactsignificance, locationfull, locationname, timehour, timefull
from earthquake
where timehour between 8 and 19
and upper(locationname) LIKE "%PERU%";

-- ejercicio 7

select id, impactmagnitude, impactsignificance, locationfull, locationname, timehour, timefull
from earthquake
where timehour in (22, 23, 0, 1, 2, 3, 4, 5)
and upper(locationname) LIKE "%JAPAN%";

-- ejercicio 8

select id, impactmagnitude, impactsignificance, locationfull, locationname, timefull
from earthquake
where upper(locationname) LIKE "%JAPAN%"
and upper(locationfull) not in ("MIYAKO", "NAZE");



