CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
    email VARCHAR(40) UNIQUE
);

CREATE TABLE products(
	id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    description VARCHAR(100),
    price DECIMAL
);

CREATE TABLE orders(
	user_id INT,
    order_id INT,
    quantity INT,
);