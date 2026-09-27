-- DBMS Assignment 1
-- MySQL / Table Creation, Constraints and Foreign Keys
-- Each solution is followed by the expected MySQL execution output.

-- Q1
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT
);
-- OUTPUT: Query OK, 0 rows affected (table created successfully).

-- Q2
DROP TABLE IF EXISTS countries;
CREATE TABLE IF NOT EXISTS countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT
);
-- OUTPUT: Query OK, 0 rows affected (table created successfully).

-- Q3
DROP TABLE IF EXISTS dup_countries;
CREATE TABLE dup_countries LIKE countries;
-- OUTPUT: Query OK, 0 rows affected (duplicate table structure created).

-- Q4
DROP TABLE IF EXISTS dup_countries;
CREATE TABLE dup_countries AS SELECT * FROM countries;
-- OUTPUT: Query OK, 0 rows affected (duplicate table created with selected data).

-- Q5
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT NULL,
    country_name VARCHAR(50) NULL,
    region_id INT NULL
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q6
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(35),
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0),
    CONSTRAINT chk_max_salary CHECK (max_salary <= 25000)
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q7
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    CONSTRAINT chk_country_name CHECK (country_name IN ('Italy','India','China'))
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q8
DROP TABLE IF EXISTS job_histry;
CREATE TABLE job_histry (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    CONSTRAINT chk_end_date CHECK (end_date IS NULL OR DATE_FORMAT(end_date, '%d/%m/%Y') IS NOT NULL)
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q9
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT UNIQUE,
    country_name VARCHAR(50),
    region_id INT
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q10
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(35) DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q11
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q12
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q13
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    CONSTRAINT uq_country_region UNIQUE (country_id, region_id)
);
-- OUTPUT: Query OK, 0 rows affected.

-- Q14
DROP TABLE IF EXISTS job_history;
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0)
) ENGINE=InnoDB;
CREATE TABLE job_history (
    employee_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    CONSTRAINT fk_jh_job FOREIGN KEY (job_id) REFERENCES jobs(job_id)
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.

-- Q15
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    department_id DECIMAL(4,0) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    manager_id DECIMAL(6,0) NOT NULL,
    location_id DECIMAL(4,0),
    PRIMARY KEY (department_id, manager_id)
) ENGINE=InnoDB;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(8,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),
    CONSTRAINT fk_emp_dept_manager
        FOREIGN KEY (department_id, manager_id)
        REFERENCES departments(department_id, manager_id)
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.

-- Q16
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS jobs;
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    department_id DECIMAL(4,0) PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,
    manager_id DECIMAL(6,0),
    location_id DECIMAL(4,0)
) ENGINE=InnoDB;
CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0)
) ENGINE=InnoDB;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(8,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),
    CONSTRAINT fk_emp_department FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT fk_emp_job FOREIGN KEY (job_id) REFERENCES jobs(job_id)
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.

-- Q17
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),
    CONSTRAINT fk_emp_job_q17 FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.

-- Q18
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),
    CONSTRAINT fk_emp_job_q18 FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.

-- Q19
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT NULL,
    salary DECIMAL(8,2),
    CONSTRAINT fk_emp_job_q19 FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.

-- Q20
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs (
    job_id INT NOT NULL UNIQUE PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
) ENGINE=InnoDB;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),
    CONSTRAINT fk_emp_job_q20 FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
-- OUTPUT: Query OK, 0 rows affected for each CREATE TABLE statement.
