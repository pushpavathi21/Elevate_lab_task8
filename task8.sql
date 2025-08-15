DELIMITER $$

CREATE PROCEDURE GetCustomerOrders(
    IN cust_id INT
)
BEGIN
    SELECT order_id, order_date, total_amount
    FROM orders
    WHERE customer_id = cust_id;
END$$

DELIMITER ;

CALL GetCustomerOrders(101);
Example Function
sql
Copy
Edit
DELIMITER $$

CREATE FUNCTION GetTotalOrderAmount(orderId INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE totalAmt DECIMAL(10,2);

    SELECT SUM(price * quantity)
    INTO totalAmt
    FROM order_details
    WHERE order_id = orderId;

    RETURN IFNULL(totalAmt, 0);
END$$

DELIMITER ;


SELECT GetTotalOrderAmount(2001);