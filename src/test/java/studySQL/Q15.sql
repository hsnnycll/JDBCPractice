/*What are the fullnames of members and the people who recommend them?*/
SELECT r.firstname || ' ' || r.surname AS recommended_by,
m.firstname || ' ' || m.surname AS member FROM cd.members AS m
INNER JOIN cd.members AS r ON m.recommendedby = r.memid
WHERE m.recommendedby IS NOT null 