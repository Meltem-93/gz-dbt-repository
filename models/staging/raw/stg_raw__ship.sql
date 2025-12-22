WITH source AS (
    SELECT *
    FROM {{ source('raw', 'ship') }}
),

checked AS (
    SELECT *
    FROM source
    WHERE shipping_fee <> shipping_fee_1   -- fark kontrolü
),

renamed AS (
    SELECT
        orders_id,
        CAST(shipping_fee AS FLOAT64) AS ship_cost  -- tek sütun bırak ve tür dönüştür
    FROM checked
)

SELECT *
FROM renamed
