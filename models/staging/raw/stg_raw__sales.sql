SELECT
    orders_id,
    date_date,
    revenue,
    quantity
FROM {{ source('raw', 'sales') }}