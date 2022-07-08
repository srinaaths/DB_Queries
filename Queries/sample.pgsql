-- Q1:

-- SELECT movie.name, movie.id FROM movie
-- JOIN movie_genre
-- ON (movie.id = movie_genre.movie_id)
-- JOIN rating
-- ON (movie.id = rating.movie_id)
-- JOIN genre
-- ON (genre.id = movie_genre.genre_id)
-- WHERE (genre.name = 'Horror') AND movie.release_year = 2010
-- GROUP BY movie.id
-- ORDER BY AVG(rating.rating)

-- Q2:

-- SELECT movie.name from movie
-- JOIN director
-- ON (movie.director_id = director.id)
-- WHERE director.name = 'Ryer' AND movie.release_year BETWEEN 2000 AND 2015;

-- Q3

-- SELECT genre.name, COUNT(genre.name) FROM movie
-- JOIN director
-- ON (movie.director_id = director.id)
-- JOIN movie_genre
-- ON (movie.id = movie_genre.movie_id)
-- JOIN genre
-- on (movie_genre.genre_id = genre.id)
-- WHERE director.name = 'Kaliyah'
-- GROUP BY genre.name

-- Q4

-- SELECT actor.name, movie_actor.role from actor
-- JOIN movie_actor
-- ON (actor.id = movie_actor.actor_id)
-- JOIN movie
-- ON (movie.id = movie_actor.movie_id)
-- WHERE (movie.name = 'The Forgotten Space')