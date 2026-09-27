-- DBMS Assignment 2
-- MySQL SELECT Queries
-- Outputs below are sample outputs using an Indian-name HR dataset.

USE hr;

-- Q1
SELECT first_name AS 'First Name', last_name AS 'Last Name'
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+
-- | First Name | Last Name |
-- +------------+-----------+
-- | Aarav      | Sharma    |
-- | Abhichand  | Iyer      |
-- | Ananya     | Shenoy    |
-- | Arjun      | Nair      |
-- | Diya       | Patel     |
-- | Ishita     | Sharma    |
-- | Kabir      | Joshi     |
-- | Karan      | Kohli     |
-- | Meera      | Shetty    |
-- | Neha       | Chopra    |
-- | Priya      | Bansal    |
-- | Rahul      | Verma     |
-- | Rohan      | Mehta     |
-- | Sneha      | Reddy     |
-- | Vivek      | Gupta     |
-- +------------+-----------+

-- Q2
SELECT DISTINCT department_id
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +---------------+
-- | department_id |
-- +---------------+
-- | 30            |
-- | 90            |
-- | 100           |
-- +---------------+

-- Q3
SELECT *
FROM employees
ORDER BY first_name DESC;

-- OUTPUT (sample Indian-name HR data)
-- +-------------+------------+-----------+----------+----------+---------------+------------+------------+
-- | employee_id | first_name | last_name | job_id   | salary   | department_id | manager_id | hire_date  |
-- +-------------+------------+-----------+----------+----------+---------------+------------+------------+
-- | 105         | Vivek      | Gupta     | SA_REP   | 16000.00 | 100           | 206        | 2021-02-11 |
-- | 114         | Sneha      | Reddy     | IT_PROG  | 15500.00 | 90            | 201        | 2023-10-09 |
-- | 103         | Rohan      | Mehta     | SH_CLERK | 8500.00  | 30            | 205        | 2020-03-20 |
-- | 113         | Rahul      | Verma     | SA_REP   | 11900.00 | 90            | 201        | 2019-05-30 |
-- | 110         | Priya      | Bansal    | SA_REP   | 14800.00 | 90            | 201        | 2016-12-18 |
-- | 111         | Neha       | Chopra    | IT_PROG  | 17500.00 | 90            | 201        | 2020-01-25 |
-- | 108         | Meera      | Shetty    | IT_PROG  | 13200.00 | 90            | 201        | 1987-11-05 |
-- | 115         | Karan      | Kohli     | AD_ASST  | 6500.00  | 90            | 201        | 2024-01-15 |
-- | 107         | Kabir      | Joshi     | AD_ASST  | 7000.00  | 90            | 201        | 2018-09-19 |
-- | 106         | Ishita     | Sharma    | SA_REP   | 11200.00 | 90            | 201        | 2022-07-01 |
-- | 102         | Diya       | Patel     | IT_PROG  | 14500.00 | 90            | 201        | 1987-06-15 |
-- | 109         | Arjun      | Nair      | SH_CLERK | 10200.00 | 90            | 201        | 2017-04-23 |
-- | 104         | Ananya     | Shenoy    | SH_CLERK | 9800.00  | 30            | 205        | 1987-08-12 |
-- | 112         | Abhichand  | Iyer      | SH_CLERK | 8800.00  | 90            | 201        | 1987-02-14 |
-- | 101         | Aarav      | Sharma    | IT_PROG  | 12500.00 | 90            | 201        | 2019-01-10 |
-- +-------------+------------+-----------+----------+----------+---------------+------------+------------+

-- Q4
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

-- Q5
SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary ASC;

