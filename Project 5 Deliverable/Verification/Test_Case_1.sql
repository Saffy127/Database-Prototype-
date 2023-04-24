-- Test data
INSERT INTO Product (product_id, product_name, category_id, supplier_id) VALUES (100, 'Test Product', 1, 1);

-- Test query
SELECT * FROM Product WHERE product_id = 100;

-- Expected result: A single row containing the test product's data should be returned.
