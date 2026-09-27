-- DBMS Assignment 2
-- MySQL SELECT Queries
-- Run these queries in the HR database containing the employees table.

USE hr;

-- Q1
SELECT first_name AS 'First Name', last_name AS 'Last Name'
FROM employees;

-- Q2
SELECT DISTINCT department_id
FROM employees;

-- Q3
SELECT *
FROM employees
ORDER BY first_name DESC;

-- Q4
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees;

-- Q5
SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary ASC;

-- Q6
SELECT SUM(salary) AS total_salary
FROM employees;

-- Q7
SELECT MAX(salary) AS maximum_salary, MIN(salary) AS minimum_salary
FROM employees;

-- Q8
SELECT AVG(salary) AS average_salary, COUNT(*) AS employee_count
FROM employees;

-- Q9
SELECT COUNT(*) AS number_of_employees
FROM employees;

-- Q10
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;

-- Q11
SELECT UPPER(first_name) AS first_name
FROM employees;

-- Q12
SELECT SUBSTRING(first_name, 1, 3) AS first_three_characters
FROM employees;

-- Q13
SELECT 171 * 214 + 625 AS result;

-- Q14
SELECT CONCAT(first_name, ' ', last_name) AS employee_name
FROM employees;

-- Q15
SELECT TRIM(first_name) AS first_name
FROM employees;

-- Q16
SELECT first_name, last_name,
       LENGTH(CONCAT(first_name, ' ', last_name)) AS name_length
FROM employees;

-- Q17
SELECT first_name
FROM employees
WHERE first_name REGEXP '[0-9]';

-- Q18
SELECT *
FROM employees
LIMIT 10;

-- Q19
SELECT first_name, last_name,
       ROUND(salary / 12, 2) AS monthly_salary
FROM employees;
