/*How many movies have titles containing 
‘fight’ and lengths longer than 100?*/
SELECT COUNT(*) FROM film
WHERE title LIKE '%fight%' AND length > 100;