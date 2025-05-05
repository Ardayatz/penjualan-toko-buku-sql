create table books (
book_id serial primary key,
title VARCHAR(50),
author VARCHAR(50),
price int,
stock int
);

create table customers (
customer_id serial primary key,
name VARCHAR(50),
email VARCHAR(255),
phone VARCHAR
);

create table sales (
sale_id serial primary key,
customer_id int,
sale_date date
);

create table SaleDetails (
sale_id int,
book_id int,
quantity int,
PRIMARY KEY (sale_id, book_id),
FOREIGN KEY (sale_id) REFERENCES Sales(sale_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

