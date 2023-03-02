/*Find out the customer id, name, surname, the city and the country of the customers 
who make the most purchases and how much money they have spent ?*/
SELECT c.customer_id, c.first_name, c.last_name, ci.city, co.country, SUM(p.amount) AS total_spent
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY c.customer_id, c.first_name, c.last_name, ci.city, co.country
ORDER BY total_spent DESC
LIMIT 1;