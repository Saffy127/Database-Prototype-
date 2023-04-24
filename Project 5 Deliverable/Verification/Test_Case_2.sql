-- Test data
INSERT INTO "Order" (order_id, customer_id, order_date) VALUES (100, 9999, TO_DATE('2023-05-01', 'YYYY-MM-DD'));

-- Test query
SELECT * FROM "Order" WHERE order_id = 100;

-- Expected result: An error should be raised due to the foreign key constraint violation, and no row with order_id = 100 should be inserted into the "Order" table.
