--Table creation in Postgres sql
--Create a library_db contains author,publisher and book tables
-- AUTHOR TABLE
CREATE TABLE author (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(100)
);

INSERT INTO author (name, contact)
VALUES 
('Kalki', 'kalki@gmail.com'),
('Matt Haig', 'matt@gmail.com');


-- PUBLISHER TABLE
CREATE TABLE publisher (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO publisher (name, location)
VALUES
('Anandham Publications', 'Chennai'),
('Muruga Publications', 'Pazhani');


-- BOOK TABLE
CREATE TABLE book (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(200),

    author BIGINT,
    publisher BIGINT,

    CONSTRAINT fk_author
        FOREIGN KEY (author)
        REFERENCES author(id),

    CONSTRAINT fk_publisher
        FOREIGN KEY (publisher)
        REFERENCES publisher(id)
);

--To retrieve
SELECT * FROM book;

--To update
UPDATE author
SET name = 'Iniya',
    contact = 'iniya@gmail.com'
WHERE id = 1;


