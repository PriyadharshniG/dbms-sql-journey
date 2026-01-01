CREATE database sales_db;

USE sales_db;

CREATE TABLE sales_staff (
    sales_staff_code INT PRIMARY KEY,
    sales_staff_name VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(50)
);

CREATE TABLE product (
    product_code INT PRIMARY KEY,
    product_name VARCHAR(50),
    unit_price DECIMAL(10,2)
);

CREATE TABLE customer (
    customer_code INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_address VARCHAR(100),
    phone_number VARCHAR(15),
    sales_staff_code INT,

    CONSTRAINT fk_sales_staff
        FOREIGN KEY (sales_staff_code)
        REFERENCES sales_staff(sales_staff_code)
);


CREATE TABLE sales (
    sales_number INT PRIMARY KEY,
    sales_date DATE,
    customer_code INT,

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_code)
        REFERENCES customer(customer_code)
);

CREATE TABLE sales_detail (
    sales_number INT,
    product_code INT,
    quantity INT,

    PRIMARY KEY (sales_number, product_code),

    CONSTRAINT fk_sales
        FOREIGN KEY (sales_number)
        REFERENCES sales(sales_number),

    CONSTRAINT fk_product
        FOREIGN KEY (product_code)
        REFERENCES product(product_code)
);


mysql> SHOW TABLES;
+--------------------+
| Tables_in_sales_db |
+--------------------+
| customer           |
| product            |
| sales              |
| sales_detail       |
| sales_staff        |
+--------------------+
5 rows in set (0.01 sec)


