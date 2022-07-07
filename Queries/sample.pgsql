SELECT actor_id from movie_actor
    join movie
    on (movie.id = movie_actor.movie_id)
    where movie.name = 'The Forgotten Space'