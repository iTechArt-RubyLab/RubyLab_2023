SELECT actor.actor_id, actor.first_name ||' '||actor.last_name AS full_name, COUNT(film_actor.film_id)
FROM film_actor JOIN actor ON film_actor.actor_id = actor.actor_id
GROUP BY film_actor.actor_id, full_name
HAVING COUNT(film_actor.film_id) > 2;