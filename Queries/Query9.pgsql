SELECT movie.name, rating.review as Review, rating.rating as LowestRating from rating
JOIN movie
ON (rating.movie_id = movie.id)
WHERE movie.id = (
    SELECT id from movie
    WHERE name = 'Under the Skin of the City (Zir-e-poost-e Shahr)'
)
-- ORDER BY rating.rating DESC
ORDER BY rating.rating
LIMIT 1;