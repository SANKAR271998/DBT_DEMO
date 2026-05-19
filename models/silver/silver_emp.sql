{{ config(
    materialized='incremental',
    unique_key='employee_id'
) }}

SELECT
    employee_id,
    first_name,
    last_name,
    annual_salary,
    {{ multiply('annual_salary', '1.10', 2) }} + 1000 AS new_salary,
    record_created_at,
    hire_date
FROM 
    {{ ref('bronze_emp') }}