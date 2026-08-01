SELECT
    block_date,
    COUNT(*) AS total_transfers
FROM stablecoins_multichain.transfers
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
