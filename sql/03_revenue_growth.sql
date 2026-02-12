WITH monthly_data AS (
  SELECT
    FORMAT_DATE('%Y-%m', DATE(o.created_at)) AS order_month,
    SUM(oi.sale_price) AS total_revenue
  FROM `bigquery-public-data.thelook_ecommerce.orders` o
  JOIN `bigquery-public-data.thelook_ecommerce.order_items` oi
    ON o.order_id = oi.order_id
  GROUP BY order_month
)

SELECT
  order_month,
  total_revenue,
  total_revenue - LAG(total_revenue) OVER (ORDER BY order_month) AS revenue_diff,
  SAFE_DIVIDE(
    total_revenue - LAG(total_revenue) OVER (ORDER BY order_month),
    LAG(total_revenue) OVER (ORDER BY order_month)
  ) * 100 AS revenue_growth_pct
FROM monthly_data
ORDER BY order_month;
