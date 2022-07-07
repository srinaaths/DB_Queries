SELECT movie.name from movie
JOIN rating
on (rating.movie_id = movie.id)
WHERE rating = 10;