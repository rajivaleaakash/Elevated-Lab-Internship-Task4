-- 1. Total Numbers of Orders.
/*
SELECT count(order_id) AS Total_Orders
FROM orders;
*/
-- 2. Total sales (revenue) by month
/*
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total) AS total_sales
FROM orders
WHERE status IN ('shipped', 'delivered')
GROUP BY month
ORDER BY month;
*/
-- 2. Number of orders per user
/*
SELECT
    u.username,
    COUNT(o.order_id) AS orders_count
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY orders_count DESC;
*/
-- 3. Most popular products (by quantity sold)
/*
SELECT
    p.name AS product,
    SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_quantity_sold DESC
LIMIT 10;
*/
-- 4. Best customers (by total order value)
/*
SELECT
    u.username,
    SUM(o.total) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
WHERE o.status IN ('shipped', 'delivered')
GROUP BY u.user_id
ORDER BY total_spent DESC
LIMIT 10;*/
-- 6. Sales by product category
/*
SELECT
    c.name AS category,
    SUM(oi.quantity * oi.price) AS category_sales
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status IN ('shipped', 'delivered')
GROUP BY c.category_id
ORDER BY category_sales DESC;
*/
-- 7. Products with low stock (less than 20 remaining)
/*
SELECT
    name,
    stock
FROM products
WHERE stock < 20
ORDER BY stock ASC;
*/
-- 8. Average product rating
/*
SELECT
    p.name,
    AVG(r.rating) AS avg_rating,
    COUNT(r.review_id) AS review_count
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_id
ORDER BY avg_rating DESC;*/
-- 9. Number of reviews per product
/*
SELECT
    p.name,
    COUNT(r.review_id) AS review_count
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_id
ORDER BY review_count DESC;
*/
-- 10. Orders by status
/*
SELECT
    status,
    COUNT(order_id) AS orders_count
FROM orders
GROUP BY status;
*/



