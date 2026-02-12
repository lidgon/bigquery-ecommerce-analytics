SELECT
  FORMAT_DATE('%Y-%m', DATE(created_at)) AS order_month,
  COUNT(order_id) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY order_month
ORDER BY order_month;
