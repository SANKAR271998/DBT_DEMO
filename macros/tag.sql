{% macro tag(col) %}
CASE
    WHEN {{ col }} < 60000 THEN 'Low'
    WHEN {{ col }} BETWEEN 60000 AND 80000 THEN 'Medium'
    ELSE 'High'
END
{% endmacro %}