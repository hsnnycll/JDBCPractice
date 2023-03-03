/*Find the exact address, the city and the country of store 2.*/
SELECT a.address, c.city, co.country
FROM store s
JOIN address a ON s.address_id = a.address_id
JOIN city c ON a.city_id = c.city_id
JOIN country co ON c.country_id = co.country_id
WHERE s.store_id = 2;