/*SELECT
CAST(orders_id AS float64) AS orders_id,
date_date,
CAST(revenue AS float64),
CAST(margin AS float64),
CAST(quantity AS float64),
CAST(purchase_cost AS float64) AS purchase_cost,
CAST(shipping_fee AS float64),
CAST(logcost AS float64),
CAST(ship_cost AS float64),
CAST(margin AS float64) + CAST(shipping_fee AS float64) - CAST(logcost AS float64) - CAST(ship_cost AS float64) AS operational_margin
FROM {{ref("int_sales_margin")}}
JOIN {{ref("stg_raw__ship")}}
USING (orders_id)*/

select *, CAST(round(margin + shipping_fee - ship_cost - logcost, 2) AS float64) as operational_margin
from {{ ref("int_sales_margin") }}
join {{ ref("stg_raw__ship") }} using (orders_id)