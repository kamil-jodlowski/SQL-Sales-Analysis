--What are the details of product ID 3 in order ID 1?

SELECT products.product_name, products.category, products.price, order_details.order_id
FROM products
JOIN order_details ON (products.product_id = order_details.product_id)
WHERE products.product_id = 3 AND order_details.order_id = 1 ;
