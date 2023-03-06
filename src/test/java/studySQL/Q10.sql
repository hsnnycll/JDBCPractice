/*What are the languages of the movies that exist in Store-1?*/
SELECT name FROM language
JOIN film ON film.language_id = language.language_id
JOIN inventory ON inventory.film_id = film.film_id
JOIN store ON inventory.store_id = store.store_id
AND store.store_id = 1
GROUP BY name;