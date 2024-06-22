--Which customer has the highest total expenditure across all orders?

SELECT orders.customer_id, customers.customer_name , order_details.price
FROM orders
JOIN customers ON (orders.customer_id = customers.customer_id)
JOIN order_details ON (order_details.order_id = orders.order_id)
ORDER BY order_details.price DESC
LIMIT 1;
