SELECT
    products_id,
    purchase_price
FROM {{ source('raw', 'product') }}