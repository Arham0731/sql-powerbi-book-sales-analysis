-- Advance Analysis : 

-- 1) Retrieve the total number of books sold for each genre:   $$$

SELECT b.genre, sum(o.quantity) AS total_books_sold
FROM books b JOIN orders o
ON b.book_id = o.book_id
GROUP BY genre
ORDER BY total_books_sold DESC;


-- 2) Find the average price of books in the "Fantasy" genre:  $

SELECT AVG(price) AS avg_price_fantasy
FROM books 
WHERE genre = 'Fantasy';



-- 3) List customers who have placed at least 2 orders:   $$$$$

SELECT * FROM customers;
SELECT * FROM orders;


SELECT c.customer_id, c.name, COUNT(o.order_id) AS order_count
FROM customers c JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(order_id) >=2;                -- Correct result 



SELECT customer_id, order_id 
FROM orders 
WHERE customer_id=84;                      -- Shows that some customers ordered more than 1 time




SELECT c.customer_id, c.name, c.email, c.phone, c.city, c.country, o.quantity 
FROM customers c JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.quantity>2;             -- Show customers who ordered more than 2 quantity of a book


-- 4) Most frequently ordered book:    $$$$

SELECT * FROM books;
SELECT * FROM orders;


SELECT b.book_id, b.title, COUNT(o.order_id) AS order_count
FROM orders o JOIN books b
ON b.book_id = o.book_id
GROUP BY b.book_id, b.title
ORDER BY order_count DESC;


SELECT b.book_id, b.title, COUNT(o.order_id) AS order_count
FROM orders o JOIN books b
ON b.book_id = o.book_id
GROUP BY b.book_id, b.title
HAVING COUNT(order_id) =4; 



-- 5) Top 3 most expensive books of 'Fantasy' Genre :

SELECT title, price 
FROM books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT 3;



-- 6) Retrieve the total quantity of books sold by each author:   $$$$

SELECT b.author, SUM(o.quantity) AS total_quantity
FROM books b JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.author
ORDER BY total_quantity DESC;



-- 7) List the cities where customers who spent over $30 are located:

SELECT * FROM customers;
SELECT * FROM orders;


SELECT DISTINCT c.city, o.total_amount
FROM customers c JOIN orders o
ON c.customer_id = o.customer_id
WHERE total_amount > 30;


-- 8) Find the customer who spent the most on orders:  $$$$$

SELECT c.customer_id, c.name, SUM(o.total_amount) AS most_spent
FROM customers c JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY most_spent DESC LIMIT 1;



--9) Calculate the stock remaining after fulfilling all orders:  $$ MOST DIFFICULT $$ 

SELECT * FROM books;
SELECT * FROM orders;


SELECT b.book_id, b.title, b.stock, COALESCE (SUM(o.quantity),0) AS total_order_qty,
		b.stock - COALESCE (SUM(o.quantity),0) AS Rem_stock
FROM books b LEFT JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.book_id
ORDER BY b.book_id;
