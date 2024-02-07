with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        CONCAT(orders_id, '-' , pdt_id) AS pk,
        orders_id,
        pdt_id AS products_id,
        cast(revenue as float64) AS revenue,
        cast (quantity as float64) AS quantity

    from source

)

select * from renamed
