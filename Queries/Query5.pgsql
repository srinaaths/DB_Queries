-- worst rated movie of all time

SELECT movie.name, AVG(rating.rating) from movie
JOIN rating
ON (movie.id = rating.movie_id)
GROUP BY movie.name
ORDER BY AVG(rating.rating)
LIMIT 1;