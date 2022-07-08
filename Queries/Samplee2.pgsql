select MAX(id) from (
    select id from movie
) as max