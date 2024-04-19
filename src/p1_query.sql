SELECT 
    *,
    (SELECT 
            customer_id
        FROM
            orders AS o
        WHERE
            o.id = det.order_id) AS customer_id
FROM
    order_details AS det