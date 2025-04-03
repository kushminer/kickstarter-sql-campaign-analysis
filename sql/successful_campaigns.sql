SELECT
    DATEDIFF(deadline,launched) AS campaign_length,
    SUM(pledged) as total_pledged,
    COUNT(*) AS count,
    outcome
FROM campaign
WHERE outcome = 'successful'
GROUP BY campaign_length
ORDER BY campaign_length DESC