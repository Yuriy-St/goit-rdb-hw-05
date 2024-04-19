 WITH filtered AS (SELECT 
        *
    FROM
        order_details AS det
    WHERE
        det.quantity > 10) 
SELECT 
    order_id, AVG(quantity)
FROM filtered
GROUP BY order_id
