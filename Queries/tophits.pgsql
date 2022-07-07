SELECT movie.name, movie.id, avg(rating.rating) from movie
JOIN rating
ON (movie.id = rating.movie_id)
WHERE (movie.release_year BETWEEN 2000 AND 2020)
GROUP BY movie.id
HAVING AVG(rating.rating) > 9 
ORDER BY avg(rating.rating);