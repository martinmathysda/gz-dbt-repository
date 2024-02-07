SELECT
date_date,
orders_id,
products_id,
revenue,
quantity,
quantity * CAST(purchase_price AS float64) AS purchase_cost,
CAST(revenue AS float64) - quantity * CAST(purchase_price AS float64) AS margin
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__product")}}
USING (products_id)

