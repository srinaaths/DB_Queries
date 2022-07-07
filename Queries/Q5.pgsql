SELECT movie.name, AVG(rating.rating) from movie
JOIN rating
ON (
    rating.movie_id = movie.id
)
GROUP BY movie.name
ORDER BY AVG(rating.rating) DESC;