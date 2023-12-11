{% macro dollar_to_euro (colm,deci) %}
round({{colm}} * 0.93,{{deci}})
{% endmacro %}

{% macro dollar_to_inr (colm,deci) %}
round({{colm}} * 0.83,{{deci}})
{% endmacro %}
