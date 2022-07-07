SELECT DISTINCT director.name, avg(rating.rating) FROM director
JOIN movie
ON (director.id = movie.director_id)
JOIN rating
ON (movie.id = rating.movie_id)
GROUP BY movie_id, director.name
HAVING AVG(rating.rating) < 2