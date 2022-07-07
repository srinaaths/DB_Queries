-- filter all movies by genre

SELECT movie.name from
JOIN movie_genre
ON (movie.id = movie_genre.movie_id)
WHERE movie_genre.genre_id = (
    SELECT id from genre
    WHERE name = 'Action'
)

-- SELECT movie.name from movie
-- JOIN movie_genre
-- ON (movie.id = movie_genre.movie_id)
-- JOIN genre
-- ON (movie_genre.genre_id = genre.id)
-- WHERE(genre.name = 'Action')