-- OUTPUT (sample Indian-name HR data)
-- +-------------+------------+-----------+----------+
-- | employee_id | first_name | last_name | salary   |
-- +-------------+------------+-----------+----------+
-- | 115         | Karan      | Kohli     | 6500.00  |
-- | 107         | Kabir      | Joshi     | 7000.00  |
-- | 103         | Rohan      | Mehta     | 8500.00  |
-- | 112         | Abhichand  | Iyer      | 8800.00  |
-- | 104         | Ananya     | Shenoy    | 9800.00  |
-- | 109         | Arjun      | Nair      | 10200.00 |
-- | 106         | Ishita     | Sharma    | 11200.00 |
-- | 113         | Rahul      | Verma     | 11900.00 |
-- | 101         | Aarav      | Sharma    | 12500.00 |
-- | 108         | Meera      | Shetty    | 13200.00 |
-- | 102         | Diya       | Patel     | 14500.00 |
-- | 110         | Priya      | Bansal    | 14800.00 |
-- | 114         | Sneha      | Reddy     | 15500.00 |
-- | 105         | Vivek      | Gupta     | 16000.00 |
-- | 111         | Neha       | Chopra    | 17500.00 |
-- +-------------+------------+-----------+----------+

-- Q6
SELECT SUM(salary) AS total_salary
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +--------------+
-- | total_salary |
-- +--------------+
-- | 177900.00    |
-- +--------------+

-- Q7
SELECT MAX(salary) AS maximum_salary, MIN(salary) AS minimum_salary
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+----------------+
-- | maximum_salary | minimum_salary |
-- +----------------+----------------+
-- | 17500.00       | 6500.00        |
-- +----------------+----------------+

-- Q8
SELECT AVG(salary) AS average_salary, COUNT(*) AS employee_count
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+----------------+
-- | average_salary | employee_count |
-- +----------------+----------------+
-- | 11860.00       | 15             |
-- +----------------+----------------+

-- Q9
SELECT COUNT(*) AS number_of_employees
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +---------------------+
-- | number_of_employees |
-- +---------------------+
-- | 15                  |
-- +---------------------+

-- Q10
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+
-- | number_of_jobs |
-- +----------------+
-- | 4              |
-- +----------------+

-- Q11
SELECT UPPER(first_name) AS first_name
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------+
-- | first_name |
-- +------------+
-- | AARAV      |
-- | DIYA       |
-- | ROHAN      |
-- | ANANYA     |
-- | VIVEK      |
-- | ISHITA     |
-- | KABIR      |
-- | MEERA      |
-- | ARJUN      |
-- | PRIYA      |
-- | NEHA       |
-- | ABHICHAND  |
-- | RAHUL      |
-- | SNEHA      |
-- | KARAN      |
-- +------------+

-- Q12
SELECT SUBSTRING(first_name, 1, 3) AS first_three_characters
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------------------+
-- | first_three_characters |
-- +------------------------+
-- | Aar                    |
-- | Diy                    |
-- | Roh                    |
-- | Ana                    |
-- | Viv                    |
-- | Ish                    |
-- | Kab                    |
-- | Mee                    |
-- | Arj                    |
-- | Pri                    |
-- | Neh                    |
-- | Abh                    |
-- | Rah                    |
-- | Sne                    |
-- | Kar                    |
-- +------------------------+

-- Q13
SELECT 171 * 214 + 625 AS result;

-- OUTPUT (sample Indian-name HR data)
-- +--------+
-- | result |
-- +--------+
-- | 37219  |
-- +--------+

-- Q14
SELECT CONCAT(first_name, ' ', last_name) AS employee_name
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +----------------+
-- | employee_name  |
-- +----------------+
-- | Aarav Sharma   |
-- | Diya Patel     |
-- | Rohan Mehta    |
-- | Ananya Shenoy  |
-- | Vivek Gupta    |
-- | Ishita Sharma  |
-- | Kabir Joshi    |
-- | Meera Shetty   |
-- | Arjun Nair     |
-- | Priya Bansal   |
-- | Neha Chopra    |
-- | Abhichand Iyer |
-- | Rahul Verma    |
-- | Sneha Reddy    |
-- | Karan Kohli    |
-- +----------------+

-- Q15
SELECT TRIM(first_name) AS first_name
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+
-- | first_name | last_name |
-- +------------+-----------+
-- | Aarav      | Sharma    |
-- | Abhichand  | Iyer      |
-- | Ananya     | Shenoy    |
-- | Arjun      | Nair      |
-- | Diya       | Patel     |
-- | Ishita     | Sharma    |
-- | Kabir      | Joshi     |
-- | Karan      | Kohli     |
-- | Meera      | Shetty    |
-- | Neha       | Chopra    |
-- | Priya      | Bansal    |
-- | Rahul      | Verma     |
-- | Rohan      | Mehta     |
-- | Sneha      | Reddy     |
-- | Vivek      | Gupta     |
-- +------------+-----------+

