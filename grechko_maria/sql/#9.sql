SELECT last_name || ' ' || first_name AS Актер, COUNT(film_actor.film_id) AS Количество_фильмов FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY Актер
HAVING COUNT(film_actor.film_id) > 2;
