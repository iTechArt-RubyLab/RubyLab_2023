SELECT rental_duration, COUNT(film_id)
FROM film
GROUP BY rental_duration;
