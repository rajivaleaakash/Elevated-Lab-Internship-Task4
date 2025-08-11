
-- 13. View: Total sales per month
/*
CREATE OR REPLACE VIEW monthly_sales AS
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total) AS total_sales,
    COUNT(order_id) AS orders_count
FROM orders
WHERE status IN ('shipped', 'delivered')
GROUP BY month;
SELECT * FROM monthly_sales;
*/
-- 14. View: Product stock and order summary
/*
CREATE OR REPLACE VIEW product_stock_summary AS
SELECT
    p.product_id,
    p.name,
    p.stock,
    IFNULL(SUM(oi.quantity), 0) AS total_sold
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_sold DESC;
SELECT * FROM product_stock_summary
*/