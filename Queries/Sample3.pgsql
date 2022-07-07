select movie_id from rating
GROUP by movie_id
having avg(rating) < 3