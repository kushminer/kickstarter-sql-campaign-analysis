SELECT
sc.id,
sc.name as sub_category,
SUM(ROUND(cam.pledged,2)) as total_raised
FROM campaign cam
JOIN sub_category sc ON
	cam.sub_category_id = sc.id
GROUP BY sub_category_id
ORDER BY total_raised DESC