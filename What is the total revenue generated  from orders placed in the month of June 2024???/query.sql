--What is the total revenue generated from orders placed in the month of June 2024???
  
SELECT SUM(price) 
FROM order_details
JOIN orders ON (order_details.order_id = orders.order_id)
WHERE orders.order_date BETWEEN '2024-06-01' AND '2024-06-30';

