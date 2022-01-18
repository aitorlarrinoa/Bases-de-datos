use moviebig

-- ejercicio 1

select title, budget, revenue, release_date, vote_average 
from moviebig
where budget=(select max(budget) from moviebig);

-- ejercicio 2

use craftbeer

select b.name, b.abv, bw.name
from beer b 
inner join brewery bw on (b.brewery_id=bw.id)
where abv=(select max(abv) from beer);

-- ejercicio 3

use world

select continent, name, lifexpectancy
from country
where (continent, lifexpectancy) in (
select continent, min(lifexpectancy)
FROM country
group BY continent);


