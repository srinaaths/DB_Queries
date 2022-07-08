-- EXPLAIN ANALYZE select * from movie WHERE id BETWEEN 50 AND 500;

-- SELECT actor.name, movie_actor.role from actor
-- JOIN movie_actor
-- ON (actor.id = movie_actor.actor_id)
-- JOIN movie
-- ON (movie_actor.movie_id = movie.id)
-- WHERE movie.name = 'The Forgotten Space'

SELECT actor.name from actor
JOIN movie_actor
on (movie_actor.actor_id = actor.id)
WHERE movie_actor.movie_id IN (
    SELECT movie_actor.movie_id FROM movie_actor
    WHERE movie_actor.actor_id = (
        SELECT id from actor
        WHERE name = 'Daion'
    )
)