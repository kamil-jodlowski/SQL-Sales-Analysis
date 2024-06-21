--How many laptops were ordered in the latest order?

SELECT 
    MAX(orders.order_date) AS latest_order_date,
    CASE 
        WHEN SUM(CASE WHEN products.product_name = 'Laptop' THEN 1 ELSE 0 END) > 0 
        THEN SUM(order_details.quantity)
        ELSE 0 
    END AS laptops_ordered
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON products.product_id = order_details.product_id
WHERE orders.order_date = (SELECT MAX(order_date) FROM orders);

--The provided code checks whether 'Laptop' appears in the orders placed. 
--And if it occurs, it returns the value of the quantity in which it was ordered. If not, it returns zero.
