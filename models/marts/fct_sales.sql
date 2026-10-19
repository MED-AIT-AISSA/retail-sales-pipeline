SELECT
    s.order_id,
    s.customer_id,
    s.product_id,
    s.quantity,
    CAST(p.price AS NUMERIC(10, 2)) AS unit_price,
    CAST(s.quantity * p.price AS NUMERIC(10, 2)) AS total_amount,
    s.order_date
FROM {{ ref('sales') }} AS s
LEFT JOIN {{ ref('products') }} AS p
    ON s.product_id = p.product_id