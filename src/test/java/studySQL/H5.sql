/*How much will store-2 earn when all the rented films are returned?*/
SELECT SUM(f.rental_rate) AS total_earnings
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.return_date IS NOT NULL AND i.store_id = 2;