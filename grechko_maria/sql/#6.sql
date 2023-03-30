INSERT INTO film (title, description, release_year, language_id, length, rating)
VALUES ('8 femmes', 'Some description', 2002, 1, 103, 'NC-17');

SELECT * FROM film 
WHERE title IN ('8 femmes');
