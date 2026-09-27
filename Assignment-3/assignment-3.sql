-- DBMS Assignment 3
-- MySQL WHERE, IN, BETWEEN and LIKE Queries
-- Outputs below are sample outputs using an Indian-name HR dataset.

USE hr;

-- Q1
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+----------+
-- | first_name | last_name | salary   |
-- +------------+-----------+----------+
-- | Rohan      | Mehta     | 8500.00  |
-- | Ananya     | Shenoy    | 9800.00  |
-- | Vivek      | Gupta     | 16000.00 |
-- | Kabir      | Joshi     | 7000.00  |
-- | Neha       | Chopra    | 17500.00 |
-- | Abhichand  | Iyer      | 8800.00  |
-- | Sneha      | Reddy     | 15500.00 |
-- | Karan      | Kohli     | 6500.00  |
-- +------------+-----------+----------+

-- Q2
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+---------------+
-- | first_name | last_name | department_id |
-- +------------+-----------+---------------+
-- | Rohan      | Mehta     | 30            |
-- | Ananya     | Shenoy    | 30            |
-- | Vivek      | Gupta     | 100           |
-- +------------+-----------+---------------+

-- Q3
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000
  AND department_id IN (30, 100);

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+----------+
-- | first_name | last_name | salary   |
-- +------------+-----------+----------+
-- | Rohan      | Mehta     | 8500.00  |
-- | Ananya     | Shenoy    | 9800.00  |
-- | Vivek      | Gupta     | 16000.00 |
-- +------------+-----------+----------+

-- Q4
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1987;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+------------+
-- | first_name | last_name | hire_date  |
-- +------------+-----------+------------+
-- | Diya       | Patel     | 1987-06-15 |
-- | Ananya     | Shenoy    | 1987-08-12 |
-- | Meera      | Shetty    | 1987-11-05 |
-- | Abhichand  | Iyer      | 1987-02-14 |
-- +------------+-----------+------------+

-- Q5
SELECT first_name
FROM employees
WHERE LOWER(first_name) LIKE '%b%'
  AND LOWER(first_name) LIKE '%c%';

-- OUTPUT (sample Indian-name HR data)
-- +------------+
-- | first_name |
-- +------------+
-- | Abhichand  |
-- +------------+

-- Q6
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
  AND salary NOT IN (4500, 10000, 15000);

-- OUTPUT (sample Indian-name HR data)
-- +-----------+----------+----------+
-- | last_name | job_id   | salary   |
-- +-----------+----------+----------+
-- | Sharma    | IT_PROG  | 12500.00 |
-- | Patel     | IT_PROG  | 14500.00 |
-- | Mehta     | SH_CLERK | 8500.00  |
-- | Shenoy    | SH_CLERK | 9800.00  |
-- | Shetty    | IT_PROG  | 13200.00 |
-- | Nair      | SH_CLERK | 10200.00 |
-- | Chopra    | IT_PROG  | 17500.00 |
-- | Iyer      | SH_CLERK | 8800.00  |
-- | Reddy     | IT_PROG  | 15500.00 |
-- +-----------+----------+----------+

-- Q7
SELECT last_name
FROM employees
WHERE CHAR_LENGTH(last_name) = 6;

-- OUTPUT (sample Indian-name HR data)
-- +-----------+
-- | last_name |
-- +-----------+
-- | Sharma    |
-- | Shenoy    |
-- | Sharma    |
-- | Shetty    |
-- | Bansal    |
-- | Chopra    |
-- +-----------+

-- Q8
SELECT last_name
FROM employees
WHERE LOWER(last_name) LIKE '__e%';

-- OUTPUT (sample Indian-name HR data)
-- +-----------+
-- | last_name |
-- +-----------+
-- | Shenoy    |
-- | Shetty    |
-- | Iyer      |
-- +-----------+

-- Q9
SELECT DISTINCT job_id
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------+
-- | job_id   |
-- +----------+
-- | IT_PROG  |
-- | SH_CLERK |
-- | SA_REP   |
-- | AD_ASST  |
-- +----------+

-- Q10
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+----------+---------+
-- | first_name | last_name | salary   | PF      |
-- +------------+-----------+----------+---------+
-- | Aarav      | Sharma    | 12500.00 | 1875.00 |
-- | Diya       | Patel     | 14500.00 | 2175.00 |
-- | Rohan      | Mehta     | 8500.00  | 1275.00 |
-- | Ananya     | Shenoy    | 9800.00  | 1470.00 |
-- | Vivek      | Gupta     | 16000.00 | 2400.00 |
-- | Ishita     | Sharma    | 11200.00 | 1680.00 |
-- | Kabir      | Joshi     | 7000.00  | 1050.00 |
-- | Meera      | Shetty    | 13200.00 | 1980.00 |
-- | Arjun      | Nair      | 10200.00 | 1530.00 |
-- | Priya      | Bansal    | 14800.00 | 2220.00 |
-- | Neha       | Chopra    | 17500.00 | 2625.00 |
-- | Abhichand  | Iyer      | 8800.00  | 1320.00 |
-- | Rahul      | Verma     | 11900.00 | 1785.00 |
-- | Sneha      | Reddy     | 15500.00 | 2325.00 |
-- | Karan      | Kohli     | 6500.00  | 975.00  |
-- +------------+-----------+----------+---------+

-- Q11
SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');

-- OUTPUT (sample Indian-name HR data)
-- Empty set (0 rows) — none of the sample Indian last names match the specified values.

