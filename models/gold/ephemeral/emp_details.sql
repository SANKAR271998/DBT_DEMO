{{ 
    config(
        materialized = 'ephemeral'
        )
}}

WITH emp_details AS 
(
    SELECT 
        employee_id,
        record_created_at,
        salary_category
    FROM
        {{ ref('obt') }}
)
SELECT * FROM emp_details