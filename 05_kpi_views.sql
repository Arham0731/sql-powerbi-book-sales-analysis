-- KPI View

DROP VIEW IF EXISTS kpi_core;
CREATE VIEW kpi_core AS
SELECT 
COUNT(DISTINCT order_id) AS total_orders, 
COUNT(DISTINCT customer_id) AS total_customers, 
SUM(total_amount) AS total_revenue, 
SUM(quantity) AS total_quantity_ordered
FROM Book_store
LIMIT 1;


DROP VIEW IF EXISTS kpi_most_exp_book;
CREATE VIEW kpi_most_exp_book AS
SELECT book_title, price
FROM Book_store 
ORDER BY price DESC
LIMIT 1;


DROP VIEW IF EXISTS kpi_cheapest_book;
CREATE VIEW kpi_cheapest_book AS
SELECT book_title, price
FROM Book_store
ORDER BY price ASC
LIMIT 1;

DROP VIEW IF EXISTS most_books_published;
CREATE VIEW most_books_published AS
SELECT published_year AS top_publish_year, COUNT(DISTINCT book_id) AS Books_published
FROM Book_store
GROUP BY published_year
ORDER BY COUNT(DISTINCT book_id) DESC
LIMIT 1;


DROP VIEW IF EXISTS highest_selling_year;
CREATE VIEW highest_selling_year AS
SELECT 
    EXTRACT(YEAR FROM order_date) AS top_selling_year,
    SUM(total_amount) AS sales
FROM Book_store
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY sales DESC
LIMIT 1;



-- ALL KPI's VIEW

DROP VIEW IF EXISTS all_kpi;
CREATE VIEW all_kpi AS
SELECT
    k.total_orders,
    k.total_customers,
    k.total_revenue,
    k.total_quantity_ordered,
    maxb.book_title  AS most_expensive_book,
    maxb.price      AS most_expensive_price,
    minb.book_title  AS cheapest_book,
    minb.price      AS cheapest_price,
	yp.top_publish_year,
	yp.Books_published,
	hs.top_selling_year,
	hs.sales
FROM kpi_core k
CROSS JOIN kpi_most_exp_book maxb
CROSS JOIN kpi_cheapest_book minb
CROSS JOIN most_books_published yp
CROSS JOIN highest_selling_year hs;

SELECT * FROM all_kpi;