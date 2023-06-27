WITH tmp_table AS (SELECT actor_id, COUNT(film_id) FROM film_actor
GROUP BY actor_id
HAVING COUNT(film_id) >= 2)


SELECT first_name || ' ' || last_name AS "Actors starred in 2 or more movies"
FROM actor
JOIN tmp_table
ON actor.actor_id = tmp_table.actor_id;
