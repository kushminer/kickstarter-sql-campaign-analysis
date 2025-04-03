SELECT
    DATEDIFF(deadline,launched) AS campaign_length,
    SUM(pledged) as total_pledged,
    SUM(pledged)/SUM(goal),
    COUNT(*) AS count,
    SUM(backers)
FROM campaign
GROUP BY campaign_length
ORDER BY campaign_length DESC