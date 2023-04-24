-- Test query
SELECT P.product_name, COUNT(oi.product_id) AS total_sales
FROM Product P
JOIN Order_Item oi ON P.product_id = oi.product_id
GROUP BY P.product_name
ORDER BY total_sales DESC;

-- Expected result: The result should display each product's name along with the total number of orders for that product, sorted by the total_sales in descending order.
