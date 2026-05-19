{% set congigs = [  
    {
        "table" : "SANKAR_DB.silver.silver_EMPLOYEE",
        "columns" : "silver_employee.employee_id,silver_employee.name,silver_employee.department,silver_employee.salary_category",
        "alias" : "silver_employee"
    },
    {
        "table" : "SANKAR_DB.silver.silver_EMP",
        "columns" : "silver_emp.annual_salary,silver_emp.record_created_at,silver_emp.new_salary,silver_emp.hire_date",
        "alias" : "silver_emp",
        "join_condition" : "silver_employee.employee_id = silver_emp.employee_id"
    }
]%}


SELECT 
    {% for config in congigs %}
         {{ config.columns }}{% if not loop.last %},{% endif %}
    {% endfor %}
FROM
    {% for config in congigs %}
    {% if loop.first %}
        {{ config['table'] }} AS {{ config ['alias'] }}
    {% else %}
    LEFT JOIN {{ config['table'] }} AS {{ config ['alias'] }}
    ON {{ config['join_condition'] }}
        {% endif %}
        {% endfor %}


        -- we can make the changes in the dictionary but never in the harcoded for loop here


