ALTER TABLE film
ADD COLUMN my_rating smallint NOT NULL DEFAULT 666;

SELECT title, my_rating FROM film;

ALTER TABLE film
DROP COLUMN IF EXISTS my_rating;
