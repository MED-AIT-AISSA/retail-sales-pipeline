SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    c.country,
    COUNT(s.order_id) AS total_orders,
    COALESCE(SUM(s.total_amount), 0)::NUMERIC(12, 2) AS total_revenue,
    COALESCE(AVG(s.total_amount), 0)::NUMERIC(12, 2) AS average_order_value
FROM {{ ref('stg_customers') }} AS c
LEFT JOIN {{ ref('fct_sales') }} AS s
    ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.city,
    c.country