-- Report 3: Supplier Report
SET LINESIZE 80
SET PAGESIZE 10
COLUMN supplier_name FORMAT A20
COLUMN product_count FORMAT 999
TTITLE 'Supplier Report'
BTITLE 'End of Report'

SELECT S.supplier_name, COUNT(P.product_id) AS product_count
FROM Supplier S
JOIN Product P ON S.supplier_id = P.supplier_id
GROUP BY S.supplier_name
ORDER BY S.supplier_name;
