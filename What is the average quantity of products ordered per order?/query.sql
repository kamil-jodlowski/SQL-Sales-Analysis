--What is the average quantity of products ordered per order?

SELECT orders.order_id, AVG(order_details.quantity ) AS quantity_per_order
FROM order_details
JOIN orders ON (order_details.order_id = orders.order_id)
GROUP BY orders.order_id
