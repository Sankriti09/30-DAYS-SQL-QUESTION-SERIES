-- Table Script - 

CREATE TABLE sales (
 `customer_id` VARCHAR(1),
 `order_date` DATE,
 `product_id` INTEGER
);
INSERT INTO sales VALUES
 ('A', '2021-01-01', '1'),
 ('A', '2021-01-01', '2'),
 ('A', '2021-01-07', '2'),
 ('A', '2021-01-10', '3'),
 ('A', '2021-01-11', '3'),
 ('A', '2021-01-11', '3'),
 ('B', '2021-01-01', '2'),
 ('B', '2021-01-02', '2'),
 ('B', '2021-01-04', '1'),
 ('B', '2021-01-11', '1'),
 ('B', '2021-01-16', '3'),
 ('B', '2021-02-01', '3'),
 ('C', '2021-01-01', '3'),
 ('C', '2021-01-01', '3'),
 ('C', '2021-01-07', '3');
 
CREATE TABLE menu (
 `product_id` INTEGER,
 `product_name` VARCHAR(5),
 `price` INTEGER
);
INSERT INTO menu
VALUES
 ('1', 'sushi', '10'),
 ('2', 'curry', '15'),
 ('3', 'ramen', '12');
