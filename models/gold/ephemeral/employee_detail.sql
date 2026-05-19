{{ 
    config(
        materialized = 'ephemeral'
        )
}}

WITH employee_details AS 
(
    SELECT 
        employee_id,
        name,
        department,
        hire_date
    FROM
        {{ ref('obt') }}
)
SELECT * FROM employee_details