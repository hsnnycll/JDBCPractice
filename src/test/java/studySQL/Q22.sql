/*In which month did the most amount of members join?*/
SELECT to_char(joindate, 'Month') AS month, COUNT(*)
FROM cd.members
GROUP BY month
ORDER BY count DESC
LIMIT 1;