



{% macro get_payment_type_description(payment_type) -%}

    case cast({{ payment_type}} as integer)
        when 1 then 'Credit card'
        when 2 then ' Cash'
        when 3 then 'No change'
        when 4 then 'Dispute'
        when 5 then 'Unkown'
        when 6 then 'Voided trip'
        else 'EMPTY'
    end
{%- endmacro %}