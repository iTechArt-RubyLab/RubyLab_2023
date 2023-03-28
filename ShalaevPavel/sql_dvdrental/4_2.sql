SELECT *
FROM film
WHERE language_id in (SELECT DISTINCT language_id
                     FROM language
                     WHERE name = 'English'
                        OR name = 'Italian'
                        OR name = 'German' );