with source as (

    select * from {{ source('raw', 'raw_payments') }}

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,
        amount/100.00  as amount

    from source

)

select * from renamed
