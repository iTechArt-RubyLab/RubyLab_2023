TER TABLE film_actor
DROP CONSTRAINT film_actor_film_id_fkey,
ADD CONSTRAINT film_actor_film_id_fkey
  FOREIGN KEY (film_id)
  REFERENCES film
  ON DELETE CASCADE;

ALTER TABLE film_category
    DROP CONSTRAINT film_category_film_id_fkey,
    ADD CONSTRAINT film_category_film_id_fkey
        FOREIGN KEY (film_id)
            REFERENCES film
            ON DELETE CASCADE;

ALTER TABLE inventory
    DROP CONSTRAINT inventory_film_id_fkey,
    ADD CONSTRAINT finventory_film_id_fkey
        FOREIGN KEY (film_id)
            REFERENCES film
            ON DELETE CASCADE;

ALTER TABLE rental
    DROP CONSTRAINT rental_inventory_id_fkey,
    ADD CONSTRAINT rental_inventory_id_fkey
        FOREIGN KEY (inventory_id)
            REFERENCES inventory
            ON DELETE CASCADE;

ALTER TABLE payment
    ALTER COLUMN rental_id DROP NOT NULL;

DELETE FROM film
WHERE title = 'FuryFury';