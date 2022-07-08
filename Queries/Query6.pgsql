-- SELECT DISTINCT director.name, avg(rating.rating) FROM director
-- JOIN movie
-- ON (director.id = movie.director_id)
-- JOIN rating
-- ON (movie.id = rating.movie_id)
-- GROUP BY movie_id, director.name
-- HAVING AVG(rating.rating) < 2

-- SELECT director.name, count(rating.rating) from director
-- JOIN movie
-- ON (director.id = movie.director_id)
-- JOIN rating
-- ON (rating.movie_id = movie.id)
-- where rating.rating < 3
-- GROUP BY director.name
-- ORDER BY AVG(rating.rating) < 3;

SELECT director.name, COUNT(director.name) from (
select rating.movie_id, avg(rating.rating) , movie.name from rating
join movie
on (movie.id = rating.movie_id)
group by rating.movie_id, movie.name
having avg(rating.rating) < 3
order by avg(rating.rating)
) as intermediate_table
JOIN movie
on(intermediate_table.movie_id = movie.id)
JOIN director
ON (movie.director_id = director.id) 
GROUP BY director.name
ORDER BY COUNT(director.name) DESC