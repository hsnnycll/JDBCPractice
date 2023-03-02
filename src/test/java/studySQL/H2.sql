/*Find the staff’s name, username and password who is working in the store that sells “Glass Dying” film*/
SELECT s.first_name, s.last_name, s.username, s.password
FROM staff s
JOIN store st ON s.store_id = st.store_id
JOIN inventory i ON st.store_id = i.store_id
JOIN film f ON i.film_id = f.film_id
WHERE f.title = 'Glass Dying'
GROUP BY s.first_name, s.last_name, s.username, s.password