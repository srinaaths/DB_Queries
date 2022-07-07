SELECT name, genre_id from movie
join movie_genre
on (movie.id = movie_genre.movie_id)
WHERE (movie.director_id = 20)