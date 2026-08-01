SELECT
    block_date,
    SUM(amount_usd) AS transfer_volume_usd
FROM stablecoins_multichain.transfers
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
