SELECT
date_date,
COUNT (orders_id),
SUM(revenue),
COUNT(orders_id) / SUM(revenue) AS average_basket,
margin,
operational_margin
FROM {{ref("int_orders_operational")}}
GROUP BY date_date