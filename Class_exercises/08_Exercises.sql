use craftbeer

select * from brewery

select * from beer

-- ejercicio 1

select bw.city, bw.name, b.name 
from beer b 
inner join brewery bw on (bw.id=b.brewery_id)
where bw.city="San Diego";

-- ejercicio 2

select bw.city, bw.name, avg(b.ibu)
from beer b 
inner join brewery bw on (bw.id=b.brewery_id)
group by bw.city, bw.name
having round(avg(b.ibu),2) < 50;

-- ejercicio 3

select bw.city, count(b.id), avg(b.abv)
from beer b 
inner join brewery bw on (bw.id=b.brewery_id)
group by bw.city
having round(avg(b.abv),2) > 0.05;

-- ejercicio 4

select bw.state, count(b.id)
from beer b 
inner join brewery bw on (bw.id=b.brewery_id)
group by bw.state;

-- ejercicio 5

use moviesmall

select mg.genre, ms.name, ms.rank, ms.year
FROM moviesmall ms
inner join movie_genre mg on (ms.id = mg.movie_id)
where mg.genre="Thriller"

-- ejercicio 6

select ms.name, ac.first_name, ac.last_name, rl.role
from moviesmall ms 
inner join role rl on (ms.id=rl.movie_id)
inner join actor ac on (rl.actor_id = ac.id)
where ms.name="Star Wars";



