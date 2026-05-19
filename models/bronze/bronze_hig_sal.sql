{{config(materialized='incremental',unique_key = 'employee_id')}}



SELECT * FROM {{source('LND','hig_sal')}}
{%if is_incremental() %}
    where created_date > (select coalesce(max(created_date),'1900-01-01') from {{this}})
    {%endif%}