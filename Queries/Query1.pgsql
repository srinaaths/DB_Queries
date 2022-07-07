-- Year - 2022 - top rated movies - horror - year 2009 since 2022 not available

-- select movie.name from movie
-- join rating
-- on (movie.id = rating.movie_id)
-- WHERE (
--     movie.id = (
--         SELECT movie_genre.genre_id from movie_genre
--         JOIN genre
--         ON movie_genre.genre_id = genre.id
--         WHERE genre.name = 'Horror'
--         -- (
--         --     SELECT genre.id from genre
--         --     WHERE genre.name = 'Horror'
--         -- )
--     )
-- )
-- GROUP BY movie.name
-- ORDER BY AVG(rating.rating) DESC;

SELECT movie.name , movie.release_year, AVG(rating.rating) from movie
JOIN movie_genre
on (movie.id = movie_genre.movie_id)
JOIN rating
on (movie.id = rating.movie_id)
where movie_genre.genre_id = (
    SELECT id from genre
    WHERE name = 'Horror'
) and movie.release_year = 2005
GROUP BY movie.name, movie.release_year
order by AVG(rating.rating) DESC
