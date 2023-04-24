-- Populate Category
INSERT INTO Category VALUES (1, 'Electronics', NULL);
INSERT INTO Category VALUES (2, 'Computers', 1);
INSERT INTO Category VALUES (3, 'Smartphones', 1);
INSERT INTO Category VALUES (4, 'Home Appliances', NULL);
INSERT INTO Category VALUES (5, 'Kitchen Appliances', 4);
INSERT INTO Category VALUES (6, 'Gaming', NULL);
INSERT INTO Category VALUES (7, 'Audio', NULL);

-- Populate Supplier
INSERT INTO Supplier VALUES (1, 'TechMart');
INSERT INTO Supplier VALUES (2, 'HomeBase');
INSERT INTO Supplier VALUES (3, 'GizmoHub');

-- Populate Product
INSERT INTO Product VALUES (1, 'Laptop', 2, 1);
INSERT INTO Product VALUES (2, 'Smartphone', 3, 1);
INSERT INTO Product VALUES (3, 'Tablet', 2, 1);
INSERT INTO Product VALUES (4, 'Refrigerator', 5, 2);
INSERT INTO Product VALUES (5, 'Microwave Oven', 5, 2);
INSERT INTO Product VALUES (6, 'Gaming Console', 6, 3);
INSERT INTO Product VALUES (7, 'Wireless Earbuds', 7, 3);
INSERT INTO Product VALUES (8, 'Headphones', 7, 3);
INSERT INTO Product VALUES (9, 'Smart TV', 1, 2);

-- Populate Customer
INSERT INTO Customer VALUES (1, 'Alice Smith');
INSERT INTO Customer VALUES (2, 'Bob Johnson');
INSERT INTO Customer VALUES (3, 'Charlie Brown');
INSERT INTO Customer VALUES (4, 'Diana Murphy');
INSERT INTO Customer VALUES (5, 'Eva Thompson');

-- Populate Orders
INSERT INTO "Order" VALUES (1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO "Order" VALUES (2, 2, TO_DATE('2023-02-10', 'YYYY-MM-DD'));
INSERT INTO "Order" VALUES (3, 3, TO_DATE('2023-03-05', 'YYYY-MM-DD'));
INSERT INTO "Order" VALUES (4, 1, TO_DATE('2023-03-20', 'YYYY-MM-DD'));
INSERT INTO "Order" VALUES (5, 4, TO_DATE('2023-04-01', 'YYYY-MM-DD'));
INSERT INTO "Order" VALUES (6, 2, TO_DATE('2023-04-10', 'YYYY-MM-DD'));
INSERT INTO "Order" VALUES (7, 5, TO_DATE('2023-04-15', 'YYYY-MM-DD'));

-- Populate Order_Item
INSERT INTO Order_Item VALUES (1, 1, 1);
INSERT INTO Order_Item VALUES (1, 2, 1);
INSERT INTO Order_Item VALUES (2, 3, 1);
INSERT INTO Order_Item VALUES (3, 5, 1);
INSERT INTO Order_Item VALUES (4, 6, 1);
INSERT INTO Order_Item VALUES (5, 7, 1);
INSERT INTO Order_Item VALUES (6, 4, 1);
INSERT INTO Order_Item VALUES (7, 8, 2);
INSERT INTO Order_Item VALUES (7, 9, 1);

-- Populate Review
INSERT INTO Review VALUES (1, 1, 1, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 5);
INSERT INTO Review VALUES (2, 2, 1, TO_DATE('2023-01-25', 'YYYY-MM-DD'), 
INSERT INTO Review VALUES (3, 3, 1, TO_DATE('2023-01-30', 'YYYY-MM-DD'), 5);
INSERT INTO Review VALUES (4, 1, 2, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 4);
INSERT INTO Review VALUES (5, 2, 2, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 3);
INSERT INTO Review VALUES (6, 3, 3, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 5);
INSERT INTO Review VALUES (7, 1, 4, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 4);
INSERT INTO Review VALUES (8, 2, 5, TO_DATE('2023-02-25', 'YYYY-MM-DD'), 5);
INSERT INTO Review VALUES (9, 3, 6, TO_DATE('2023-03-02', 'YYYY-MM-DD'), 4);
INSERT INTO Review VALUES (10, 1, 7, TO_DATE('2023-03-07', 'YYYY-MM-DD'), 5);
INSERT INTO Review VALUES (11, 1, 8, TO_DATE('2023-03-12', 'YYYY-MM-DD'), 4);
INSERT INTO Review VALUES (12, 2, 9, TO_DATE('2023-03-17', 'YYYY-MM-DD'), 5);

