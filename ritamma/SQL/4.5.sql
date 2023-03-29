SELECT language.name, COUNT(film_id)
FROM film JOIN language ON film.language_id = language.language_id
GROUP BY language.name;