-- 1. Create the structured table matching your Snowflake definition
CREATE OR REPLACE TABLE EMPLOYEE_DATA (
    EMPLOYEE_ID        NUMBER(10,0)     NOT NULL PRIMARY KEY,
    FIRST_NAME         VARCHAR(50)      NOT NULL,
    LAST_NAME          VARCHAR(50)      NOT NULL,
    EMAIL              VARCHAR(100)     NOT NULL UNIQUE,
    PHONE_NUMBER       VARCHAR(20),
    HIRE_DATE          DATE,
    JOB_TITLE          VARCHAR(100),
    DEPARTMENT         VARCHAR(50),
    SALARY             NUMBER(10,2),
    MANAGER_ID         VARCHAR(50),
    LOCATION_CITY      VARCHAR(50),
    EMPLOYMENT_STATUS  VARCHAR(20)      DEFAULT 'Active',
    GENDER             VARCHAR(20),
    DOB                DATE,
    CREATED_DATE       TIMESTAMP_NTZ
);

-- 2. Insert rows using standard YYYY-MM-DD date values
INSERT INTO EMPLOYEE_DATA (
    EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, 
    HIRE_DATE, JOB_TITLE, DEPARTMENT, SALARY, MANAGER_ID, 
    LOCATION_CITY, EMPLOYMENT_STATUS, GENDER, DOB, CREATED_DATE
) VALUES
(1001, 'Arjun', 'Sharma', 'arjun.sharma@company.com', '9876543210', '2019-03-15', 'Data Analyst', 'Analytics', 75000, NULL, 'Chennai', 'Active', 'Male', '1992-07-10', '2024-01-01 09:00:00'),
(1002, 'Priya', 'Nair', 'priya.nair@company.com', '9845612378', '2020-06-01', 'BI Developer', 'Analytics', 82000, '1001', 'Bangalore', 'Active', 'Female', '1994-02-20', '2024-01-01 09:00:00'),
(1003, 'Rahul', 'Verma', 'rahul.verma@company.com', '9012345678', '2018-11-20', 'Data Engineer', 'Data Ops', 90000, NULL, 'Hyderabad', 'Active', 'Male', '1990-05-15', '2024-01-01 09:00:00'),
(1004, 'Sneha', 'Iyer', 'sneha.iyer@company.com', '9123456789', '2021-01-10', 'HR Analyst', 'HR', 60000, NULL, 'Chennai', 'Active', 'Female', '1996-09-03', '2024-01-01 09:00:00'),
(1005, 'Karthik', 'Rajan', 'karthik.rajan@company.com', '9234567890', '2017-08-05', 'Senior DBA', 'Data Ops', 110000, '1003', 'Chennai', 'Active', 'Male', '1988-12-25', '2024-01-01 09:00:00'),
(1006, 'Deepika', 'Menon', 'deepika.menon@company.com', '9345678901', '2022-03-22', 'Analytics Engineer', 'Analytics', 78000, '1001', 'Mumbai', 'Active', 'Female', '1997-04-18', '2024-01-01 09:00:00'),
(1007, 'Vikram', 'Singh', 'vikram.singh@company.com', '9456789012', '2016-07-14', 'Snowflake Architect', 'Cloud Infra', 130000, NULL, 'Pune', 'Active', 'Male', '1985-11-07', '2024-01-01 09:00:00'),
(1008, 'Ananya', 'Krishnan', 'ananya.krishnan@company.com', '9567890123', '2023-01-09', 'Junior Data Analyst', 'Analytics', 52000, '1001', 'Bangalore', 'Active', 'Female', '1999-05-30', '2024-01-01 09:00:00'),
(1009, 'Suresh', 'Babu', 'suresh.babu@company.com', '9678901234', '2015-05-30', 'IT Manager', 'IT', 120000, NULL, 'Chennai', 'Active', 'Male', '1983-05-22', '2024-01-01 09:00:00'),
(1010, 'Meera', 'Pillai', 'meera.pillai@company.com', '9789012345', '2020-09-18', 'Power BI Developer', 'Analytics', 80000, '1001', 'Hyderabad', 'Active', 'Female', '1993-08-14', '2024-01-01 09:00:00'),
(1011, 'Arun', 'Kumar', 'arun.kumar@company.com', '9890123456', '2019-12-03', 'SQL Developer', 'Data Ops', 72000, '1003', 'Chennai', 'Active', 'Male', '1991-01-29', '2024-01-01 09:00:00'),
(1012, 'Lakshmi', 'Sundaram', 'lakshmi.s@company.com', '9901234567', '2021-07-26', 'Finance Analyst', 'Finance', 68000, NULL, 'Bangalore', 'Active', 'Female', '1995-10-05', '2024-01-01 09:00:00'),
(1013, 'Naveen', 'Reddy', 'naveen.reddy@company.com', '9012378901', '2014-02-11', 'Cloud Engineer', 'Cloud Infra', 115000, '1007', 'Hyderabad', 'Inactive', 'Male', '1982-07-19', '2024-01-01 09:00:00'),
(1014, 'Pooja', 'Chatterjee', 'pooja.c@company.com', '9123478901', '2022-10-05', 'ETL Developer', 'Data Ops', 85000, '1003', 'Kolkata', 'Active', 'Female', '1998-03-08', '2024-01-01 09:00:00'),
(1015, 'Manoj', 'Tiwari', 'manoj.tiwari@company.com', '9234578901', '2018-04-17', 'Data Scientist', 'Analytics', 98000, '1001', 'Mumbai', 'Active', 'Male', '1989-12-12', '2024-01-01 09:00:00');
