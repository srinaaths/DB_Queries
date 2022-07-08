-- Director X - all movies between 2015 & 2022

SELECT movie.name, movie.release_year FROM movie
JOIN director
ON (movie.director_id = director.id)
WHERE (director.name = 'Ryer' AND movie.release_year BETWEEN 2005 AND 2015)
ORDER BY movie.release_year;

-- -- Q3

-- SELECT movie.name FROM movie
-- JOIN director
-- ON (movie.director_id = director.id)
-- JOIN movie_genre
-- ON (movie.id = movie_genre.movie_id)
-- JOIN genre
-- on (movie_genre.genre_id = genre.id)
-- WHERE (genre.name = 'Action') AND director.name = 'Ryer'