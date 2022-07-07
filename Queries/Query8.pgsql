-- hit movies of an actor

SELECT name, avg(rating.rating) from movie
JOIN movie_actor
on (movie_actor.movie_id = movie.id)
JOIN rating
on (rating.movie_id = movie.id)
WHERE movie_actor.actor_id = (
    SELECT id from actor
    WHERE name = 'Sol'
)
GROUP BY movie.name
HAVING AVG(rating.rating) > 7
ORDER by avg(rating.rating);