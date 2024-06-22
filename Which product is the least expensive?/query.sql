--Which product is the least expensive?

SELECT products.product_name, products.price
FROM products
ORDER BY products.price ASC
LIMIT 1;
