SELECT
	name,
    backers,
	DATEDIFF(deadline,launched) AS campaign_length,
    ROUND(goal) AS goal,
    ROUND(pledged) AS pledged,
	ROUND((pledged)/goal,2)*100 AS percentage_of_goal_pledged,
    ROUND(pledged/(SELECT campaign_length)) as pledged_per_day,
    outcome
FROM kickstarter.campaign
WHERE sub_category_id = 14
ORDER BY pledged DESC