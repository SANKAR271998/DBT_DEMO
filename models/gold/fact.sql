{% set congigs = [  
    {
        "table" : "SANKAR_DB.gold.obt",
        "columns" : "gold_obt.employee_id,gold_obt.annual_salary,gold_obt.new_salary",
        "alias" : "gold_obt"
    },
    {
        "table" : "SANKAR_DB.gold.dim_emp_details",
        "columns" : "",
        "alias" : "dim_emp_details",
        "join_condition" : "gold_obt.employee_id = dim_emp_details.employee_id"
    },
    {
        "table" : "SANKAR_DB.gold.dim_employee_detail",
        "columns" : "",
        "alias" : "dim_employee_detail",
        "join_condition" : "gold_obt.employee_id = dim_employee_detail.employee_id"
    }
]%}


SELECT 
   {{ congigs[0]['columns'] }}
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


