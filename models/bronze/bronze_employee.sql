{% set incremental_flag =1%}
{% set incremental_col = 'record_created_at' %}

SELECT * FROM {{source('LND','employee')}}
{%if incremental_flag ==1 and is_incremental() %}
    where {{incremental_col}} > (select coalesce(max({{incremental_col}}),'1900-01-01') from {{this}})
    {%endif%}
