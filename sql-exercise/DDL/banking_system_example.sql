CREATE database banking_db;

use banking_db;

create table Customers(customer_id INT AUTO_INCREMENT Primary key,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   email VARCHAR(100),
   phone VARCHAR(50),
   address VARCHAR(100),
   date_of_birth DATE,
   created_at TIMESTAMP DEFAULT Current_Timestamp);
--TIMESTAMP(Current_timestamp)-When a customer is added, MySQL automatically stores the current date and time

Create table Accounts(account_id INT AUTO_INCREMENT Primary key,
customer_id INT,
account_type VARCHAR(20),
balance DECIMAL(10,2),
opened_date DATE,
status VARCHAR(20),
CONSTRAINT fk_customerid 
FOREIGN KEY (customer_id) 
REFERENCES Customers(customer_id)
);

CREATE TABLE Transactions (
  transaction_id INT AUTO_INCREMENT PRIMARY KEY,
  account_id INT,
  amount DECIMAL(15,2),
  transaction_type VARCHAR(20),
  transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  description VARCHAR(255),

  CONSTRAINT fk_account
    FOREIGN KEY (account_id)
    REFERENCES Accounts(account_id)
);



CREATE TABLE Loans (
  loan_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  loan_amount DECIMAL(15,2),
  loan_type VARCHAR(50),
  interest_rate DECIMAL(5,2),
  loan_term_months INT,
  start_date DATE,
  due_date DATE,
  status VARCHAR(20),

  CONSTRAINT fk_loan_customer
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

mysql> show tables;
+----------------------+
| Tables_in_banking_db |
+----------------------+
| accounts             |
| customers            |
| loans                |
| transactions         |
+----------------------+
4 rows in set (0.10 sec)

