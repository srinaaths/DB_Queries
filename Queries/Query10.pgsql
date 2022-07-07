-- actor all movies list ordered by Date

SELECT movie.name, movie_actor.role from movie
JOIN movie_actor
ON (movie.id = movie_actor.movie_id)
WHERE movie_actor.actor_id = (
    -- SELECT movie_actor.actor_id FROM movie_actor
    -- JOIN actor
    -- on (actor.id = movie_actor.movie_id)
    -- where (actor.name = 'Tarek')
    SELECT id from actor
    where name = 'Tarek'

)