{{config(materialized='incremental')}}

SELECT * FROM {{source('LND','emp')}}
{%if is_incremental() %}
    where record_created_at > (select coalesce(max(record_created_at),'1900-01-01') from {{this}})
    {%endif%}

