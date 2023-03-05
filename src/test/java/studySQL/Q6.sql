/*What are the names of the top 5 actors with the most movies in the Store-2?*/
SELECT first_name || ' ' || last_name AS full_name, COUNT(*) FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN inventory ON film_actor.film_id = inventory.film_id
WHERE inventory.store_id = 2
GROUP BY actor.actor_id
ORDER BY COUNT(*) DESC
LIMIT 5