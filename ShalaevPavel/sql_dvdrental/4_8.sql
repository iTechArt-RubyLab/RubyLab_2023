ALTER TABLE film_actor
DROP
CONSTRAINT film_actor_film_id_fkey
     , ADD  CONSTRAINT film_actor_film_id_fkey
   FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE
CASCADE;


ALTER TABLE film_category
DROP
CONSTRAINT film_category_film_id_fkey
     , ADD  CONSTRAINT film_category_film_id_fkey
   FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE
CASCADE;


ALTER TABLE inventory
DROP
CONSTRAINT inventory_film_id_fkey
     , ADD  CONSTRAINT inventory_film_id_fkey
   FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE
CASCADE;


ALTER TABLE rental
DROP
CONSTRAINT rental_inventory_id_fkey
     , ADD  CONSTRAINT rental_inventory_id_fkey
   FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE
CASCADE;


DELETE
FROM film
WHERE film_id = 14;
