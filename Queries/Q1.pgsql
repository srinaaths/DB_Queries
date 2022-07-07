-- top rated movies in a particular year in particular genre

SELECT movie.name, movie.release_year from movie
JOIN movie_genre
on movie.id = movie_genre.movie_id
where genre_id = (
    select id from genre
    where name = 'Horror'
) and movie.release_year = 2010;