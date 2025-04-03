SELECT
	cat.id AS category_id,
	cat.name AS category,
	SUM(backers) AS total_backers
FROM campaign cam
JOIN sub_category sc
	ON sc.id = cam.sub_category_id
JOIN category cat
	ON cat.id = sc.category_id
GROUP BY cat.id
ORDER BY total_backers DESC