-- DBMS Assignment 4
-- Aggregate Functions and GROUP BY
-- Outputs below are sample outputs using an Indian-name HR dataset.

USE hr;

-- Q1
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+
-- | number_of_jobs |
-- +----------------+
-- | 4              |
-- +----------------+

-- Q2
SELECT SUM(salary) AS total_salary
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +--------------+
-- | total_salary |
-- +--------------+
-- | 177900.00    |
-- +--------------+

-- Q3
SELECT MIN(salary) AS minimum_salary
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+
-- | minimum_salary |
-- +----------------+
-- | 6500.00        |
-- +----------------+

-- Q4
SELECT MAX(salary) AS maximum_programmer_salary
FROM employees
WHERE job_id = 'IT_PROG';

-- OUTPUT (sample Indian-name HR data)
-- +---------------------------+
-- | maximum_programmer_salary |
-- +---------------------------+
-- | 17500.00                  |
-- +---------------------------+

-- Q5
SELECT AVG(salary) AS average_salary,
       COUNT(*) AS employee_count
FROM employees
WHERE department_id = 90;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+----------------+
-- | average_salary | employee_count |
-- +----------------+----------------+
-- | 11966.67       | 12             |
-- +----------------+----------------+

-- Q6
SELECT MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+---------------+--------------+----------------+
-- | highest_salary | lowest_salary | total_salary | average_salary |
-- +----------------+---------------+--------------+----------------+
-- | 17500.00       | 6500.00       | 177900.00    | 11860.00       |
-- +----------------+---------------+--------------+----------------+

-- Q7
SELECT job_id, COUNT(*) AS employee_count
FROM employees
GROUP BY job_id;

-- OUTPUT (sample Indian-name HR data)
-- +----------+----------------+
-- | job_id   | employee_count |
-- +----------+----------------+
-- | IT_PROG  | 5              |
-- | SH_CLERK | 4              |
-- | SA_REP   | 4              |
-- | AD_ASST  | 2              |
-- +----------+----------------+

-- Q8
SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +-------------------+
-- | salary_difference |
-- +-------------------+
-- | 11000.00          |
-- +-------------------+

-- Q9
SELECT manager_id, MIN(salary) AS lowest_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- OUTPUT (sample Indian-name HR data)
-- +------------+---------------+
-- | manager_id | lowest_salary |
-- +------------+---------------+
-- | 201        | 6500.00       |
-- | 205        | 8500.00       |
-- | 206        | 16000.00      |
-- +------------+---------------+

-- Q10
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- OUTPUT (sample Indian-name HR data)
-- +---------------+--------------+
-- | department_id | total_salary |
-- +---------------+--------------+
-- | 30            | 18300.00     |
-- | 90            | 143600.00    |
-- | 100           | 16000.00     |
-- +---------------+--------------+

-- Q11
SELECT job_id, AVG(salary) AS average_salary
FROM employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id;

-- OUTPUT (sample Indian-name HR data)
-- +----------+----------------+
-- | job_id   | average_salary |
-- +----------+----------------+
-- | SH_CLERK | 9325.00        |
-- | SA_REP   | 13475.00       |
-- | AD_ASST  | 6750.00        |
-- +----------+----------------+

-- Q12
SELECT job_id,
       SUM(salary) AS total_salary,
       MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id;

-- OUTPUT (sample Indian-name HR data)
-- +----------+--------------+----------------+----------------+----------------+
-- | job_id   | total_salary | maximum_salary | minimum_salary | average_salary |
-- +----------+--------------+----------------+----------------+----------------+
-- | IT_PROG  | 73200.00     | 17500.00       | 12500.00       | 14640.00       |
-- | SH_CLERK | 19000.00     | 10200.00       | 8800.00        | 9500.00        |
-- | SA_REP   | 37900.00     | 14800.00       | 11200.00       | 12633.33       |
-- | AD_ASST  | 13500.00     | 7000.00        | 6500.00        | 6750.00        |
-- +----------+--------------+----------------+----------------+----------------+

-- Q13
SELECT job_id, MAX(salary) AS maximum_salary
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;

-- OUTPUT (sample Indian-name HR data)
-- +----------+----------------+
-- | job_id   | maximum_salary |
-- +----------+----------------+
-- | IT_PROG  | 17500.00       |
-- | SH_CLERK | 10200.00       |
-- | SA_REP   | 16000.00       |
-- | AD_ASST  | 7000.00        |
-- +----------+----------------+

-- Q14
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;

-- OUTPUT (sample Indian-name HR data)
-- +---------------+----------------+
-- | department_id | average_salary |
-- +---------------+----------------+
-- | 90            | 11966.67       |
-- +---------------+----------------+

