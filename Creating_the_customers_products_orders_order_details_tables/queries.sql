-- Client table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)) ;
    
-- Product table 
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order details table
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Adding sample data to the customer table
INSERT INTO customers (customer_name, email, phone)
VALUES
    ('John Doe', 'john.doe@example.com', '123-456-789'),
    ('Jane Smith', 'jane.smith@example.com', '987-654-321');

-- Adding sample data to the products table
INSERT INTO products (product_name, category, price)
VALUES
    ('Laptop', 'Electronics', 1200.00),
    ('Smartphone', 'Electronics', 800.00),
    ('Printer', 'Electronics', 300.00);
    
-- Adding sample data to the orders table
INSERT INTO orders (customer_id, order_date)
VALUES
    (1, '2024-06-01'),
    (2, '2024-06-05');

-- Adding sample data to the order_details table
INSERT INTO order_details (order_id, product_id, quantity, price)
VALUES
    (1, 1, 2, 2400.00), -- 2 laptops
    (1, 3, 1, 300.00),  -- 1 printer
    (2, 2, 1, 800.00);  -- 1 smartphone
