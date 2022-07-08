SELECT director.name,
    COUNT(director.name)
from (
        select rating.movie_id,
            avg(rating.rating),
            movie.name
        from rating
            join movie on (movie.id = rating.movie_id)
        group by rating.movie_id,
            movie.name
        having avg(rating.rating) < 3
        order by avg(rating.rating)
    ) as intermediate_table
    JOIN movie on(intermediate_table.movie_id = movie.id)
    JOIN director ON (movie.director_id = director.id)
GROUP BY director.name
ORDER BY COUNT(director.name) DESC