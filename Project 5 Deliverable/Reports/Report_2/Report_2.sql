-- Top 3 Highest-Rated Products

COLUMN product_name FORMAT A20
COLUMN avg_rating FORMAT 999.99
TTITLE 'Top 3 Highest-Rated Products'
BTITLE 'End of Report'

SELECT P.product_name, AVG(R.rating) AS avg_rating
FROM Product P
JOIN Review R ON P.product_id = R.product_id
GROUP BY P.product_name
ORDER BY avg_rating DESC
FETCH FIRST 3 ROWS ONLY;
