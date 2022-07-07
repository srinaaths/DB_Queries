-- Year - 2022 - top rated movies - horror - year 2009 since 2022 not available

select movie.name from movie
join rating
on (movie.id = rating.movie_id)
WHERE (
    movie.id = (
        SELECT movie_genre.genre_id from movie_genre
        JOIN genre
        ON movie_genre.genre_id = genre.id
        WHERE genre.name = 'Horror'
        -- (
        --     SELECT genre.id from genre
        --     WHERE genre.name = 'Horror'
        -- )
    )
)
GROUP BY movie.name
ORDER BY AVG(rating.rating) DESC;