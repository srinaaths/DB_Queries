-- SELECT DISTINCT director.name, avg(rating.rating) FROM director
-- JOIN movie
-- ON (director.id = movie.director_id)
-- JOIN rating
-- ON (movie.id = rating.movie_id)
-- GROUP BY movie_id, director.name
-- HAVING AVG(rating.rating) < 2

-- SELECT director.name, count(rating.rating) from director
-- JOIN movie
-- ON (director.id = movie.director_id)
-- JOIN rating
-- ON (rating.movie_id = movie.id)
-- where rating.rating < 3
-- GROUP BY director.name
-- ORDER BY AVG(rating.rating) < 3;

SELECT * FROM 