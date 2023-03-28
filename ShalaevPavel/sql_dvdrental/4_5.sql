SELECT name, COUNT(*)
FROM language
JOIN film
ON language.language_id = film.language_id
GROUP BY name;