/*Find the total sales of each staff for each month.*/
SELECT CONCAT(s.first_name, ' ', s.last_name) AS staff_name, 
to_char(p.payment_date, 'Month') AS month, 
SUM(p.amount) AS total_sales 
FROM payment p
JOIN staff s ON p.staff_id = s.staff_id
GROUP BY staff_name, month
ORDER BY staff_name;