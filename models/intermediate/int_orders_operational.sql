SELECT
orders_id,
date_date,
CAST(margin AS float64) + CAST(shipping_fee AS float64) - CAST(logcost AS float64) - CAST(ship_cost AS float64) AS operational_margin
FROM {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)