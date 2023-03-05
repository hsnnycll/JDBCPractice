/*How many movies have a rating of either ‘R’ or ‘NC-17’ 
and the rental rate is between 1.00 to 2.00?*/
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND rating = 'NC-17'
AND rental_rate BETWEEN 1.00 AND 2.00;