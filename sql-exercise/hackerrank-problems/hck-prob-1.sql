--basic-select-query
SELECT * FROM City where Population>100000 AND CountryCode='USA';

SELECT Name from City WHERE Population>120000 AND CountryCode='USA';

SELECT * FROM City where ID=1661;

SELECT Name from City where CountryCode='JPN';

SELECT DISTINCT City from Station where MOD(ID,2)=0;

SELECT COUNT(CITY)-COUNT(DISTINCT CITY) FROM Station;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY), CITY --aggregate function like count cannnot be used in where clause directly
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;

--Mysql supports regexp
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou]';  

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('A','E','I','O','U','a','e','i','o','u');