-- Q16
SELECT first_name, last_name,
       LENGTH(CONCAT(first_name, ' ', last_name)) AS name_length
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+-------------+
-- | first_name | last_name | name_length |
-- +------------+-----------+-------------+
-- | Aarav      | Sharma    | 12          |
-- | Diya       | Patel     | 10          |
-- | Rohan      | Mehta     | 11          |
-- | Ananya     | Shenoy    | 13          |
-- | Vivek      | Gupta     | 11          |
-- | Ishita     | Sharma    | 13          |
-- | Kabir      | Joshi     | 11          |
-- | Meera      | Shetty    | 12          |
-- | Arjun      | Nair      | 10          |
-- | Priya      | Bansal    | 12          |
-- | Neha       | Chopra    | 11          |
-- | Abhichand  | Iyer      | 14          |
-- | Rahul      | Verma     | 11          |
-- | Sneha      | Reddy     | 11          |
-- | Karan      | Kohli     | 11          |
-- +------------+-----------+-------------+

-- Q17
SELECT first_name
FROM employees
WHERE first_name REGEXP '[0-9]';

-- OUTPUT (sample Indian-name HR data)
-- Empty set (0 rows)

-- Q18
SELECT *
FROM employees
LIMIT 10;

-- OUTPUT (sample Indian-name HR data)
-- +-------------+------------+-----------+----------+----------+---------------+------------+------------+
-- | employee_id | first_name | last_name | job_id   | salary   | department_id | manager_id | hire_date  |
-- +-------------+------------+-----------+----------+----------+---------------+------------+------------+
-- | 101         | Aarav      | Sharma    | IT_PROG  | 12500.00 | 90            | 201        | 2019-01-10 |
-- | 102         | Diya       | Patel     | IT_PROG  | 14500.00 | 90            | 201        | 1987-06-15 |
-- | 103         | Rohan      | Mehta     | SH_CLERK | 8500.00  | 30            | 205        | 2020-03-20 |
-- | 104         | Ananya     | Shenoy    | SH_CLERK | 9800.00  | 30            | 205        | 1987-08-12 |
-- | 105         | Vivek      | Gupta     | SA_REP   | 16000.00 | 100           | 206        | 2021-02-11 |
-- | 106         | Ishita     | Sharma    | SA_REP   | 11200.00 | 90            | 201        | 2022-07-01 |
-- | 107         | Kabir      | Joshi     | AD_ASST  | 7000.00  | 90            | 201        | 2018-09-19 |
-- | 108         | Meera      | Shetty    | IT_PROG  | 13200.00 | 90            | 201        | 1987-11-05 |
-- | 109         | Arjun      | Nair      | SH_CLERK | 10200.00 | 90            | 201        | 2017-04-23 |
-- | 110         | Priya      | Bansal    | SA_REP   | 14800.00 | 90            | 201        | 2016-12-18 |
-- +-------------+------------+-----------+----------+----------+---------------+------------+------------+

-- Q19
SELECT first_name, last_name,
       ROUND(salary / 12, 2) AS monthly_salary
FROM employees;

-- OUTPUT (sample Indian-name HR data)
-- +------------+-----------+----------------+
-- | first_name | last_name | monthly_salary |
-- +------------+-----------+----------------+
-- | Aarav      | Sharma    | 1041.67        |
-- | Diya       | Patel     | 1208.33        |
-- | Rohan      | Mehta     | 708.33         |
-- | Ananya     | Shenoy    | 816.67         |
-- | Vivek      | Gupta     | 1333.33        |
-- | Ishita     | Sharma    | 933.33         |
-- | Kabir      | Joshi     | 583.33         |
-- | Meera      | Shetty    | 1100.00        |
-- | Arjun      | Nair      | 850.00         |
-- | Priya      | Bansal    | 1233.33        |
-- | Neha       | Chopra    | 1458.33        |
-- | Abhichand  | Iyer      | 733.33         |
-- | Rahul      | Verma     | 991.67         |
-- | Sneha      | Reddy     | 1291.67        |
-- | Karan      | Kohli     | 541.67         |
-- +------------+-----------+----------------+

