--Selects all records
SELECT * FROM Customers;

--Selects distinct values(only different values)

SELECT DISTINCT CustomerName FROM Customers;

--Count distinct [return count of distinct values)
SELECT COUNT(DISTINCT CustomerName) FROM Customers;

--MS ACCESS DATABASES

SELECT COUNT(*) AS DistinctCountries FROM(SELECT DISTINCT Country FROM Customers);
