-- Main fact view

CREATE VIEW Book_store AS
SELECT o.order_id, b.book_id, o.customer_id, b.title AS book_title, b.author, b.genre, b.published_year,
	b.price, c.name AS customer_name, c.city, c.country, o.order_date, o.quantity, o.total_amount
FROM orders o JOIN books b
ON o.book_id = b.book_id
JOIN customers c
ON o.customer_id = c.customer_id;


-- Monthly revenue view

CREATE VIEW monthly_sales AS
SELECT DATE_TRUNC('month', order_date) AS month,
	SUM(total_amount) AS monthly_revenue
FROM Book_store
GROUP BY 1
ORDER BY 1;
