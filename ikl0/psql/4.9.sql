SELECT concat(last_name, '-', first_name) AS full_name FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
Having COUNT(*) > 2