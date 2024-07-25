{%macro no_nulls_in_column(model)%}
Select * from {{model}} where 
{%for col in adapter.get_columns_in_relation(model) -%}
{{col.column}} is null or 
{%endfor%}
false
{%endmacro%}