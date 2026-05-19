{% set flag = 2 %}

SELECT * FROM {{source('LND','emp')}}
{%
    if flag == 1
%}
    where annual_salary >80000
{%else%}
    where annual_salary<80000
{%endif%}