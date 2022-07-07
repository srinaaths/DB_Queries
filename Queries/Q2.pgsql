SELECT * from movie
JOIN movie_genre
ON (movie.id = movie_genre.movie_id)
WHERE (movie_genre.genre_id = (
    SELECT id from genre
    WHERE name = 'Horror'
))
AND 
(
    movie.release_year = 2009
)
ORDER BY movie.release_year DESC
;