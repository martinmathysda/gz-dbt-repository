/*SELECT 
orders_id,
date_date,
SUM(revenue) as revenue,
SUM(quantity) as quantity,
SUM (purchase_cost) as purchase_cost,
SUM(margin) as margin
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, date_date*/

SELECT
  orders_id,
  max(date_date) as date_date,
  ROUND(SUM(revenue),2) as revenue,
  ROUND(SUM(quantity),2) as quantity,
  ROUND(SUM(purchase_cost),2) as purchase_cost,
  ROUND(SUM(margin),2) as margin
FROM {{ ref("int_sales_margin") }}
GROUP BY orders_id
ORDER BY orders_id DESC