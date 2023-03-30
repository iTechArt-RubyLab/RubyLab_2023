SELECT name AS Язык, COUNT(title) AS Количество_фильмов_в_группе FROM film
INNER JOIN language ON film.language_id = language.language_id
GROUP BY name;
