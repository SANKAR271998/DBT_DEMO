{{
    config(
        materialized = 'table'
    )
}}

select * from employee
where salary > 60000