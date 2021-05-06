
with source as (

    select * from {{ source('raw', 'raw_payments') }}

),

renamed as (

    select
        id,
        order_id,
        payment_method,
        amount

    from source

)

select * from renamed

