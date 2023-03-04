/*What is the phone number for the customer with the name Pamela Baker?*/
SELECT phone FROM address
WHERE address_id = (SELECT address_id FROM customer
WHERE first_name = 'Pamela' AND last_name = 'Baker');