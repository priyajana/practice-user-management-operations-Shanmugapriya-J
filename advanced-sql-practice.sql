-- INSERTING INTO THE ORDERS TABLE --
insert into orders (id, customer_id, order_date, total_amount) values
(6, null, '2023-04-01', 100.00);

-- USING AGGREGATING KEYWORDS --
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;


SELECT customer_id, order_date, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id,order_date;

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE total_amount > 200
GROUP BY customer_id;

-- USING HAVING CLAUSE TO SPECIFY CONDITION WHEN GROUPING -- 
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 200;

-- PERFORMING INNER JOIN ---
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

-- LEFT JOIN --
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id;

SELECT id, order_date, total_amount
FROM orders
WHERE total_amount >= (SELECT AVG(total_amount) FROM orders); 

-- SUB QUERIES -- 
SELECT id, order_date, total_amount, customer_id
FROM orders
WHERE customer_id IN (SELECT id FROM customers WHERE last_name = 'Smith');

SELECT order_date
FROM (SELECT id, order_date, total_amount FROM orders) AS order_summary;