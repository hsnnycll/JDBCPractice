/*Who is the member who gave the most recommendations for the membership?*/
SELECT CONCAT(m.firstname, ' ', m.surname) AS member, COUNT(*) AS num_recommendations
FROM cd.members AS m
JOIN cd.members AS r ON m.memid = r.recommendedby
GROUP BY m.memid
ORDER BY num_recommendations DESC
LIMIT 1;
