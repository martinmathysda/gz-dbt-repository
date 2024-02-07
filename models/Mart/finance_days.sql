SELECT
date_date,
COUNT (orders_id) AS nb_transactions,
SUM(revenue),
(COUNT(quantity) / SUM(revenue)) AS average_basket,
SUM(margin) AS margin,
SUM(operational_margin) AS operational margin
FROM {{ref("int_orders_operational")}}
GROUP BY date_date