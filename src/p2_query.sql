SELECT 
    *
FROM
    order_details AS det
WHERE
    det.order_id = (SELECT 
            id
        FROM
            orders AS o
        WHERE
            o.id = det.order_id and o.shipper_id = 3)