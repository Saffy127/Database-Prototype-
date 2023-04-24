-- Report 1: Products and their categories
SPOOL Report1Output.txt
COLUMN product_name FORMAT A20
COLUMN category_name FORMAT A20
TTITLE 'Products and their Categories'
BTITLE 'End of Report'

SELECT P.product_name, C.category_name
FROM Product P
JOIN Category C ON P.category_id = C.category_id
ORDER BY C.category_name, P.product_name;
