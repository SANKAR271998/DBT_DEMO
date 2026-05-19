{{config(materialized='incremental')}}

SELECT * FROM {{source('LND','employee')}}
{%if is_incremental() %}
    where created_date > (select coalesce(max(created_date),'1900-01-01') from {{this}})
    {%endif%}
