--Which customer has placed the most orders?

SELECT 
    orders.customer_id,
    customers.customer_name,
    COUNT(order_details.order_id) AS order_count
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY orders.customer_id;
