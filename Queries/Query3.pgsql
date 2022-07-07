SELECT genre.name, COUNT(movie.name) from movie
JOIN director
ON (movie.director_id = director.id)
JOIN movie_genre
ON (movie.id = movie_genre.movie_id)
JOIN genre
ON (movie_genre.genre_id = genre.id)
WHERE movie.director_id = (
    SELECT id from director
    WHERE name = 'Ryer'
)
GROUP BY genre.name;