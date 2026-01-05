--qn 1
SELECT * from employees;
--qn 2
SELECT FIRST_NAME,LAST_NAME,JOB_ID,SALARY FROM employees;
--qn 3
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME FROM employees;
--qn 4
SELECT LOCATION_ID FROM departments;
--qn 5
SELECT SALARY + 300.00 AS UPDATED_SALARY
FROM employees;
--qn 6
SELECT SALARY from employees;
--qn 7
SELECT SUM(SALARY) from employees;
SELECT max(SALARY) from employees;
SELECT min(SALARY) from employees;
SELECT avg(SALARY) from employees;
--qn 8
SELECT COUNT(EMPLOYEE_ID) as Total FROM employees;

--qn 9

SELECT EMPLOYEE_ID, COMMISSION_PCT
FROM employees
WHERE COMMISSION_PCT IS NOT NULL
  AND COMMISSION_PCT <> 0;

--QN 10

SELECT DISTINCT SALARY 
FROM employees;

--QN 11

SELECT AVG(COMMISSION_PCT) 
FROM employees;

--QN 12

SELECT DEPARTMENT_ID,DEPARTMENT_NAME
FROM departments;

--QN 13

SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;

--QN 14

SELECT DISTINCT region_id
FROM countries;

--QN 15

SELECT region_id,COUNTRY_NAME
FROM countries;

--QN 16
SELECT 
    d.department_name,
    c.country_name
FROM departments d
JOIN locations l
ON d.location_id = l.location_id
JOIN countries c
ON l.country_id = c.country_id;



