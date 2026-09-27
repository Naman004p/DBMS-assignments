-- DBMS Assignment 3
-- MySQL WHERE, IN, BETWEEN and LIKE Queries

USE hr;

-- Q1
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

-- Q2
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC;

-- Q3
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000
  AND department_id IN (30, 100);

-- Q4
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1987;

-- Q5
SELECT first_name
FROM employees
WHERE LOWER(first_name) LIKE '%b%'
  AND LOWER(first_name) LIKE '%c%';

-- Q6
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
  AND salary NOT IN (4500, 10000, 15000);

-- Q7
SELECT last_name
FROM employees
WHERE CHAR_LENGTH(last_name) = 6;

-- Q8
SELECT last_name
FROM employees
WHERE LOWER(last_name) LIKE '__e%';

-- Q9
SELECT DISTINCT job_id
FROM employees;

-- Q10
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees;

-- Q11
SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
