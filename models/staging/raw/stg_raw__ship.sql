with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        CAST(orders_id AS float64) AS orders_id,
        CAST(shipping_fee AS float64) AS shipping_fee,
        CAST(logcost AS float64) AS logcost,
        CAST(ship_cost AS float64) AS ship_cost

    from source

)

select * from renamed
