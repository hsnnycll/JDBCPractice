/*Return the members' information of the members who do not have any booking histories.*/
SELECT * FROM cd.members
WHERE memid NOT IN 
(SELECT DISTINCT memid
FROM cd.bookings);