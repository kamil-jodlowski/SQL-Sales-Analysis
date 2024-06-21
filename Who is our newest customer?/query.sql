--Who is our newest customer?

-- If we want to find the newest customer by who placed the last order, we can use the code:
SELECT orders.customer_id, customers.customer_name, customers.email, customers.phone
FROM orders
JOIN customers ON (orders.customer_id = customers.customer_id)
WHERE orders.order_date = (SELECT MAX(orders.order_date)
                           FROM orders);

/*Please remember that this is not the latest customer registered in the record, but the latest order. 
To find the newest customer, we should look for the one who was added to the data table last: */ 

SELECT customer_id, customer_name, email, phone
FROM customers
ORDER BY customer_id DESC
LIMIT 1;

