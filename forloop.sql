{%set cols = ['employee_id','first_name','annual_salary']%}

SELECT 
{% for col in cols%}
{{ col }}
{% endfor %}
from {{ ref('bronze_emp')}}
