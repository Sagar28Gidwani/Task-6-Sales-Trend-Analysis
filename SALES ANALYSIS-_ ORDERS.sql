CREATE DATABASE ODERS;
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2025-01-05', 250.00, 101),
(2, '2025-01-15', 450.00, 102),
(3, '2025-02-10', 300.00, 101),
(4, '2025-02-18', 150.00, 103),
(5, '2025-03-02', 500.00, 104);

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;