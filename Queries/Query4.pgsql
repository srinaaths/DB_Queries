-- movie - entire cast

SELECT actor.name, movie_actor.role from actor
join movie_actor
on(actor.id = movie_actor.actor_id)
WHERE movie_actor.actor_id in (
    SELECT actor_id from movie_actor
    join movie
    on (movie.id = movie_actor.movie_id)
    where movie.name = 'The Forgotten Space'
)