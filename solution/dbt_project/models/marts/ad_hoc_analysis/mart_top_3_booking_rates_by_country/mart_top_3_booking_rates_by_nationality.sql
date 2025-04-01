{% set reservation_limit = 50 %}
{% set number_of_booking_rates = 3 %}

with

reservations_by_nationality as (
    select * from {{ ref('mart_reservations_aggregated_by_nationality') }}
),

country_totals as (
    select
        nationality_code,
        SUM(number_of_reservations) as total_reservations
    from reservations_by_nationality
    group by nationality_code
    having SUM(number_of_reservations) >= {{ reservation_limit }}
),

top_booking_rates as (
    select
        m.nationality_code,
        m.rate_name,
        m.number_of_reservations,
        m.relative_pct_num_of_reservations_by_nationality_code,
        ROW_NUMBER() over (
            partition by m.nationality_code
            order by m.number_of_reservations desc
        ) as rn
    from reservations_by_nationality as m
    inner join country_totals as c on m.nationality_code = c.nationality_code
)

select *
from top_booking_rates
where rn <= {{ number_of_booking_rates }}
order by nationality_code asc, number_of_reservations desc
