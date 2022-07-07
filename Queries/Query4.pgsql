-- movie - entire cast

-- SELECT actor.name from actor
-- -- join movie_actor
-- -- on(actor.id = movie_actor.actor_id)
-- WHERE actor.id IN (
--     SELECT actor_id from movie_actor
--     join movie
--     on (movie.id = movie_actor.movie_id)
--     where movie.name = 'The Forgotten Space'
-- )

SELECT actor.name, movie_actor.role from actor
JOIN movie_actor
on (actor.id = movie_actor.actor_id)
WHERE movie_actor.movie_id = (
    SELECT id from movie
    WHERE name = 'The Forgotten Space'
)