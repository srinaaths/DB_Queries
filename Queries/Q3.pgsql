-- highest rated movies
SELECT movie.name from movie
JOIN rating
ON (
    rating.movie_id = movie.id
)
GROUP BY movie.name;