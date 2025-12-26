--Operators in where clause
--<,>,<=,>=,<>,LIKE,IN,BETWEEN

SELECT * FROM Products where ProductId>10;

--Between

SELECT * FROM Products where Price BETWEEN 10 AND 50;

--LIKE(Specific pattern based search)

SELECT * FROM Products where ProductName LIKE 'G%';

--G% -> Starts with G

--<> Not Equals
SELECT * FROM Products where ProductId<>10;

--IN (To specify multiple possible values)
SELECT *  FROM Products where ProductName IN ('Sony','Tata');

--And operator(dsiplays when both are true)

SELECT * FROM Products where Price=25000 AND ProductName='Sony';

--Or Operator(displays any of condn is true)

SELECT * FROM Products where Price=25000 OR ProductName='Sony';

--Combine AND and OR but use paranthesis,because of precedence

SELECT * FROM Products where Price=25000 AND (ProductName='Sony' OR ProductName='Panasonic');

--NOT OPERATOR(TO GIVE OPPOSITE RESULT)

SELECT * FROM Products where NOT Price=25000
SELECT * FROM Products where NOT IN ProductName('Sony','HP');
SELECT * FROM Products where NOT LIKE 'A%';


  ;





