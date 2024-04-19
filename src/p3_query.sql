SELECT 
    order_id, AVG(quantity)
FROM
    (SELECT 
        *
    FROM
        order_details AS det
    WHERE
        det.quantity > 10) AS filtered
GROUP BY order_id
