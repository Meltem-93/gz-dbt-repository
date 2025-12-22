SELECT
    orders_id,
    shipping_fee,
    shipping_fee_1,
    shipping_fee_2,
    shipping_fee_3
FROM {{ source('raw', 'ship') }}