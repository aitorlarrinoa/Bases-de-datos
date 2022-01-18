-- ejercicio 1

use moviebig

create index idx_movietitle on moviebig(title);

-- ejercicio 2

use world

create index idx_country on country(code, continent);

-- ejercicio 3

use moviebig

create index idx_moviecrew on movie_crew(person_id, job);