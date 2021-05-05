{# staging customers model #}

with source as (

    select * from {{ source('raw', 'raw_customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        first_name || ' ' || last_name as name,

    from source

)

select * from renamed