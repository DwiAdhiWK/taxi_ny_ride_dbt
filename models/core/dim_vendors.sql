with trips as (
    select * from {{ ref('fact_trips') }}
),

vendors as (
    select distinct
        vendor_id,
        {{ get_vendor_data('vendor_id') }} as vendor_name
    from trips
)

select * from vendors