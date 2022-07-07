SELECT movie.name from movie
JOIN director
on (movie.director_id = director.id)
where movie.director_id = (
    SELECT id from director
    where name = 'Liza'
)