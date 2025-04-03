
SELECT 
    COUNT(*) AS count,
    SUM(ROUND(pledged)) as total_pledged,
	ROUND(AVG((pledged))) AS avg_pledged,
    ROUND(MAX((pledged))) AS max_pledged,
    ROUND(min((pledged))) AS min_pledged,
    -- HOW TO FIND OUTIERS https://dataschool.com/how-to-teach-people-sql/how-to-find-outliers-with-sql/
    -- PIE CHART
	ROUND(STDDEV(pledged)) AS standard_deviation,
	ROUND(AVG(DATEDIFF(deadline,launched))) AS avg_campaign_length,
    ROUND(MAX(DATEDIFF(deadline,launched))) AS max_campaign_length,
    ROUND(MIN(DATEDIFF(deadline,launched))) AS min_campaign_length,
	-- (SELECT SUM(ROUND(pledged/campaign_length))) AS pledged_per_day,
    -- How to calculate standard deviation within SQL
    outcome
FROM campaign
GROUP BY outcome