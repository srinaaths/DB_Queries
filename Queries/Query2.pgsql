-- Director X - all movies between 2015 & 2022

SELECT * FROM movie
JOIN director
ON (movie.director_id = director.id)
WHERE (director.name = 'Azalyn' AND movie.release_year BETWEEN 2005 AND 2015)
ORDER BY movie.release_year ;