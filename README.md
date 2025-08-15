# Task 8 - Stored Procedures and Functions

# Elevate_lab_task8
Practice creating reusable SQL blocks using MySQL stored procedures and functions.

## Files
- `procedure.sql` → Contains a stored procedure `GetCustomerOrders`
- `function.sql` → Contains a function `GetTotalOrderAmount`

## How to Run
1. Import the provided sample `orders` and `order_details` tables into MySQL.
2. Run `procedure.sql` to create the procedure.
3. Run `function.sql` to create the function.
4. Test them with:
   
   CALL GetCustomerOrders(101);
   SELECT GetTotalOrderAmount(2001);

   THANKYOU !!!
