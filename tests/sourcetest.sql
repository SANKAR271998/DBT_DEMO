{{
    config(
        severity = 'warn')}}

SELECT 1
FROM 
 {{ source('LND','employee') }}
WHERE employee_id <1000