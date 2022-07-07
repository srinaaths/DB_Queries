SELECT rating.movie_id from rating
GROUP BY rating.movie_id
ORDER BY MAX(rating.rating);