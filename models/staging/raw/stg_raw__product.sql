SELECT
    products_id,
    purchSE_PRICE
FROM {{ source('raw', 'product') }}