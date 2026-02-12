# BigQuery E-commerce Analytics

SQL analysis of the public dataset `bigquery-public-data.thelook_ecommerce` in Google BigQuery.

## What’s inside
- Monthly order volume (`sql/01_monthly_orders.sql`)
- Monthly revenue (`sql/02_monthly_revenue.sql`)
- Month-over-month revenue growth: absolute and % (`sql/03_revenue_growth.sql`)

## Key takeaway
Revenue increases over time, while MoM growth % is more volatile and does not scale proportionally with absolute revenue.

## Tech
BigQuery SQL (JOIN, CTE, window functions: LAG, SAFE_DIVIDE)
