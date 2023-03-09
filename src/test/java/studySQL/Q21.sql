/*How many guest bookings are there?*/
SELECT COUNT(*)
FROM cd.bookings
WHERE memid = 0;
