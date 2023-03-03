/*Which countries have made higher payments than 800$?(with their payment amount in desc order)*/
SELECT co.country, SUM(p.amount) AS total_payment
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country
HAVING SUM(p.amount) > 800
ORDER BY total_payment DESC;