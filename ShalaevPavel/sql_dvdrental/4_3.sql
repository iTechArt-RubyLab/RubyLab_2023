SELECT  last_name|| '-' || first_name AS "full name"
FROM  actor
WHERE first_name LIKE 'W%' OR last_name LIKE '%H';