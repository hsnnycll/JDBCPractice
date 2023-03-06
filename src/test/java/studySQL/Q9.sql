/*Which district made the most payment amount and how much has been paid?*/
SELECT district, SUM(amount) FROM address
JOIN customer ON customer.address_id = address.address_id
JOIN payment ON payment.customer_id = customer.customer_id
GROUP BY district
ORDER BY SUM(amount) DESC
LIMIT 1
