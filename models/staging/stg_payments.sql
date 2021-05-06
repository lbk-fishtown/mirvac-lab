with source as (
    select * from {{ source('raw', 'raw_payments') }}
),

renamed as (
    select
        id as payment_id,
        order_id,
        payment_method,
        -- currently stores as cents, convert to dollars
        amount / 100.0 as amount
    from source
)

select * from renamed