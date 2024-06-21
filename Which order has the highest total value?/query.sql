--Which order has the highest total value?

SELECT order_id, price
FROM order_details
WHERE price = (SELECT MAX(price) FROM order_details);

--Query shows which of the orders had the highest value
