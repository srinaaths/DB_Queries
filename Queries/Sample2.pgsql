select movie.name, rating.id, avg(rating) from rating
join movie
on (movie.id = rating.movie_id)
group by movie_id, movie.name, rating.id
HAVING avg(rating) < 3;