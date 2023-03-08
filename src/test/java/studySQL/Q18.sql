/*Which facility has the highest number of bookings and how many bookings does it have?*/
SELECT name, COUNT(*) AS booking_amount
FROM cd.bookings 
JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
GROUP BY name
ORDER BY booking_amount DESC
LIMIT 1;