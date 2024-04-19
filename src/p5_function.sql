USE theme3_test;
DROP FUNCTION IF EXISTS divide;
DELIMITER //
CREATE FUNCTION divide(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
	DECLARE res FLOAT;
    SET res = a / b;
    RETURN res;
END //

DELIMITER ;

SELECT 
    *
FROM
    order_details as det
WHERE
    quantity < divide(20, 3)