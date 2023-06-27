UPDATE film
SET title = 'Mi-mi-mi', 
	rating = 'G',
	description = 'This used to have higher rating and different name XD'
	
WHERE rating IN ('PG-13') AND title LIKE ('D%')
RETURNING title AS new_title, rating AS new_rating, description AS new_description;
