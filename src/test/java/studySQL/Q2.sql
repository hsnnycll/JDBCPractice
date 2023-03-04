/*What is the title and rating for the movie starting 
with ‘Dragon’ and the length of 170?*/
SELECT title, rating FROM film
WHERE title LIKE 'Dragon%' AND length = 170;