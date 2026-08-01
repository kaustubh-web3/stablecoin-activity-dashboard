SELECT
    token_symbol,
    SUM(amount_usd) AS transfer_volume_usd
FROM stablecoins_multichain.transfers
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY token_symbol
ORDER BY transfer_volume_usd DESC;
