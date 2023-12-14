{{ 'This is demo session for jinja' }}
{% set name ='Pooja' -%}
{% set city ='Bangalore' -%}
{# Introduction of Candidate #}
Candidate name is {{ name }} from {{ city }}
{{name + " "}}{{city}}

{% set subject = 'dbt' %}
I do training on {{subject}}
{% set tools = ['dbt','Snowflake','Databricks','BigQuery','Redshift'] %}
Currently we are working with {{ tools[0] }} and {{ tools[1] }}


{% set tools = ['dbt','Snowflake','Databricks','BigQuery','Redshift'] %}

{% for tool in tools -%}
I do training on {{ tool }} 
{%- if tool == 'Redshift' %}
"That's it"
{% else %}
and
{% endif -%}
{% endfor %}


{% set tools_list = [] %}
{% for tool in tools  -%}
This is tool number {{ loop.index0 + 1}}:  {{ tool }}
{{ tools_list.append(tool) or "" }}
{%- endfor %}
