/*What is the name, surname and amount paid by the customers 
who have made the highest payment so far?*/
SELECT first_name,last_name,amount FROM customer
JOIN payment ON payment.customer_id = customer.customer_id
WHERE amount = (SELECT MAX(amount) FROM payment);