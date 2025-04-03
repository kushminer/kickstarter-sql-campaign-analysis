SELECT
    DATEDIFF(deadline,launched) AS campaign_length,
    COUNT(*) AS count,
    outcome
FROM campaign
WHERE outcome = 'failed'
GROUP BY campaign_length
ORDER BY campaign_length DESC