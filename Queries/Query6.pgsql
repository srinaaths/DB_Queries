-- SELECT DISTINCT director.name, avg(rating.rating) FROM director
-- JOIN movie
-- ON (director.id = movie.director_id)
-- JOIN rating
-- ON (movie.id = rating.movie_id)
-- GROUP BY movie_id, director.name
-- HAVING AVG(rating.rating) < 2

SELECT director.name from director
JOIN movie
ON (director.id = movie.director_id)
JOIN rating
ON (rating.movie_id = movie.id)
GROUP BY director.name
HAVING AVG(rating.rating) > 3