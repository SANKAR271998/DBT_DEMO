{{config(materialized='incremental',unique_key='employee_id')}}

SELECT employee_id,
        first_name ||' '|| last_name AS name,
        department,
        gender,
        salary,
        {{tag('salary')}} AS salary_category
FROM {{ref('bronze_employee')}}