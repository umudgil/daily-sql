SELECT p.product_name, SUM(o.unit) as unit
FROM ORDERS o
LEFT JOIN Products p
    ON o.product_id = p.product_id
WHERE order_date LIKE '2020-02-%'
GROUP BY o.product_id
HAVING SUM(unit) >= 100;
