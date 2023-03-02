/*The last 3 person’s name and rent date, who had rent any film of actor “Ed Chase”*/
SELECT c.first_name, c.last_name, r.rental_date
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Ed' AND a.last_name = 'Chase'
ORDER BY r.rental_date DESC
LIMIT 3;