
WITH cleaned_orders AS (
    SELECT
        order_id,
        promo_code,
        -- Mengubah total amount dari VARCHAR menjadi NUMERIC
        CAST(
            REPLACE(TRIM(total_amount_idr), ',', '')
            AS NUMERIC
        ) AS revenue,
        -- Mengubah discount blank menjadi 0,
        -- lalu menghilangkan koma dan mengubahnya menjadi NUMERIC
        CASE
            WHEN TRIM(discount_amount_idr) = '' THEN 0
            ELSE CAST(
                REPLACE(TRIM(discount_amount_idr), ',', '')
                AS NUMERIC
            )
        END AS discount
    FROM gayanara.orders o
    where o.order_status = 'delivered'
    
),

segmented_orders AS (
    SELECT
        order_id,
        promo_code,
        revenue,
        discount,
        CASE
            WHEN promo_code = 'TANPA PROMO' THEN 'No Promo'
            ELSE 'With Promo'
        END AS promo_segment
    FROM cleaned_orders
)

SELECT 
	promo_code,
	promo_segment,
    COUNT(order_id) AS total_orders,
    SUM(revenue) AS total_revenue,
    SUM(discount) AS total_discount,
    ROUND(
        SUM(revenue) / COUNT(order_id),
        2
    ) AS aov
FROM segmented_orders
GROUP BY
    promo_code,
    promo_segment

ORDER BY
    promo_segment,
    total_revenue DESC;	
