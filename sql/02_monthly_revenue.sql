SELECT
  FORMAT_DATE('%Y-%m', DATE(o.created_at)) AS order_month,
  COUNT(DISTINCT o.order_id) AS total_orders,
  SUM(oi.sale_price) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.orders` o
JOIN `bigquery-public-data.thelook_ecommerce.order_items` oi
  ON o.order_id = oi.order_id
GROUP BY order_month
ORDER BY order_month;
