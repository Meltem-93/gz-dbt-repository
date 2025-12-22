SELECT
    orders_id,
    CAST(shipping_fee AS FLOAT64) AS ship_cost
FROM source
WHERE shipping_fee <> shipping_fee_1