-- hit movies of an actor

SELECT name from movie
JOIN movie_actor
on (movie_actor.movie_id = movie.id)
JOIN rating
on (rating.movie_id = movie.id)
WHERE movie_actor.actor_id = (
    SELECT id from actor
    WHERE name = 'Oskar'
)
GROUP BY movie.name
HAVING AVG(rating.rating) > 7;