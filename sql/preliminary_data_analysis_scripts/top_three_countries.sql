SELECT
	co.name AS country,
	SUM(ROUND(c.pledged,2)) AS total_pledged,
	COUNT(c.id) AS campaigns_backed
FROM campaign c
JOIN country co 
	ON c.country_id = co.id
GROUP BY country_id
ORDER BY campaigns_backed DESC
LIMIT 3

