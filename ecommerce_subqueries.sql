-- 11. Categories with more than 10 products
/*
SELECT name, category_id
FROM categories
WHERE category_id IN (
    SELECT category_id
    FROM products
    GROUP BY category_id
    HAVING COUNT(product_id) > 10
);
*/
-- 12. Most expensive product in each category
/*
SELECT name, category_id, price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products AS p2
    WHERE p2.category_id = products.category_id
);