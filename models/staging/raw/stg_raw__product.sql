WITH source AS (
    SELECT *
    FROM {{ source('raw', 'product') }}
),

renamed AS (
    SELECT
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchase_price  -- yeniden adlandır ve tür dönüştür
    FROM source
)

SELECT *
FROM renamed